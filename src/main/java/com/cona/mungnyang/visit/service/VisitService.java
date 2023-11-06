package com.cona.mungnyang.visit.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.visit.repository.VisitRepository;

@Service
public class VisitService {
	
	@Autowired
	public VisitRepository visitRepository;
	
	
	public int addReservation(String name
			, String phoneNumber
			, String region
			, Date date
			, Date time) {
		
		return visitRepository.insertReservation(name, phoneNumber, region, date, time);

	}

}
