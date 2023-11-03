package com.cona.mungnyang.store.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface StoreRepository {
	
	
	public int insertStore(@Param("name") String name
			, @Param("phoneNumber") String phoneNumber
			, @Param("region") String region
			, @Param("date") String date
			, @Param("time") String times);

}
