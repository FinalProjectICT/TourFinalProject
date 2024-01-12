package com.example.coding.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.coding.domain.Search;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.WishListVO;

@Repository
public class TourListDAOImpl implements TourListDAO{
    
    @Autowired
	private SqlSessionTemplate mybatis;

    public List<TourVO> getTourList(Search search){
        return mybatis.selectList("selectAll", search);
    }

    @Override
    public int getBoardListCnt(Search search) {
        return mybatis.selectOne("tourListCnt", search);
    };

    @Override
    public TourVO getTourData(TourVO vo) {
        return mybatis.selectOne("selectOne", vo);
    }

    @Override
    public String addWishList(WishListVO vo) {
        int res = mybatis.insert("addWishList", vo);
        return String.valueOf(res);
    }

    @Override
    public String ckWishList(WishListVO vo) {
        if (mybatis.selectOne("ckWishList", vo) == null)
        {
            return "0";
        }else return "1";
    }

}
