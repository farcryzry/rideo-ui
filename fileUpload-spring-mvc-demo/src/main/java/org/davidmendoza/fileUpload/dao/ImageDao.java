package org.davidmendoza.fileUpload.dao;

import java.util.List;

import org.davidmendoza.fileUpload.model.Image;

public interface ImageDao {
    
    public List<Image> list();
    
    public Image create(Image image);
    
    public Image get(Long id);
    
    public void delete(Image image);
}
