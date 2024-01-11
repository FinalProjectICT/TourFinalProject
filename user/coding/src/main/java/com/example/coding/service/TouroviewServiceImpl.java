package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.TouroviewDAO;
import com.example.coding.domain.TouroviewVO;

@Service
public class TouroviewServiceImpl implements TouroviewService{

    private final TouroviewDAO touroviewDAO;
    
    @Autowired
    public TouroviewServiceImpl(TouroviewDAO touroviewDAO){
        this.touroviewDAO = touroviewDAO;
    }

    @Override
    public List<TouroviewVO> searchTravel(String keyword){
        return touroviewDAO.searchTouroviewVOs(keyword);
    }

    @Override
    public void insertTouroview(TouroviewVO touroview) {
        touroviewDAO.insertTouroview(touroview);
    }
    
}
