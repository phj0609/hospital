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
			vo.setTitle("제목 : 페이징 처리 연습하자" + i);
			vo.setContent("내용 : 페이징 처리 하자" + i);
			vo.setWriter("글쓴이" + i);
			mapper.insert(vo);
		}
	}

}
