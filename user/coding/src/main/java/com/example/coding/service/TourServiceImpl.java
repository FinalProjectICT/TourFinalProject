package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.MainDAO;
import com.example.coding.domain.MainVO;
import com.example.coding.domain.UserVO;

@Service
public class TourServiceImpl implements TourService{

  @Autowired
  MainDAO maindao;

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  public MainVO preferLoc(UserVO vo) {
    MainVO result = maindao.preferLoc(vo);
    // System.out.println(result);    
    return result;
  }
  
  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  public List<MainVO> seasonRecommand(UserVO vo) {
    List<MainVO> result = maindao.seasonRecommand(vo);
    // System.out.println("Service" + result);+
    return result;
  }
  
}
                            