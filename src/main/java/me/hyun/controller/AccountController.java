package me.hyun.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import me.hyun.model.Member;
import me.hyun.service.MemberServiceImp;

@Controller
@RequestMapping("/menu/account")
public class AccountController {

	@Autowired
	MemberServiceImp service;
	
	
	@GetMapping("/signUp")
	public String join(Member member) {
		return "menu/account/signUp";
	} 
	
	@PostMapping("/signUp")
	public String register(@Valid Member member, Errors errors) {
		if (errors.hasErrors()) {
			return "menu/account/signUp";
		}
		service.register(member);
		return "redirect:success";
	}

	@GetMapping("/login")
	public String login() {
		return "menu/account/login";
	} // 로그인

	@GetMapping("/success")
	public String success(Model model) {
		model.addAttribute("list", service.getList());
		return "menu/account/success";
	}
	
	@GetMapping("/get")
	public String get(Long id,Model model) {
		model.addAttribute("member", service.get(id));
		return "menu/account/get";
	}
	@GetMapping("/modify")
	public String modifyForm(Long id,Model model) {
		model.addAttribute("member",service.get(id));
		return "menu/account/modify";
	}
	
	@PostMapping("/modify")
	public String modify(Member member, RedirectAttributes rttr) {
		service.modify(member);
		rttr.addFlashAttribute("message", member.getId());
		return "redirect:success";
	}
	
	@PostMapping("/remove")
	public String modify(Long id, RedirectAttributes rttr) {
		service.remove(id);
		rttr.addFlashAttribute("message", id);
		return "redirect:success";
	}
	

}
