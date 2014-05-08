/*
 * The MIT License
 *
 * Copyright 2013 jdmr.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package org.davidmendoza.fileUpload.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.davidmendoza.fileUpload.config.PropertyPlaceholderConfig;
import org.davidmendoza.fileUpload.dao.VideoDao;
import org.davidmendoza.fileUpload.model.Video;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Import;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 *
 * @author jdmr
 */
@Controller
@RequestMapping("/video")
@Import(PropertyPlaceholderConfig.class)
public class VideoController {

	private static final Logger log = LoggerFactory
			.getLogger(VideoController.class);

	@Autowired
	private VideoDao videoDao;
	
	@Value("${file.upload.directory}")
	private String fileUploadDirectory;

	@RequestMapping
	public String index() {
		log.debug("VideoController home");
		return "/video/index";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public @ResponseBody Map list() {
		log.debug("uploadGet called");
		List<Video> list = videoDao.list();
		for (Video video : list) {
			video.setDeleteUrl("/video/delete/" + video.getId());
			video.setDeleteType("DELETE");
		}
		Map<String, Object> files = new HashMap<>();
		files.put("files", list);
		log.debug("Returning: {}", files);
		return files;
	}

	private String getRealPath(HttpServletRequest request) {
		return request
				.getSession()
				.getServletContext()
				.getRealPath(String.format("/%s/", fileUploadDirectory));
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody Map upload(MultipartHttpServletRequest request,
			HttpServletResponse response) {
		log.debug("upload Post called");
		Iterator<String> itr = request.getFileNames();
		MultipartFile mpf;
		List<Video> list = new LinkedList<>();

		while (itr.hasNext()) {
			mpf = request.getFile(itr.next());
			log.debug("Uploading {}", mpf.getOriginalFilename());

			String newFilenameBase = UUID.randomUUID().toString();
			String originalFileExtension = mpf.getOriginalFilename().substring(
					mpf.getOriginalFilename().lastIndexOf("."));
			String newFilename = newFilenameBase + originalFileExtension;
			String storageDirectory = getRealPath(request);
			String contentType = mpf.getContentType();

			File newFile = new File(storageDirectory + "/" + newFilename);
			try {
				mpf.transferTo(newFile);

				Video video = new Video();
				video.setName(mpf.getOriginalFilename());
				video.setNewFilename(newFilename);
				video.setContentType(contentType);
				video.setSize(mpf.getSize());
				video = videoDao.create(video);

				video.setDeleteUrl("/video/delete/" + video.getId());
				video.setDeleteType("DELETE");

				list.add(video);

			} catch (IOException e) {
				log.error("Could not upload file " + mpf.getOriginalFilename(),
						e);
			}

		}

		Map<String, Object> files = new HashMap<>();
		files.put("files", list);
		return files;
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	public @ResponseBody List delete(HttpServletRequest request, @PathVariable Long id) {
		Video video = videoDao.get(id);
		File videoFile = new File(getRealPath(request) + "/"
				+ video.getNewFilename());
		videoFile.delete();

		videoDao.delete(video);
		List<Map<String, Object>> results = new ArrayList<>();
		Map<String, Object> success = new HashMap<>();
		success.put("success", true);
		results.add(success);
		return results;
	}
}
