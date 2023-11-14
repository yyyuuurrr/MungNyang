package com.cona.mungnyang.config;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.cona.mungnyang.common.FileManager;

public class WebMvcConfig implements WebMvcConfigurer{
	
	@Override	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")
		.addResourceLocations("file://" + FileManager.FILE_UPLOAD_PATH + "/");
		
				
	}
	

}
