package me.hyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hyun.mapper.ReplyMapper;
import me.hyun.model.Criteria;
import me.hyun.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyMapper mapper;
	

	@Override
	public int register(Reply vo) {
		return mapper.insert(vo);
	}

	@Override
	public Reply get(Long rno) {
		return mapper.read(rno);
	}

	@Override
	public int remove(Long rno) {
		return mapper.delete(rno);
	}

	@Override
	public int modify(Reply vo) {
		return mapper.update(vo);
	}
	
	@Override
	public List<Reply> getList(Criteria criteria, Long bno) {
		return mapper.getListWithPaging(criteria, bno);
	}

}
