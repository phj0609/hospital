package me.hyun.mapper;

import java.util.List;

import me.hyun.model.Member;
import me.hyun.model.Res;

public interface ResMapper {
	List<Res> getList(Member member);
	void insert(Res res);
}
