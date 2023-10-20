package com.cona.mungnyang.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cona.mungnyang.user.domain.User;
import com.cona.mungnyang.user.service.UserService;

@RequestMapping("/user")
@RestController
public class UserRestController {
	
	@Autowired
	private UserService userService;
	
	
	@GetMapping("/duplicate-id")
	public Map<String, Boolean> duplicateId(@RequestParam("loginId")String loginId){
		
		boolean isDuplicateId = userService.isDuplicateId(loginId);
		
		Map<String, Boolean> resultMap = new HashMap<>();
		if(isDuplicateId) {
			resultMap.put("isDuplicateId", true);
		} else {
			resultMap.put("isDuplicateId", false);
		}
		return resultMap;
	}
		
	
	@PostMapping("/join")
	public Map<String, String> join(@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("email") String email) {
		
		
		User user = userService.addUser(loginId, password, name, email);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(user != null) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}

}
