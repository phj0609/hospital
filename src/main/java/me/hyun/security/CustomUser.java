package me.hyun.security;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import me.hyun.model.Member;

@Getter
public class CustomUser extends User{

	private Member member;
	
	private static final long serialVersionUID = 5524173323018817180L;

	public CustomUser(String username, String password, boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
	}

	public CustomUser(Member member) {
		super(member.getUserId(), member.getPassword(),
				member.getAuthList().stream()
				.map(vo ->new SimpleGrantedAuthority(vo.getAuth()))
				.collect(Collectors.toList())
		);
		this.member = member;
	}
}
