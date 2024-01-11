package com.example.coding.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coding.domain.UserVO;

@Repository
public class UserInfoDAOImpl implements UserInfoDAO {

    @Autowired
	private SqlSessionTemplate mybatis;

    public UserVO getUserInfo(UserVO vo){
        
        return mybatis.selectOne("selectUser", vo);
    };
    
}
