package me.hyun.mapper;

import java.util.List;

import me.hyun.model.Board;
import me.hyun.model.Criteria;

public interface BoardMapper {
	List<Board> getList(Criteria criteria);
	Board get(Long bno);
	void insert(Board board);
	void update(Board board);
	void delete(Long bno);
	Integer totalCount(Criteria criteria);
}
