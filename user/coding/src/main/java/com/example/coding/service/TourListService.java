package com.example.coding.service;

import java.util.List;

import com.example.coding.domain.Search;
import com.example.coding.domain.TourVO;

public interface TourListService {
    
    public List<TourVO> getTourList(Search search);
    public int getBoardListCnt(Search search);
    public TourVO getTourData(TourVO vo);
}