package me.hyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import me.hyun.model.Member;

public interface MemberMapper {
	
	List<Member> getList();
	void insert(Member member);
	void update(Member member);
	void delete(Long id);
	Member get(Long id);
	Member read(String userId);
	void authenticate(
			@Param("userId") String userId,
			@Param("auth") String auth);
	Member findByUserId(String userId);
}
