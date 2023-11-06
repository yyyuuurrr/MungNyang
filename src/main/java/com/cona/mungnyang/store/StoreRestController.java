package com.cona.mungnyang.store;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cona.mungnyang.store.repository.StoreRepository;

@RequestMapping("/store")
@RestController
public class StoreRestController {
	
	@Autowired
	private StoreRepository storeRepository;
	
	
	@PostMapping("/register")
	public Map<String, String> storeRegister(@RequestParam("store") String store
			, @RequestParam("explanation") String explanation){		
		
		int count = storeRepository.insertStore(store, explanation);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;		
		
	}
	
	

}
