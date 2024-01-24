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
    // 소셜 로그인
    public UserVO socialLoginCheck(String user_id);
    // 비밀번호 찾기
    public UserVO selectMember(String user_email);
    // 비밀번호 초기화
    public int updatePassword(UserVO vo);
} 