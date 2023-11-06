package com.cona.mungnyang.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.store.repository.StoreRepository;

@Service
public class StoreService {
	
	@Autowired
	private StoreRepository storeRepository;
		
	
	public int addStore(String store, String explanation) {
		
		return storeRepository.insertStore(store, explanation);
	
	}

}
