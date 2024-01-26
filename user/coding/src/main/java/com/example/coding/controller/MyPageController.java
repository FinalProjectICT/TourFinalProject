package com.example.coding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.UserVO;
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

        // 모델에 사용자 아이디 추가
        model.addAttribute("userId", userId);   // 세션 id 값
        
        // UserVO
        model.addAttribute("userVO", userVO);


        // 콘솔 출력
        System.out.println("사용자 아이디: " + userId);
        System.out.println("사용자 아이디: " + userVO);
        
    
        return "user/mypage";
        
    }


    @GetMapping("user/appReview")
    public String app(HttpSession session, Model model) {

        // 세션에서 사용자 아이디 가져오기
        String userId = (String) session.getAttribute("loggedId");

        // 사용자 정보 가져와서 userVO에 저장
        UserVO userVO = myPageService.getUserProfile(userId);

        // 모델에 사용자 아이디 추가
        model.addAttribute("userId", userId);   // 세션 id 값
        
        // UserVO
        model.addAttribute("userVO", userVO);


        // 콘솔 출력
        System.out.println("사용자 아이디: " + userId);
        System.out.println("사용자 아이디: " + userVO);
        
    
        return "user/user/appReview";
        
    }




    

















































    
}
