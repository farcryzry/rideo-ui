package org.davidmendoza.fileUpload.web;

import org.davidmendoza.fileUpload.config.PropertyPlaceholderConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Import;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
@Import(PropertyPlaceholderConfig.class)
public class HomeController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping
    public String index() {
        log.debug("HomeController index");
        return "/home/index";
    }
	
	@RequestMapping("gallery")
    public String gallery() {
        log.debug("HomeController gallery");
        return "/home/gallery";
    }
	
	@RequestMapping("upload")
    public String upload() {
        log.debug("HomeController upload");
        return "/home/upload";
    }
	
	@RequestMapping("title-management")
    public String titleManagement() {
        log.debug("HomeController title-management");
        return "/home/title-management";
    }
	
	@RequestMapping("video-management")
    public String videoManagement() {
        log.debug("HomeController video-management");
        return "/home/video-management";
    }
	
	@RequestMapping("workflow")
    public String workflow() {
        log.debug("HomeController workflow");
        return "/home/workflow";
    }
}
