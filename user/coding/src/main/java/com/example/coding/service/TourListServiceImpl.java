package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

import com.example.coding.dao.TourListDAO;
import com.example.coding.domain.Search;
import com.example.coding.domain.TourVO;

@Service
public class TourListServiceImpl implements TourListService{
    
    @Autowired
    private TourListDAO tourListDAO;

    @Override
    public List<TourVO> getTourList(Search search){
        return tourListDAO.getTourList(search);
    }

    @Override
    public int getBoardListCnt(Search search) {
        return tourListDAO.getBoardListCnt(search);
    }

    @Override
    public TourVO getTourData(TourVO vo) {
        return tourListDAO.getTourData(vo);
    }

}
