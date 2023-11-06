package com.cona.mungnyang.inquiry;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cona.mungnyang.inquiry.domain.Inquiry;
import com.cona.mungnyang.inquiry.service.InquiryService;

@Controller
@RequestMapping("/inquiry")
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	
	@GetMapping("/detail")
	public String inquiryDetail(@RequestParam("id") int id
			, Model model) {
		
		Inquiry inquiry = inquiryService.getInquiry(id);
		
		model.addAttribute("inquiry", inquiry);
		
		return "post/inquiryDetail";
	}
	
	
	@GetMapping("/create-view")
	public String inquiryCreate() {
		return "post/inquiryCreate";
	}
	
	
	@GetMapping("/inquiryList")
	public String inquiryList(Model model
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Inquiry> inquiryList = inquiryService.getInquiryList(userId);
		
		model.addAttribute("inquiryList", inquiryList);
		
		return "post/inquiryList";
	}

}
