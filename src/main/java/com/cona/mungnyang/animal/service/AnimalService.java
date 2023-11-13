package com.cona.mungnyang.animal.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cona.mungnyang.animal.repository.AnimalRepository;
import com.cona.mungnyang.common.FileManager;

@Service
public class AnimalService {

	@Autowired
	private AnimalRepository animalRepository;
	
	
	public int addAnimal(int userId, String name, int age, String store, MultipartFile file) {
		
		String imagePath = FileManager.saveFile(userId, file);
	
		return animalRepository.insertAnimal(name, age, store, imagePath);
	}
	
}
