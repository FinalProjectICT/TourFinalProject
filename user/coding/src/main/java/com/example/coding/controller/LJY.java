package com.example.coding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.BMHVO;
import com.example.coding.domain.MainVO;
import com.example.coding.service.TourServiceImpl;

import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class LJY {

  @Autowired
  TourServiceImpl tourServiceImpl;

  // 유저별 선호 지역 가져오기 - 3개
  @RequestMapping(value = "/preferLoc")
  @ResponseBody
  public MainVO preferLoc(BMHVO vo) {
    System.out.println(vo.getUser_id());
    MainVO result = tourServiceImpl.preferLoc(vo);
    System.out.println(result);
    return result;

  }
  
  
}
