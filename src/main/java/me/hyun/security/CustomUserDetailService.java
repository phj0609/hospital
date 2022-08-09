package me.hyun.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import me.hyun.mapper.MemberMapper;
import me.hyun.model.Member;

@Component
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	MemberMapper mapper;
	
	public CustomUserDetailService() {
		System.out.println("CustomUserDetailService 생성");
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member member = mapper.read(username);
		System.out.println(member);
		if (member == null) {
			throw new UsernameNotFoundException(username);
		}
		return new CustomUser(member);
	}
}
