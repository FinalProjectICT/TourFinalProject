package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.MainVO;
import com.example.coding.domain.UserVO;
import com.example.coding.service.TourServiceImpl;

import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class LJY {

  @Autowired
  TourServiceImpl tourServiceImpl;

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  @RequestMapping(value = "/preferLoc")
  @ResponseBody
  public MainVO preferLoc(UserVO vo) {
    // System.out.println(vo.getUser_id());
    MainVO result = tourServiceImpl.preferLoc(vo);
    // System.out.println(result);
    return result;

  }

  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  @RequestMapping(value = "/touro")
  public void seasonRecommand(UserVO vo, Model m) {
    vo.setUser_id("dlwldus");
    List<MainVO> result = tourServiceImpl.seasonRecommand(vo);
    // System.out.println(result);
    // return result;
    m.addAttribute("winter", result);
  }
  
  
}
