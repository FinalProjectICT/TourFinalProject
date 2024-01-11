package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.example.coding.domain.TouroviewVO;

public interface TouroviewService {
    
    List<TouroviewVO> searchTravel(String keyword);

    void insertTouroview(TouroviewVO touroview);
} 
