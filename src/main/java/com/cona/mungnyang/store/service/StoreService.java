package com.cona.mungnyang.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cona.mungnyang.store.domain.Store;
import com.cona.mungnyang.store.repository.StoreRepository;

@Service
public class StoreService {
	
	@Autowired
	private StoreRepository storeRepository;
		
	
	public int addStore(String store, String explanation) {
		
		return storeRepository.insertStore(store, explanation);	
	}

	
	public List<Store> getStoreList(int id) {
		return storeRepository.selectStoreList(id);
	}
	
	
	
}
