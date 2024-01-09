package com.example.coding.service;

import java.util.List;


import com.example.coding.domain.TourVO;

public interface TourListService {
    
    public List<TourVO> getTourList();
    public TourVO getTourData(TourVO vo);
}
