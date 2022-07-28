package me.hyun.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import me.hyun.model.Criteria;
import me.hyun.model.Reply;

public interface ReplyMapper {
	
	List<Reply> getListAll(); // 테스트
	int insert(Reply vo); // 댓글 등록
	Reply read(Long rno); // 댓글 조회
	int delete(Long rno); // 댓글 삭제
	int update(Reply vo); // 댓글 수정
	List<Reply> getListWithPaging(@Param("cri") Criteria criteria, @Param("bno") Long bno); // 게시글 댓글 목록
	
}
