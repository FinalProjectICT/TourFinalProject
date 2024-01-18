package com.example.coding.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.UserVO;

@Mapper
public interface UserDAO {
    public void insertUser(UserVO vo);
    public int idCheck(String user_id);
    public UserVO loginCheck(UserVO vo);
    public UserVO socialLoginCheck(String user_id);
}