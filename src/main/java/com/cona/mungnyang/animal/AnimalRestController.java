package com.cona.mungnyang.animal;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cona.mungnyang.animal.service.AnimalService;

@RestController
@RequestMapping("/animal")
public class AnimalRestController {
	
	@Autowired
	private AnimalService animalService;
	
	@PostMapping("/create")
	public Map<String, String> animalRegister(@RequestParam("name") String name
			, @RequestParam("age") int age
			, @RequestParam(value="imageFile", required=false) MultipartFile file
			, HttpSession session){
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = animalService.addAnimal(userId, name, age, file);
		
		Map<String, String> resultMap = new HashMap<>();
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
					
	}
	

}
