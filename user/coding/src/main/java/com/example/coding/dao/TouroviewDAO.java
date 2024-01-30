package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewDetailVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;
import com.example.coding.domain.LikeVO;

@Mapper
public interface TouroviewDAO {
    
    // ---------------------------------------- insert
    // 해당 키워드로 여행지 목록가져오기
    public List<TourVO> findByKeyword(TourVO vo);
    
    // 후기 게시판 작성 후 db 저장
    public void saveTouroview(TouroviewVO touroviewVO);
    
    
    // ---------------------------------------- list
    // (list 페이지) 페이징, 목록
    public List<TouroviewVO> getTouroviewList(@Param("searchKeyword") String searchKeyword, int page, int size);
    
    // 목록 전체 가져오기
    public int getTotalPages();

    // 여행지 이미지 사진 가져오기
    public TourVO getTourByNum(String tour_num);

    // 검색어
    public List<TouroviewVO> searchByKeyword(String keyword);


    // ---------------------------------------- detail
    // 게시물 id로 touroview 게시물 가져오기
    public TouroviewVO getTouroviewById(int touroview_num);
    
    // 여행지 번호를 이용하여 해당 여행지 정보를 가져오기
    public TourVO getTourByTouroviewId(int touroview_num);
    
    // 작성자(사용자) 정보 가져오기
    public UserVO getUserByTouroviewId(int touroview_num);
    
    // 후기 게시물 리뷰 정보 가져오기
    public TouroviewReviewVO getTouroviewReviewByTouroviewId(int touroview_num);
    

    // 신고
    public void insertReportCount(TouroviewVO touroviewVO);
    
    // 사용자가 게시물을 신고했는지 확인
    public int checkReported(@Param("touroviewNum") int touroviewNum, @Param("userId") String userId);



    
    // ---------------------------------------- update, delete
    // 후기 게시판 수정
    public void updateTouroview(TouroviewVO touroviewVO);
    
    // 후기 게시판 삭제
    public void deleteTouroview(int touroviewNum);

     // 후기 게시판 글 번호
    public int selectViewNum();

    // 디테일 배경 이미지 가져오기
    public TouroviewDetailVO getTouroviewImg(int tour_num);

    // 디테일 배경 이미지 가져오기
    public List<TouroviewDetailVO> detailviewImg(int touroview_num);

     // 좋아요 추가
     void addWishList(LikeVO vo);

     // 좋아요 확인
     int ckWishList(LikeVO vo);
 
     // 좋아요 삭제
     int deleteWishList(LikeVO vo);
}
