package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.BMHDAO;
import com.example.coding.domain.BMHVO;

@Service
public class BMHServiceImpl implements BMHService {

    @Autowired
	private BMHDAO BMHDAOImpl;
	
	@Override
	public void insertUser(BMHVO vo) {
		BMHDAOImpl.insertUser(vo);
	}

	@Override
	public int idCheck(String user_id) {
		int result = BMHDAOImpl.idCheck(user_id);
		return result;
	}
}
