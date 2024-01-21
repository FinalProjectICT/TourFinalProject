package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.coding.domain.AdminTouroMateVO;
import com.example.coding.domain.AdminVO;
import com.example.coding.domain.MainAdminVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.service.MainServiceImpl;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@CrossOrigin(origins = "http://localhost:5173")
public class MainAdminController {

  @Autowired
  MainServiceImpl mainServiceImpl;


  // 관리자 touromate 리스트 출력
  @GetMapping("/touromate-list/touromateList")
  public List<AdminTouroMateVO> touromateList(Model m) {
      List<AdminTouroMateVO> mateLists = mainServiceImpl.touromateList();
      System.out.println("Mate"+ mateLists);
      m.addAttribute("touromateList", mateLists);
      return mateLists;
  }

  // 관리자 touromate 검색
  @GetMapping("/touromate-list/search_mate")
  public List<AdminTouroMateVO> searchMate(@RequestParam("search_mate")String search_mate ) {
      return mainServiceImpl.searchMate(search_mate);
  }

  // 관리자 대시보드 - 회원수 가져오기
  @GetMapping("/dashboard/userCount")
  public Integer userCount() {
      return mainServiceImpl.userCount();
  }

  // 관리자 대시보드 - 여행친구찾기 게시글 수 가져오기
  @GetMapping("/dashboard/touroviewCount")
  public Integer touroviewCount() {
      return mainServiceImpl.touroviewCount();
  }

  // 관리자 대시보드 - 후기 게시글 수 가져오기
  @GetMapping("/dashboard/reviewCount")
  public Integer reviewCount() {
      return mainServiceImpl.reviewCount();
  }

  // 관리자 대시보드 - 영수증 리뷰 수 가져오기
  @GetMapping("/dashboard/receiptReviewCount")
  public Integer receiptReviewCount() {
      return mainServiceImpl.receiptReviewCount();
  }

  // 관리자 대시보드 - 우리나라 지도 : 선호도 순위 4개 통계
  @GetMapping("/dashboard/locPrefer")
  public List<MainAdminVO> locPrefer() {
      return mainServiceImpl.locPrefer();
  }
  
  // 관리자 후기 게시판 신고 3번 이상 게시글 블라인드 처리
  @PostMapping("/touroview/blind/{touroview_num}")
  public void touroviewBlind(@PathVariable("touroview_num") Integer touroview_num, TouroviewVO vo) {
    vo.setTouroview_num(touroview_num);
    mainServiceImpl.touroviewBlind(vo);
      
  }

  // 관리자 문의 답변 보내기 - DB 저장
  @PostMapping("/inquiry/inquiryReview")
  public void inquiryReview(@RequestBody AdminVO vo) {
    System.out.println(vo.getInquiry_review_content());
    System.out.println(vo.getInquiry_num());
    mainServiceImpl.inquiryReview(vo);
  }

  // 관리자 문의 답변하면 -> inquiry_process = 1로 변경
  @PostMapping("/inquiry/inquiryProcess")
  public void inquiryProcess(@RequestBody AdminVO vo) {
    mainServiceImpl.inquiryProcess(vo);
  }

  // 관리자 문의 답변 수정하기 - DB 수정
  @PostMapping("/inquiry/inquiryReviewUpdate")
  public void inquiryReviewUpdate(@RequestBody AdminVO vo) {
    // System.out.println(vo.getInquiry_review_content());
    // System.out.println(vo.getInquiry_num());
    mainServiceImpl.inquiryReviewUpdate(vo);
  }
  
  
  




  
}
