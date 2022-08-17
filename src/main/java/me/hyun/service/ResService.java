package me.hyun.service;

import java.util.List;

import me.hyun.model.Member;
import me.hyun.model.Res;

public interface ResService {
	List<Res> getList(Member member);
	void register(Res res);
}
