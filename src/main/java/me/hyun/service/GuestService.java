package me.hyun.service;

import java.util.List;

import me.hyun.model.Guest;


public interface GuestService {

	Guest get(Long id);
	void register(Guest guest);
	void modify(Guest guest);
	void remove(Long id);
	List<Guest> getList();
}
