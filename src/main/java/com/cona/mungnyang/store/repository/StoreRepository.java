package com.cona.mungnyang.store.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreRepository {
	
	
	public int insertStore(@Param("store") String store
			, @Param("explanation") String explanation);

}
