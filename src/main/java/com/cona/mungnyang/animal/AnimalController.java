package com.cona.mungnyang.animal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/animal")
public class AnimalController {
	
	
	@GetMapping("animal-detail")
	public String animalDetail() {
		return "animal/detail";
	}
	
	@GetMapping("animal")
	public String animal() {
		return "animal/animal";
	}

}
