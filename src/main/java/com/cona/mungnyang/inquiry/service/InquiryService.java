package com.cona.mungnyang.inquiry.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.inquiry.repository.InquiryRepository;

@Service
public class InquiryService {
	
	@Autowired
	private InquiryRepository inquiryRepository;
	
	
	public int addInquiry(int userId, String title, String content) {
		
		return inquiryRepository.insertInquiry(userId, title, content);		
	}

}
