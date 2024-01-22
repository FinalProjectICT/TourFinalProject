package com.example.coding.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;

public interface TouroviewService {
    
    // ------------------------------ touroview_insert 페이지
    // (검색) 해당 키워드로 여행지 목록 가져오기
    public List<TourVO> findByKeyword(TourVO vo);
    
    // 후기 게시판 작성 후 db 저장
    public void saveTouroview(TouroviewVO touroviewVO);

    
    // ------------------------------ touroview_list 
    // (list 페이지) 페이징, 목록
    public List<TouroviewVO> getTouroviewList(String searchKeyword, int page, int size);
    
    // 
    public int getTotalPages(int size);
    
    // ------------------------------ touroview_detail
    // 게시물 id로 touroview 게시물 가져오기
    public TouroviewVO getTouroviewById(int touroview_num);
    
    // 여행지 번호를 이용하여 해당 여행지 정보를 가져오기
    public TourVO getTourByTouroviewId(int touroview_num);
    
    // 작성자(사용자) 정보 가져오기
    public UserVO getUserByTouroviewId(int touroview_num);
    
    // 후기 게시물 리뷰 정보 가져오기
    public TouroviewReviewVO getTouroviewReviewByTouroviewId(int touroview_num);
    
    
    // ----------------------------- 수정, 삭제
    // 후기 게시판 수정
    public void updateTouroview(TouroviewVO touroviewVO);
    
    // 후기 게시판 삭제
    public void deleteTouroview(int touroviewNum);
    
    
} 
