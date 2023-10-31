package com.cona.mungnyang.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/profile")
@Controller
public class ProfileController {
	
	
	@GetMapping("/admin")
	public String admin() {
		return "profile/admin";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "profile/profile";
	}

}
