package com.example.coding.controller;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.MainVO;
import com.example.coding.domain.Reco1VO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.UserVO;
import com.example.coding.service.MainServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.websocket.server.ServerEndpoint;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;


@Controller
public class MainController {

  @Autowired
  MainServiceImpl mainServiceImpl;

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  @RequestMapping(value = "/preferLoc")
  @ResponseBody
  public MainVO preferLoc(UserVO vo) {
    // System.out.println(vo.getUser_id());
    MainVO result = mainServiceImpl.preferLoc(vo);
    // System.out.println(result);
    return result;

  }
  
  // 유저 선호 지역정보 가져오기
  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  @RequestMapping(value = "/touro")
  public void seasonRecommand(HttpServletRequest request, UserVO vo, Model m, MainVO mainvo) {
    // 세션에서 유저 아이디 가져오기
    String userId = (String) request.getSession().getAttribute("loggedId");
    if(userId != null) {
      vo.setUser_id(userId);
      mainvo.setUser_id(userId);
    } else {
      vo.setUser_id("Byounggon");
      mainvo.setUser_id("Byounggon");
    }
    System.out.println(mainvo.getUser_id());
    // vo.setUser_id("dlwldus");
    List<MainVO> result = mainServiceImpl.seasonRecommand(vo);
    MainVO userLoc = mainServiceImpl.getUserInfo(mainvo);
    // System.out.println(userLoc);
    m.addAttribute("userLoc", userLoc);
    // System.out.println(result);
    // return result;
    m.addAttribute("winter", result);
  }

  // // 메인 유저 선호 1순위 여행지 타입에 대한 여행지 추천
  // // 세션의 유저 아이디 파이썬으로 전송
  // @MessageMapping("/sendSessionId")
  // @SendTo("/reco/tourNum")
  // public String sendSessionId(String sessionId) {
  //     // 받은 세션 ID를 로직에 활용하고, 필요한 데이터를 응답으로 보냄
  //     String result = "Received session ID: " + sessionId;
  //     return result;
  // }
  
  // 메인 유저 선호 1순위 여행지 타입에 대한 여행지 추천
  @RequestMapping("/preferLoc1Reco")
  @ResponseBody
  public List<TourVO> getReco1(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getReco1(vo);
    return result;
  }
  // 메인 유저 선호 2순위 여행지 타입에 대한 여행지 추천
  @RequestMapping("/preferLoc2Reco")
  @ResponseBody
  public List<TourVO> getReco2(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getReco2(vo);
    return result;
  }
  // 메인 유저 선호 3순위 여행지 타입에 대한 여행지 추천
  @RequestMapping("/preferLoc3Reco")
  @ResponseBody
  public List<TourVO> getReco3(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getReco3(vo);
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 1순위 여행지 추천
  @RequestMapping("/preferType1Reco")
  @ResponseBody
  public List<TourVO> getRecoType1(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getRecoType1(vo);
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 1순위 여행지 추천
  @RequestMapping("/preferType2Reco")
  @ResponseBody
  public List<TourVO> getRecoType2(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getRecoType2(vo);
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 1순위 여행지 추천
  @RequestMapping("/preferType3Reco")
  @ResponseBody
  public List<TourVO> getRecoType3(Reco1VO vo, Model m) {
    String num1 = vo.getTour_num1().replaceAll("\\.0$", "");
    String num2 = vo.getTour_num2().replaceAll("\\.0$", "");
    String num3 = vo.getTour_num3().replaceAll("\\.0$", "");
    // System.out.println(num1);
    vo.setTour_num1(num1);
    vo.setTour_num2(num2);
    vo.setTour_num3(num3);
    List<TourVO> result = mainServiceImpl.getRecoType3(vo);
    return result;
  }
  
  
  
}
