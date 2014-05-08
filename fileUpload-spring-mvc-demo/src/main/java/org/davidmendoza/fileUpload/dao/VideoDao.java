package org.davidmendoza.fileUpload.dao;

import java.util.List;

import org.davidmendoza.fileUpload.model.Video;

public interface VideoDao {
	
	public List<Video> list();

	public Video create(Video video);

	public Video get(Long id);

	public void delete(Video video);
}
