package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.coding.dao.UserDAO;
import com.example.coding.dao.ImgDAO;
import com.example.coding.domain.ImgVO;
import com.example.coding.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
	private UserDAO userDAO;

	@Autowired
	private ImgDAO FileDAO;
	
	@Transactional
	public void insertUser(UserVO vo, ImgVO fvo) {
		if( fvo != null ){
			// 파일첨부가 있는 경우
			FileDAO.insertFile(fvo);
			vo.setImg_num( FileDAO.selectId() );
		}
		userDAO.insertUser(vo);
	}

	@Override
	public int idCheck(String user_id) {
		int result = userDAO.idCheck(user_id);
		return result;
	}

	@Override
	public UserVO loginCheck(UserVO vo) {
		return userDAO.loginCheck(vo);
	}
}
