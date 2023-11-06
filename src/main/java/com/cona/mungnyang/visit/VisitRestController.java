package com.cona.mungnyang.visit;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cona.mungnyang.visit.service.VisitService;

@RestController
@RequestMapping("/visit")
public class VisitRestController {
	
	
	@Autowired
	private VisitService visitService;
	
	
	@PostMapping("/create")
	public Map<String, String> reservation(@RequestParam("name") String name
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("region") String region
			, @RequestParam("date") Date date
			, @RequestParam("time") Date time){
		
		int count = visitService.addReservation(name, phoneNumber, region, date, time);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;		
		
	}
	
	
	
}
