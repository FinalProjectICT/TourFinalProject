package com.example.coding.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coding.domain.TourVO;

@Repository
public class TourListDAOImpl implements TourListDAO{
    
    @Autowired
	private SqlSessionTemplate mybatis;

    public List<TourVO> getTourList(){
        return mybatis.selectList("selectAll");
    }

    @Override
    public TourVO getTourData(TourVO vo) {
        return mybatis.selectOne("selectOne", vo);
    };
}
