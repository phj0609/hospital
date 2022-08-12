package me.hyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hyun.mapper.GuestMapper;
import me.hyun.model.Guest;

@Service
public class GuestServiceImp implements GuestService {

	@Autowired
	private GuestMapper mapper;

	@Override
	public Guest get(Long id) {
		return mapper.get(id);
	}

	@Override
	public void register(Guest guest) {
		mapper.insert(guest);
	}

	@Override
	public void modify(Guest guest) {
		mapper.update(guest);
	}

	@Override
	public void remove(Long id) {
		mapper.delete(id);
	}

	@Override
	public List<Guest> getList() {
		return mapper.getList();
	}
	
	
	

}
