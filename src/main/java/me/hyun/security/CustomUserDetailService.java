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
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member member = mapper.read(username);
		if (member == null) {
			throw new UsernameNotFoundException(username);
		}
		return new CustomUser(member);
	}
}
