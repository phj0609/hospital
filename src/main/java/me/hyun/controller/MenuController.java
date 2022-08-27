
package me.hyun.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import me.hyun.model.Guest;
import me.hyun.model.Member;
import me.hyun.model.Res;
import me.hyun.security.CustomUser;
import me.hyun.service.GuestService;
import me.hyun.service.ResService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private GuestService guestService;
	
	@Autowired
	private ResService resService;
	
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
		guestService.register(guest);
		return "redirect:res";
	}
	
	// 멤버 - 예약확인리스트
	@PreAuthorize("hasAnyRole('ROLE_MEMBER','ROLE_ADMIN')") 
	@GetMapping("/check")
	public String res_checkList(@AuthenticationPrincipal CustomUser user, Model model) {
		List<String> list = user.getAuthorities().
				stream().map(v->v.getAuthority())
						.collect(Collectors.toList());
		String auth = list.get(0);
		if(auth.equals("ROLE_ADMIN")) {
			// 관리자일때 
			model.addAttribute("list",resService.getList(new Member()));
		} else {
			// 그렇지 않을때 
			model.addAttribute("list",resService.getList(user.getMember()));
		}
		return "menu/check";
	}
	
	// 초진 예약자 리스트
	@PreAuthorize("hasRole('ROLE_ADMIN')") 
	@GetMapping("/res/list")
	public String list(Model model) {
		model.addAttribute("list", guestService.getList());
		return "menu/res/list";
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')") 
	@PostMapping("/res/list")
	public String remove(Long id, RedirectAttributes rtts) {
		guestService.remove(id);
		
		return "redirect:/menu/res/list";
	}
	
	
	// 멤버 - 인터넷예약
	@PreAuthorize("hasAnyRole('ROLE_MEMBER','ROLE_ADMIN')") 
	@GetMapping("/internet")
	public String in_res() {
		return "menu/internet";
	}
	
	@PostMapping("/internet")
	public String in_reservation(Res res) {
		resService.register(res);
		return "redirect:/";
	}
}
