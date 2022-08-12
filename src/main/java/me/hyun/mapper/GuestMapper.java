package me.hyun.mapper;

import java.util.List;

import me.hyun.model.Guest;

public interface GuestMapper {
	List<Guest> getList();
	void insert(Guest guest);
	void update(Guest guest);
	void delete(Long id);
	Guest get(Long id);
}
