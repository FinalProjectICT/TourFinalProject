package com.example.coding.service;

import com.example.coding.domain.UserVO;
import com.example.coding.domain.ImgDetailVO;
import com.example.coding.domain.ImgVO;

public interface UserService {
    // 회원가입
    public void insertUser(UserVO vo, ImgVO ivo, ImgDetailVO idvo);
    // ID 중복확인
    public int idCheck(String user_id);
    // 로그인
    public UserVO loginCheck(UserVO vo);
} 