package com.example.coding.dao;

import  java.util.List;

import com.example.coding.domain.Search;
import com.example.coding.domain.TourVO;

public interface TourListDAO {
    
    public List<TourVO> getTourList(Search search);
    public int getBoardListCnt(Search search);
    public TourVO getTourData(TourVO vo);
}
