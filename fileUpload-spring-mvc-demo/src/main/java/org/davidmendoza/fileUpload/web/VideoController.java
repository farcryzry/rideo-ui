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
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

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

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.BucketPolicy;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 *
 * @author Jacob
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

	@Value("${rstudio.bucket}")
	private String bucket;

	@Value("${aws.accessKey}")
	private String awsAccessKey;

	@Value("${aws.secretKey}")
	private String awsSecretKey;

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
		return request.getSession().getServletContext()
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
	public @ResponseBody List delete(HttpServletRequest request,
			@PathVariable Long id) {
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

	@RequestMapping(value = "/s3", method = RequestMethod.GET)
	public String s3(HttpServletRequest req, HttpServletResponse resp) {

		AWSCredentials credentials = new BasicAWSCredentials(awsAccessKey,
				awsSecretKey);
		AmazonS3 s3Client = new AmazonS3Client(credentials);
		
		BucketPolicy policy = s3Client.getBucketPolicy(bucket);

		return "video/s3";
	}

	@RequestMapping(value = "/s3/signture", method = RequestMethod.POST)
	public void signatureToS3(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		handleSignatureRequest(req, resp);
	}
	
	// Called by the main POST request handler if Fine Uploader has asked for an item to be signed.  The item may be a
    // policy document or a string that represents multipart upload request headers.
    private void handleSignatureRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException
    {
    	log.info("sigin to S3");
        resp.setContentType("application/json");
        resp.setStatus(200);

        JsonParser jsonParser = new JsonParser();
        JsonElement contentJson = jsonParser.parse(req.getReader());
        JsonObject jsonObject = contentJson.getAsJsonObject();
        JsonElement headers = jsonObject.get("headers");
        JsonObject response = new JsonObject();
        String signature;

        try
        {
            // If this is not a multipart upload-related request, Fine Uploader will send a policy document
            // as the value of a "policy" property in the request.  In that case, we must base-64 encode
            // the policy document and then sign it. The will include the base-64 encoded policy and the signed policy document.
            if (headers == null)
            {
                String base64Policy = base64EncodePolicy(contentJson);
                signature = sign(base64Policy);

                // Validate the policy document to ensure the client hasn't tampered with it.
                // If it has been tampered with, set this property on the response and set the status to a non-200 value.
//                response.addProperty("invalid", true);

                response.addProperty("policy", base64Policy);
            }

            // If this is a request to sign a multipart upload-related request, we only need to sign the headers,
            // which are passed as the value of a "headers" property from Fine Uploader.  In this case,
            // we only need to return the signed value.
            else
            {
               signature = sign(headers.getAsString());
            }

            response.addProperty("signature", signature);
            resp.getWriter().write(response.toString());
        }
        catch (Exception e)
        {
            resp.setStatus(500);
        }
    }

    // Called by the main POST request handler if Fine Uploader has indicated that the file has been
    // successfully sent to S3.  You have the opportunity here to examine the file in S3 and "fail" the upload
    // if something in not correct.
    private void handleUploadSuccessRequest(HttpServletRequest req, HttpServletResponse resp)
    {
        String key = req.getParameter("key");
        String uuid = req.getParameter("uuid");
        String bucket = req.getParameter("bucket");
        String name = req.getParameter("name");

        resp.setStatus(200);

        System.out.println(String.format("Upload successfully sent to S3!  Bucket: %s, Key: %s, UUID: %s, Filename: %s",
                bucket, key, uuid, name));
    }

	private String base64EncodePolicy(JsonElement jsonElement)
			throws UnsupportedEncodingException {
		String policyJsonStr = jsonElement.toString();
		String base64Encoded = DatatypeConverter
				.printBase64Binary(policyJsonStr.getBytes("UTF-8"))
				.replaceAll("\n", "").replaceAll("\r", "");

		return base64Encoded;
	}

	private String sign(String toSign) throws UnsupportedEncodingException,
			NoSuchAlgorithmException, InvalidKeyException {
		Mac hmac = Mac.getInstance("HmacSHA1");
		hmac.init(new SecretKeySpec(awsSecretKey.getBytes("UTF-8"), "HmacSHA1"));

		String signature = DatatypeConverter.printBase64Binary(
				hmac.doFinal(toSign.getBytes("UTF-8"))).replaceAll("\n", "");

		return signature;
	}
}
