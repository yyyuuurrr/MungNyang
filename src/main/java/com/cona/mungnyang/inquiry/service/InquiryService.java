package com.cona.mungnyang.inquiry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.inquiry.domain.Inquiry;
import com.cona.mungnyang.inquiry.repository.InquiryRepository;

@Service
public class InquiryService {
	
	@Autowired
	private InquiryRepository inquiryRepository;
	
	public Inquiry getInquiry(int id) {
		return inquiryRepository.selectInquiry(id);
	}
	
	public List<Inquiry> getInquiryList(int userId) {
		return inquiryRepository.selectInquiryList(userId);
	}
	
	
	public int addInquiry(int userId, String title, String content) {
		
		return inquiryRepository.insertInquiry(userId, title, content);		
	}

}
