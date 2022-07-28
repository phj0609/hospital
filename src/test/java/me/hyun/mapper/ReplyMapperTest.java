package me.hyun.mapper;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import me.hyun.AppTest;
import me.hyun.model.Criteria;
import me.hyun.model.Reply;

public class ReplyMapperTest extends AppTest {
	
	@Autowired
	private ReplyMapper mapper;
	
	@Test
	@Ignore
	public void test() {
		System.out.println(mapper.getListAll());
	}
	
	@Test
	@Ignore
	public void insertTest() {
		Reply vo = new Reply();
		vo.setBno(1L);
		vo.setReply("댓글 작업중......");
		vo.setReplyer("댓글러");
		int result = mapper.insert(vo);
	}
	
	@Test
	@Ignore
	public void findByRnoTest() {
		System.out.println(mapper.read(4L));
	}
	
	@Test
	@Ignore
	public void deleteTest() {
		mapper.delete(5L);
	}
	
	@Test
	@Ignore
	public void updateTest() {
		Reply vo = new Reply();
		vo.setRno(6L);
		vo.setReply("댓글 수정합니다.");
		mapper.update(vo);
	}
	
	@Test
	@Ignore
	public void getListWithPagingTest() {
		List<Reply> listWithPaging = mapper.getListWithPaging(new Criteria(), 1L);
		System.out.println(listWithPaging);
	}
	
	
	
}
