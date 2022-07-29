package me.hyun.service;

import java.util.List;

import me.hyun.model.Member;

public interface MemberService {

	Member get(Long id);
	void insert(Member member);
	void delete(Long id);
	void update(Member member);
	void modify(Member member);
	void remove(Long id);
	List<Member> getList();
}
