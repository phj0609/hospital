package me.hyun.service;

import java.util.List;

import me.hyun.model.Board;
import me.hyun.model.Criteria;

public interface BoardService {
	List<Board> readAll(Criteria criteria);
	Board read(Long bno);
	void register(Board vo);
	void modify(Board vo);
	void remove(Long bno);
}
