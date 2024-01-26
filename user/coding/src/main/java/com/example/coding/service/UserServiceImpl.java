package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.coding.dao.UserDAO;
import com.example.coding.dao.ImgDetailDAO;
import com.example.coding.domain.ImgDetailVO;
import com.example.coding.domain.ImgVO;
import com.example.coding.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
	private UserDAO userDAO;

	@Autowired
	private ImgDetailDAO imgDetailDAO;

	@Transactional
	public void insertUser(UserVO vo, ImgVO ivo, ImgDetailVO idvo) {
		// 파일첨부가 있는 경우
		if( ivo != null ){
			
			// DB에 사용자 정보 입력
			userDAO.insertUser(vo);
			// ImgDetail 테이블에 정보 입력
			imgDetailDAO.insertFile(idvo);

		}else{
			userDAO.insertUser(vo);
		}
		
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

	@Override
	public UserVO socialLoginCheck(String user_id) {
		return userDAO.socialLoginCheck(user_id);
	}

	@Override
	public List<String> findUserid(String user_email) {
		return userDAO.findUserid(user_email);
	}

	@Override
	public UserVO selectUser(String user_email,String user_id) {
		UserVO result = userDAO.selectUser(user_email,user_id);
		System.out.println(result);
		return result;
	}

	@Override
	public int updatePassword(UserVO vo) {
		int result = userDAO.updatePassword(vo);
		System.out.println("비밀번호 변경 ==>"+result);
		return result;
	}
}
