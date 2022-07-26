package me.hyun.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;
import me.hyun.model.Board;

public class BoardMapperTest extends AppTest {
	
	@Autowired
	BoardMapper mapper;
	
//	@Test
//	@Ignore
//	public void getListTest() {
//		mapper.getList();
//	}
	
	@Test
	@Ignore
	public void getTest() {
		mapper.get(1L);
	}
	
	@Test
	@Ignore
	public void insertTest() {
		Board board = new Board();
		board.setTitle("제목테스트11");
		board.setContent("내용테스트 11");
		board.setWriter("작성자11");
		mapper.insert(board);
	}
	
	@Test
	@Ignore
	public void updateTest() {
		Board board = new Board();
		board.setBno(5L);
		board.setTitle("제목수정중");
		board.setContent("내용수정중");
		board.setWriter("작성자수정중");
		mapper.update(board);
	}
	
	@Test
	@Ignore
	public void deleteTest() {
		mapper.delete(5L);
	}
	
	
	
	
}
