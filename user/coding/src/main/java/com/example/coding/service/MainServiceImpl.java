package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.MainDAO;
import com.example.coding.domain.AdminTouroMateVO;
import com.example.coding.domain.MainVO;
import com.example.coding.domain.Reco1VO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.UserVO;

@Service
public class MainServiceImpl implements MainService{

  @Autowired
  MainDAO mainDAO;

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  public MainVO preferLoc(UserVO vo) {
    MainVO result = mainDAO.preferLoc(vo);
    // System.out.println(result);    
    return result;
  }
  
  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  public List<MainVO> seasonRecommand(UserVO vo) {
    List<MainVO> result = mainDAO.seasonRecommand(vo);
    // System.out.println("Service" + result);
    return result;
  }

  // 메인 유저 선호 1순위 여행지 타입에 대한 여행지 추천
  public List<TourVO> getReco1(Reco1VO vo) {
    List<TourVO> result = mainDAO.getReco(vo);
    return result;
  }
  
  // 메인 유저 선호 2순위 여행지 타입에 대한 여행지 추천
  public List<TourVO> getReco2(Reco1VO vo) {
    List<TourVO> result = mainDAO.getReco(vo);
    return result;
  }

  // 메인 유저 선호 3순위 여행지 타입에 대한 여행지 추천
  public List<TourVO> getReco3(Reco1VO vo) {
    List<TourVO> result = mainDAO.getReco(vo);
    return result;
  }

  // 유저 선호 지역정보 가져오기
  public MainVO getUserInfo(MainVO vo) {
    MainVO result = mainDAO.getUserInfo(vo);
    // System.out.println(result);    
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 1순위 여행지 추천
  public List<TourVO> getRecoType1(Reco1VO vo) {
    List<TourVO> result = mainDAO.getRecoType(vo);
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 2순위 여행지 추천
  public List<TourVO> getRecoType2(Reco1VO vo) {
    List<TourVO> result = mainDAO.getRecoType(vo);
    return result;
  }

  // 메인 유저 선호 1순위 지역에 대한 3순위 여행지 추천
  public List<TourVO> getRecoType3(Reco1VO vo) {
    List<TourVO> result = mainDAO.getRecoType(vo);
    return result;
  }

  // 후기 게시글의 긍정 부정 판단으로 사용자 선호 지역 중에 여행지 추천
  public List<TourVO> yesResult(Reco1VO vo) {
    List<TourVO> result = mainDAO.yesResult(vo);
    return result;
  }

  // 관리자 여행 찾기 게시판 리스트
  public List<AdminTouroMateVO> touromateList() {
    List<AdminTouroMateVO> mateList = mainDAO.touromateList();
    System.out.println("MateService"+ mateList);
    return mateList;
  }

  // 관리자 touromate 검색
  public List<AdminTouroMateVO> searchMate(String search_mate) {
    return mainDAO.searchMate(search_mate);
  }
  
}
                            