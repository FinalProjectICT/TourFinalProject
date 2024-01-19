package com.example.coding.service;



import com.example.coding.domain.UserVO;

public interface MyPageService {

    // mypage 사용자 정보 가져오기
    public UserVO getUserProfile(String userId);

} 
