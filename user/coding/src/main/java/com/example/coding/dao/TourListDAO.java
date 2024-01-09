package com.example.coding.dao;

import  java.util.List;

import com.example.coding.domain.TourVO;

public interface TourListDAO {
    
    public List<TourVO> getTourList();
    public TourVO getTourData(TourVO vo);
}
