package me.hyun.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;

import me.hyun.mapper.MemberMapper;
import me.hyun.model.Member;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public Member get(Long id) {
		return mapper.get(id);
	}
	
	@Override
	public void register(Member member) {
		mapper.insert(member);
	}

	@Override
	public void modify(Member member) {
		mapper.update(member);
	}

	@Override
	public void remove(Long id) {
		mapper.delete(id);
	}

	@Override
	public List<Member> getList() {
		return mapper.getList();
	}
}
