package me.hyun.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import me.hyun.mapper.MemberMapper;
import me.hyun.model.Member;
import me.hyun.security.AuthVO;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder; 
	
	@Override
	public Member get(Long id) {
		return mapper.get(id);
	}
	
	@Override
	@Transactional
	public void register(Member member) {
		String pwEncoding = passwordEncoder.encode(member.getPassword());
		member.setPassword(pwEncoding);
		mapper.insert(member);
		
		// 권한 등록
		member.setAuthList(new ArrayList<AuthVO>());
		member.getAuthList().add(new AuthVO("ROLE_MEMBER"));
		String userId = member.getUserId();
		member.getAuthList().forEach(v-> mapper.authenticate(userId,v.getAuth()));
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

	@Override
	public Member findById(String userId) {
		return mapper.findByUserId(userId);
	}

}
