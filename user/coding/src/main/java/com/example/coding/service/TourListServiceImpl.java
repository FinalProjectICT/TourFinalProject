package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import com.example.coding.dao.TourListDAO;

import com.example.coding.domain.TourVO;

@Service
public class TourListServiceImpl implements TourListService{
    
    @Autowired
    private TourListDAO tourListDTO;

    @Override
    public List<TourVO> getTourList(){
        
        return tourListDTO.getTourList();
    }

    @Override
    public TourVO getTourData(TourVO vo) {
        return tourListDTO.getTourData(vo);
    }
}
