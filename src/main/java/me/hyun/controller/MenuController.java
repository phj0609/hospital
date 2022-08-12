package me.hyun.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import me.hyun.model.Guest;
import me.hyun.service.GuestService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private GuestService service;
	
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
	
	// 간편 초진예약	
	@GetMapping("/res")
	public String res(Guest guest) {
		return "menu/res";
	}
	
	@PostMapping("/res")
	public String register(@Valid Guest guest, Errors errors) {
		if (errors.hasErrors()) {
			return "menu/res";
		}
		service.register(guest);
		return "redirect:res";
	}
	
	// 초진 예약자 리스트
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/res/list")
	public String list(Model model) {
		model.addAttribute("list", service.getList());
		return "menu/res/list";
	}
	
	@GetMapping("/internet")
	public String in_res() {
		return "menu/internet";
	}
	
	
}
