package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.InquiryReviewVO;
import com.example.coding.domain.InquiryVO;
import com.example.coding.domain.TourReviewVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;
import com.example.coding.domain.WishListVO;
import com.example.coding.service.MyPageService;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/user")
@Controller
public class MyPageController {


    @Autowired
    private MyPageService myPageService;


    // ---------------------------------------- 마이페이지

    @GetMapping("/mypage")
    public String myPage(HttpSession session, Model model) {

        // 세션에서 사용자 아이디 가져오기
        String userId = (String) session.getAttribute("loggedId");
        // 사용자 정보 가져와서 userVO에 저장
        UserVO userVO = myPageService.getUserProfile(userId);

        // 마이페이지 메인페이지 - 개수
        // 작성한 리뷰(여행 후기) 개수 가져오기
        int touroviewCount = myPageService.getTouroviewCountByUserId(userId);
        // 여행지 댓글 개수 가져오기
        int tourReviewCount = myPageService.getTourReviewCountByUserId(userId);
        // 리뷰 개수 가져오기
        int touroviewReviewCount = myPageService.getTouroviewReviewCountByUserId(userId);
        // 여행지 담은 개수 가져오기
        int touroWishCount = myPageService.getTourWishCountByUserId(userId);


        // 마이페이지 - 작성한 글
        // 작성한 게시물
        List<TouroviewVO> touroviewVO = myPageService.getMyPageTouroviewList(userId);

        List<TouroviewReviewVO> touroviewReviewVO = myPageService.getMyPageTouroviewReviewList(userId);

        List<TourReviewVO> tourReviewVO = myPageService.getMyPageTourReviewList(userId);

        

        // 여행지 찜 목록 가져오기
        List<WishListVO> wishListVO = myPageService.getWishList(userId);
        // 문의 목록 가져오기
        List<InquiryVO> inquiryVO = myPageService.getInquiryByUserId(userId);

        
        // 모델에 사용자 아이디 추가
        model.addAttribute("userId", userId);   // 세션 id 값

        model.addAttribute("userVO", userVO);   // 사용자 프로필

        model.addAttribute("touroviewCount", touroviewCount);       // 여행 후기 개수
        model.addAttribute("tourReviewCount", tourReviewCount);     // 여행지 리뷰 개수
        model.addAttribute("touroviewReviewCount", touroviewReviewCount);   // 여행지 후기 리뷰 개수
        model.addAttribute("totalCommentCount", tourReviewCount + touroviewReviewCount); // 리뷰 총 개수
        model.addAttribute("touroWishCount", touroWishCount);   // 여행지 담은 개수

        model.addAttribute("touroviewVO", touroviewVO);         // 작성한 게시물 불러오기
        model.addAttribute("touroviewReviewVO", touroviewReviewVO);         // 작성한 게시물 불러오기
        model.addAttribute("tourReviewVO", tourReviewVO);         // 작성한 게시물 불러오기



        model.addAttribute("wishListVO", wishListVO);           // WishListVO
        model.addAttribute("inquiryVO", inquiryVO);             // 사용자 문의 



        // 콘솔 출력
        System.out.println("사용자 아이디: " + userId);
        System.out.println("사용자 프로필 정보: " + userVO);
        System.out.println("사용자 찜목록 정보: " + wishListVO);
        System.out.println("사용자 문의 내역: " + inquiryVO);
        System.out.println("작성한 게시물 내역: " + touroviewVO);
        System.out.println("여행 후기 리뷰 댓글 : " + touroviewReviewVO);
        System.out.println("여행지 리뷰 댓글: " + tourReviewVO);
        
        
        return "user/mypage";
        
    }






     
    @PostMapping("/profile")
    public String updateUserProfile(@RequestBody UserVO userVO) {
        int updatedRows = myPageService.updateUserProfile(userVO);

        if (updatedRows > 0) {
            // 업데이트 성공
            return "redirect:/profile"; // 프로필 페이지로 리다이렉트
        } else {
            // 업데이트 실패 처리
            return "error-page"; // 에러 페이지로 이동 또는 다른 처리
        }
    }





    
}
