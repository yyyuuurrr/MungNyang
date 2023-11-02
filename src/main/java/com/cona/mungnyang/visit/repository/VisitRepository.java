package com.cona.mungnyang.visit.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface VisitRepository {
	
	
	public int insertReservation(@Param("name") String name
			, @Param("phoneNumber") String phoneNumber
			, @Param("region") String region
			, @Param("date") String date
			, @Param("time") String time);

}
