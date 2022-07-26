package me.hyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hyun.mapper.BoardMapper;
import me.hyun.model.Board;
import me.hyun.model.Criteria;

@Service
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
	
	@Autowired
	public void setMapper(BoardMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public List<Board> readAll(Criteria criteria) {
		return mapper.getList(criteria);
	}

	@Override
	public Board read(Long bno) {
		return mapper.get(bno);
	}

	@Override
	public void register(Board vo) {
		mapper.insert(vo);
	}

	@Override
	public void modify(Board vo) {
		mapper.update(vo);
	}

	@Override
	public void remove(Long bno) {
		mapper.delete(bno);
	}

}
