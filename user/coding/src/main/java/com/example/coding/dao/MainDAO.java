package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.MainVO;
import com.example.coding.domain.Reco1VO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.UserVO;

@Mapper
public interface MainDAO {

  // 유저별 선호 지역 가져오기 - 3개 - ajax
  public MainVO preferLoc(UserVO vo);

  // 유저 선호 지역으로 사계절 갈 만한 곳 보여주기
  public List<MainVO> seasonRecommand(UserVO vo);

  // 메인 유저 선호 1순위 여행지 타입에 대한 여행지 추천
  public List<TourVO> getReco(Reco1VO vo);

  // 유저 선호 지역정보 가져오기
  public MainVO getUserInfo(MainVO vo);

  // 메인 유저 선호 1순위 지역에 대한 1순위 여행지 추천
  public List<TourVO> getRecoType(Reco1VO vo);

  // 후기 게시글의 긍정 부정 판단으로 사용자 선호 지역 중에 여행지 추천
  public List<TourVO> yesResult(Reco1VO vo);


  
}