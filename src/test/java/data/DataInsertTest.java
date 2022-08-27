package data;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;
import me.hyun.mapper.BoardMapper;
import me.hyun.model.Board;

public class DataInsertTest extends AppTest {
	
	@Autowired
	BoardMapper mapper;
	
	@Test
	public void insert() {
		for (int i = 1; i <= 412; i++) {
			Board vo = new Board();
			vo.setTitle("제목 : 게시판 제목" + i);
			vo.setContent("내용 : 게시판 내용과 페이징처리" + i);
			vo.setWriter("글쓴이" + i);
			mapper.insert(vo);
		}
	}
}
