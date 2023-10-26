package com.cona.mungnyang.inquiry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inquiry")
public class InquiryController {
	
	@GetMapping("/inquiry")
	public String inquiryList() {
		return "post/inquiryList";
	}

}
