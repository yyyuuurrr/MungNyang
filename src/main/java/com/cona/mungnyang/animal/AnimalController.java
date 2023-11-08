package com.cona.mungnyang.animal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cona.mungnyang.store.domain.Store;
import com.cona.mungnyang.store.service.StoreService;

@Controller
@RequestMapping("/animal")
public class AnimalController {
	
	
	@Autowired
	private StoreService storeService;
	
	
	
	@GetMapping("/register")
	public String animalRegister(Model model) {
		
		List<Store> storeList = storeService.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "animal/register";
	}
	
	@GetMapping("/animal-detail")
	public String animalDetail() {
		return "animal/detail";
	}
	
	@GetMapping("/animal")
	public String animal() {
		return "animal/animal";
	}

}
