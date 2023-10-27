package com.cona.mungnyang.inquiry;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cona.mungnyang.inquiry.service.InquiryService;

@RestController
@RequestMapping("/inquiry")
public class InquiryRestController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@PostMapping("/create")
	public Map<String, String> create(@RequestParam("title") String title
			, @RequestParam("content") String content
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = inquiryService.addInquiry(userId, title, content);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
				
	}

}
