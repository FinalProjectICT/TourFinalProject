package com.example.coding.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coding.domain.BMHVO;

@Repository
public class BMHDAOImpl implements BMHDAO {

    @Autowired
	private SqlSessionTemplate sqlSession;

    @Override
    public void insertUser(BMHVO vo) {
        sqlSession.insert("BMHMapper.insertUser", vo);
    }

    @Override
	public int idCheck(String user_id) {
		int result = sqlSession.selectOne("BMHMapper.idCheck", user_id);
		return result;
	}

}
