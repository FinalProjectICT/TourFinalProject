package com.example.coding.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.UserVO;

@Mapper
public interface MyPageDAO {

    // mypage 사용자 정보 가져오기
    public UserVO getUserProfile(String userId);

    
} 

    
