package com.cona.mungnyang.animal.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AnimalRepository {
	
	public int insertAnimal(@Param("name") String name
			, @Param("age") int age
			, @Param("store") String store
			, @Param("imagePath") String imagePath);

}
