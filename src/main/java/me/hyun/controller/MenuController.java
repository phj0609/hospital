package me.hyun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@GetMapping("/info")
	public String info() {
		return "menu/info";
	}
	
	@GetMapping("/vet")
	public String vet() {
		return "menu/vet";
	}
	
	@GetMapping("/facility")
	public String fac() {
		return "menu/facility";
	}
	
	@GetMapping("/map")
	public String map() {
		return "menu/map";
	}
	
	@GetMapping("/res")
	public String res() {
		return "menu/res";
	}
}
