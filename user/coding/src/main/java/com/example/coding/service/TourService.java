package com.example.coding.service;

import java.util.List;

import com.example.coding.domain.MainVO;
import com.example.coding.domain.UserVO;

public interface TourService {

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  public MainVO preferLoc(UserVO vo);

  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  public List<MainVO> seasonRecommand(UserVO vo);

  
} 
