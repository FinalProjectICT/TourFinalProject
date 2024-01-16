package com.example.coding.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.coding.domain.TouroMateVO;

@Service
public interface TouroMateService {
    List<TouroMateVO> getSelectedMateList(int page); // 전체 게시판 리스트 불러오기, 페이징 처리를 위한 페이지 번호로 인자 받기

    List<TouroMateVO> searchMateList(String searchKeyword, int page); // 검색한 리스트 불러오기, 검색어와, 페이지 번호를 인자로 받기

    // Touromate 리스트 게시판 페이지 네이션을 위한 전체 게시물 수 반환 메서드, 페이지 네이션에 사용
    int getTotalPages();
    
}