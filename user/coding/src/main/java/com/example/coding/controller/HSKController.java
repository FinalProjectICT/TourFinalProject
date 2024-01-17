package com.example.coding.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.service.TouroviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;





// @RestController
// @CrossOrigin
@RequestMapping("/touroview")
@Controller
public class HSKController {

    @Autowired
    private TouroviewService touroviewService;


    // 로그인 id 가져오기
    @GetMapping("/touroview_insert")
    public String showTouroviewForm(HttpServletRequest request, Model model) {
        
        // 세션에서 로그인 정보 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("loggedId");
        System.out.println("아이디: " + userId); // 로그 출력
        
        // 로그인 여부 확인
        if (userId == null){
            // 로그인 안 된 경우 로그인 페이지 이동 or 다른 처리 수행
            return "redirect:/user/login";
        } 

        // TouroviewVO 객체에 설정
        TouroviewVO touroviewVO = new TouroviewVO();
        touroviewVO.setUser_id(userId);
        
        // 모델에 추가
        model.addAttribute("touroviewVO", touroviewVO);

        // 로그인 된 경우 게시글 작성 폼 이동
        session.setAttribute("userId", userId);
        return "touroview/touroview_insert";
        }


    // 여행지 검색
    @GetMapping("/search")
    @ResponseBody
    public List<TourVO> findByKeyword(TourVO vo) {
        try {
            // 여행지 검색 로직을 수행 결과
            // System.out.println("keyword: " + vo.getKeyword());
            return touroviewService.findByKeyword(vo);
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리를 적절히 수행
            return Collections.emptyList();
        }
    }

    // 후기 게시물 등록
    @PostMapping("/saveTouroview")
    public String saveTouroview(@ModelAttribute("touroviewVO") TouroviewVO touroviewVO, HttpServletRequest request, Model model) {
            try{
                // 여행 후기 데이터를 저장하는 서비스 메소드 호출
                System.out.println("여행지:" + touroviewVO.getTouroview_title()); // 콘솔 찍어보기 여행지
                System.out.println("유저 아이디:" + touroviewVO.getUser_id()); // 콘솔 찍어보기 아이디
                System.out.println(touroviewVO);

                // 세션에서 로그인 정보 가져오기
                HttpSession session = request.getSession();
                String userId = (String) session.getAttribute("loggedId");

                // 사용자 아이디 설정
                touroviewVO.setUser_id(userId);
                
                // 여행 후기 데이터 저장하는 서비스 메소드 호출
                touroviewService.saveTouroview(touroviewVO);

                // 성공 시 리다이렉트
                return "redirect:/touroview/touroview_detail/" + touroviewVO.getTouroview_num(); // 저장 후 목록 페이지로 리다이렉트
            } catch (Exception e){
                // 저장 중 오류 발생
                e.printStackTrace();
                return "touroview/touroview_insert";
            }
        }

    // 해당 사용자가 작성한 게시글 불러오기 (detail 페이지)
    @GetMapping("/touroview_detail/{user_id}")
    public String getTouroviewByUserId(@PathVariable String user_id, Model model) {
        try{
            // user_id 에 해당하는 후기를 서비스를 통해 불러와서 모델에 추가
            List<TouroviewVO> touroviewList = touroviewService.getTouroviewByUserId(user_id);
            System.out.println("사용자 ID: " + user_id); // 해당 아이디 출력하기
            
            if (touroviewList.isEmpty()){
                // 해당 사용자의 후기가 없는 경우 
                return "redirect:/touroview_list";
            }
            
            model.addAttribute("touroview", touroviewList);
            model.addAttribute("user_id", user_id);

            return "touroview/touroview_detail";
        }catch (Exception e){
            // 오류 처리
            e.printStackTrace();
            return "touroview/touroview_list"; 
        }
    }



    // 후기 게시물 수정
    @PostMapping("/updateTouroview")
    public String updateTouroview(TouroviewVO touroviewVO) {
        touroviewService.updateTouroview(touroviewVO);        
        // 수정 후 리다이렉트 
        return "redirect:/touroview/touroview_list";
    }

    // 후기 게시물 삭제
    @PostMapping("/deleteTouroview")
    public String deleteTouroview(int touroviewNum) {
        touroviewService.deleteTouroview(touroviewNum);        
        // 삭제 후 리다이렉트
        return "redirect:/touroview/touroview_list";
    }
    



  
}
    
