package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.MyPageDAO;
import com.example.coding.domain.UserVO;

@Service
public class MyPageServiceImpl implements MyPageService {

    private final MyPageDAO myPageDAO;
    
    @Autowired
    public MyPageServiceImpl(MyPageDAO myPageDAO){
        this.myPageDAO = myPageDAO;
    }


    // mypage 사용자 정보 가져오기
    @Override
    public UserVO getUserProfile(String userId){

        // 데이터베이스에서 사용자 정보 조회
        return myPageDAO.getUserProfile(userId);

    }

}
