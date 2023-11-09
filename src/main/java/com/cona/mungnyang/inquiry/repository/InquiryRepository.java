package com.cona.mungnyang.inquiry.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cona.mungnyang.inquiry.domain.Inquiry;

@Repository
public interface InquiryRepository {
	
	public int insertInquiry(@Param("userId") int userId
			, @Param("title") String title
			, @Param("content") String content);
	
	public List<Inquiry> selectInquiryList();
	
	public Inquiry selectInquiry(@Param("id") int id);
	
	
	public int updateInquiry(@Param("inquiryId") int inquiryId
			, @Param("title") String title
			, @Param("content") String content);
	
	public int deleteInquiry(@Param("inquiryId") int inquiryId);

}
