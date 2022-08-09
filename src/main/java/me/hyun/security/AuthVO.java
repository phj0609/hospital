package me.hyun.security;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AuthVO {
	
	private Long id;
	private String userId;
	private String auth;
	
	public AuthVO(String auth) {
		this.auth = auth;
	}
}
