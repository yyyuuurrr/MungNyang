package com.cona.mungnyang.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
	
	
	@GetMapping("/editProfile")
	public String editProfile() {
		return "user/editProfile";
	}
	
	
	@GetMapping("/password-view")
	public String passwordFind() {
		return "user/password";
	}
	
	
	@GetMapping("/join-view")
	public String join() {
		return "user/join";
	}
	
	
	@GetMapping("/login-view")
	public String login() {
		return "user/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		
		return "redirect:/user/login-view";		
	}
	
	
	@GetMapping("/main")
	public String main() {
		return "user/main";
	}


}
