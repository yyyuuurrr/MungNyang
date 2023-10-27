package com.cona.mungnyang.inquiry.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface InquiryRepository {
	
	public int insertInquiry(@Param("userId") int userId
			, @Param("title") String title
			, @Param("content") String content);

}
