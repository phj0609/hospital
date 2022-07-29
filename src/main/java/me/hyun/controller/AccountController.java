package me.hyun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu/account")
public class AccountController {

	@GetMapping("/login")
	public String login() {
		return "menu/account/login";
	}

	@GetMapping("/signUp")
	public String join() {
		return "menu/account/signUp";
	}

}
