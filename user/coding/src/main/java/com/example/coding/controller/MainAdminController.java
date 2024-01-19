package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.coding.domain.AdminTouroMateVO;
import com.example.coding.service.MainServiceImpl;

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


  
}
