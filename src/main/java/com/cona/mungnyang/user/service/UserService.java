package com.cona.mungnyang.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.common.EncryptUtils;
import com.cona.mungnyang.user.domain.User;
import com.cona.mungnyang.user.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	public UserRepository userRepository;

	
	
	
	public boolean isDuplicateId(String loginId) {
		int count = userRepository.countByLoginId(loginId);
		
		if(count == 0) {
			return false;
		}else {
			return true;
		}
				
	}
	
	public User addUser(String loginId
			, String password
			, String name
			, String email) {
		
		String encryptPassword = EncryptUtils.md5(password);
		
		User user = User.builder()
						.loginId(loginId)
						.password(encryptPassword)
						.name(name)
						.email(email)
						.build();
		
		return userRepository.save(user);
	}
}
