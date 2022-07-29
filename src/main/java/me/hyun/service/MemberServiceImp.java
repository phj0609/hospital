package me.hyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public void insert(Member member) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Member member) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modify(Member member) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Member> getList() {
		// TODO Auto-generated method stub
		return null;
	}

}
