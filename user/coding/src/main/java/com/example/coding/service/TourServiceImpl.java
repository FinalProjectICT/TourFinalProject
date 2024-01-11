package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.MainDAO;
import com.example.coding.domain.MainVO;
import com.example.coding.domain.UserVO;

@Service
public class TourServiceImpl implements TourService{

  @Autowired
  MainDAO maindao;

  public MainVO preferLoc(UserVO vo) {
    MainVO result = maindao.preferLoc(vo);
    System.out.println(result);
    return result;
    

  }
  
}
