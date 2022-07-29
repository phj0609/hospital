package me.hyun.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import me.hyun.model.Member;
import me.hyun.service.MemberService;
import me.hyun.validation.MemberValidator;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/success")
	public String success() {
		return "member/success";
	}

	@GetMapping("/register")
	public String registerForm(Member member) {
		return "member/register";
	}

	@PostMapping("/register")
	public String register(@Valid Member member, Errors errors) {
		new MemberValidator().validate(member, errors);
		if (errors.hasErrors()) {
			return "member/register";
		}
		return "redirect:success";
	}
}
