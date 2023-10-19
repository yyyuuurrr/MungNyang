package com.cona.mungnyang.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@GetMapping("/join-view")
	public String join() {
		return "user/join";
	}
	
	
	@GetMapping("/login-view")
	public String login() {
		return "user/login";
	}


}
