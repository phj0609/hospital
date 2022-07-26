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

	@GetMapping("/login")
	public String login() {
		return "menu/login";
	}

	@GetMapping("/signUp")
	public String join() {
		return "menu/signUp";
	}
	
	
	
}
