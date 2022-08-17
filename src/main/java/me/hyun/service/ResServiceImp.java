package me.hyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hyun.mapper.ResMapper;
import me.hyun.model.Member;
import me.hyun.model.Res;

@Service
public class ResServiceImp implements ResService {

	@Autowired
	private ResMapper mapper;
	
	@Override
	public List<Res> getList(Member member) {
		return mapper.getList(member);
	}

	@Override
	public void register(Res res) {
		mapper.insert(res);
	}

}
