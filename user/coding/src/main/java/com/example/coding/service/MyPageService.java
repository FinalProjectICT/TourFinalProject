package com.example.coding.service;



import java.util.List;

import com.example.coding.domain.InquiryReviewVO;
import com.example.coding.domain.InquiryVO;
import com.example.coding.domain.TourReviewVO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;
import com.example.coding.domain.WishListVO;

public interface MyPageService {

    // mypage 사용자 정보 가져오기
    public UserVO getUserProfile(String userId);

    // 마이페이지 - 메인페이지 - 개수
    // 작성한 리뷰 개수 가져오기
    public int getTouroviewCountByUserId(String userId);
    // 여행지 리뷰 개수 가져오기
    public int getTourReviewCountByUserId(String userId);
    // 여행지 후기 리뷰 개수 가져오기
    public int getTouroviewReviewCountByUserId(String userId);
    // 여행지 담은 개수 가져오기
    public int getTourWishCountByUserId(String userId);

    
    // 마이페이지 - 프로필 수정
    public int updateUserProfile(UserVO userVO);



    // 마이페이지 - 작성한 글
    // 여행 후기
    public List<TouroviewVO> getMyPageTouroviewList(String userId);

    // 여행 후기 리뷰 댓글
    public List<TouroviewReviewVO> getMyPageTouroviewReviewList(String userId);

    // 여행지 리뷰 댓글
    public List<TourReviewVO> getMyPageTourReviewList(String userId);



    

    // -----------------------------------------
    // WishListVO 목록을 가져오는 메서드
    public List<WishListVO> getWishList(String userId);

    // public TourVO getTourByWish(int tour_num);




    // ----------------------------------------------




    // 사용자 ID를 기반으로 해당 사용자의 문의 내역 조회
    public List<InquiryVO> getInquiryByUserId(String userId);




}
