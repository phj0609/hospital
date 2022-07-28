package me.hyun.service;

import java.util.List;

import me.hyun.model.Criteria;
import me.hyun.model.Reply;

public interface ReplyService {
	int register(Reply vo);
	Reply get(Long rno);
	int remove(Long rno);
	int modify(Reply vo);
	List<Reply> getList(Criteria criteria, Long bno);
}
