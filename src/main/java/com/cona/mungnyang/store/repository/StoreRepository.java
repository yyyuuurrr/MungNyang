package com.cona.mungnyang.store.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cona.mungnyang.store.domain.Store;

@Repository
public interface StoreRepository {
	
	
	public int insertStore(@Param("store") String store
			, @Param("explanation") String explanation);
	
	public List<Store> selectStoreList();
	

}
