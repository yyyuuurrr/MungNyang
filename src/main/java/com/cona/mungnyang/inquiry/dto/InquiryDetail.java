package com.cona.mungnyang.inquiry.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class InquiryDetail {
	
	private int id;
	private String loginId;
	private String name;

}
