package com.cona.mungnyang.profile;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cona.mungnyang.store.domain.Store;
import com.cona.mungnyang.store.service.StoreService;

@RequestMapping("/profile")
@Controller
public class ProfileController {
	
	@Autowired
	private StoreService storeService;
	
	
	@GetMapping("/admin")
	public String admin(Model model) {
		
		List<Store> storeList = storeService.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "profile/admin";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "profile/profile";
	}

	
	@GetMapping("/storeList")
	public String storeList(Model model) {
		
		List<Store> storeList = storeService.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "profile/admin";
		
	}
}
