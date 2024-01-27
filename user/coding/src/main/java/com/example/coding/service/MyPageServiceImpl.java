package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.MyPageDAO;
import com.example.coding.domain.InquiryReviewVO;
import com.example.coding.domain.InquiryVO;
import com.example.coding.domain.ReceiptVO;
import com.example.coding.domain.TourReviewVO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;
import com.example.coding.domain.WishListVO;

@Service
public class MyPageServiceImpl implements MyPageService {

    @Autowired
    public MyPageDAO myPageDAO;



    // -------------------------------------------------
    // mypage 사용자 정보 가져오기
    @Override
    public UserVO getUserProfile(String userId){

        // 데이터베이스에서 사용자 정보 조회
        return myPageDAO.getUserProfile(userId);

    }


    // 사용자 프로필 사진 가져오기
    public String getUserProfileImage(String userId){
        return myPageDAO.getUserProfileImage(userId);
    }


    // mypage - 메인페이지 - 개수
    // 사용자가 작성한 리뷰 개수 가져오기
    @Override
    public int getTouroviewCountByUserId(String userId){

        return myPageDAO.getTouroviewCountByUserId(userId);
    }
    // 여행지 리뷰 개수 가져오기
    @Override
    public int getTourReviewCountByUserId(String userId){
        return myPageDAO.getTourReviewCountByUserId(userId);
    }
    // 여행지 후기 리뷰 개수 가져오기
    @Override
    public int getTouroviewReviewCountByUserId(String userId){
        return myPageDAO.getTouroviewReviewCountByUserId(userId);
    }
    // 여행지 담은 개수 가져오기
    @Override
    public int getTourWishCountByUserId(String userId){
        return myPageDAO.getTourWishCountByUserId(userId);
    }



    // ---------------------------------------------------------
    // mypage - 작성한 글
    // 여행 후기
    @Override
    public List<TouroviewVO> getMyPageTouroviewList(String userId){
        return myPageDAO.getMyPageTouroviewList(userId);
    }

    // 여행 후기 리뷰 댓글
    public List<TouroviewReviewVO> getMyPageTouroviewReviewList(String userId){
        return myPageDAO.getMyPageTouroviewReviewList(userId);
    }

    // 여행지 리뷰 댓글
    public List<TourReviewVO> getMyPageTourReviewList(String userId){
        return myPageDAO.getMyPageTourReviewList(userId);
    }



    // ---------------------------------------------------------
    // mypage - 프로필 수정
    @Override
    public int updateUserProfile(UserVO userVO){
        return myPageDAO.updateUserProfile(userVO);
    }



    // mypage - 나의 발자취
    @Override
    public List<ReceiptVO> getMyPageReceiptList(String userId, int page, int size){
        int start = (page - 1) * size;
        if(start < 0){
            start = 0;
        }
        return myPageDAO.getMyPageReceiptList(userId, start, size);
    }

    @Override
    public int getTotalReceiptPages(int size){
        // 전체 게시물 수 가져오기
        int getTotalPages = myPageDAO.getTotalReceiptPages();

        // 전체 페이지 수 계산
        int totalPages = (int) Math.ceil((double) getTotalPages / size);
        
        return totalPages;
    }





    // ---------------------------------------------------------
    // mypage - 여행지 담기 불러오기
   
    @Override
    public List<WishListVO> getWishList(String userId){
        return myPageDAO.getWishList(userId);
    }




    // --------------------------------------------------------
    

    // mypage - 사용자 ID를 기반으로 해당 사용자의 문의 내역 조회
    public List<InquiryVO> getInquiryByUserId(String userId){
        return myPageDAO.getInquiryByUserId(userId);
    }



}
