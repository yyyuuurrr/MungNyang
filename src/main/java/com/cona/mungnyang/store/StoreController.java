package com.cona.mungnyang.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class StoreController {
	
	
	@GetMapping("/store")
	public String storeRegister() {
		return "store/storeRegister";
	}

}
