package com.example.coding.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.coding.domain.TouroMateVO;
import com.example.coding.domain.UserVO;
import com.example.coding.service.TouroMateService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/touromate")
public class TouroMateController {

    // 'MateService'타입의 'mateService'필드 선언
    private final TouroMateService mateService;

    // 'MateController'의 생성자 정의
    public TouroMateController(TouroMateService mateService){
        this.mateService = mateService;
    }

    // 노드 서버
    private final int nodeServerPort = 8081;

    @RequestMapping("/touromate_list")
    // '@RequestParam'를 사용하여, URL에서 파라미터를 읽어옴. name = "searchKeyword" 파라미터의 이름 정의, 'required = false' 이 파라미터는 필수가 아님 -> 검색어가 없는 경우에도 메서드 실행 가능
    public String list(@RequestParam(name = "searchKeyword", required = false) String searchKeyword,
                       @RequestParam(name = "page", defaultValue = "1") int page, Model m, HttpServletRequest request) {
        // 세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
        
         // 노드 서버와 통신할 때 사용할 URL
        String nodeServerUrl = "http://localhost:" + nodeServerPort + "/chat";

        
        // 전체 페이지 수를 가져오는 메서드
        int getTotalPages = mateService.getTotalPages();

        // 검색어에 해당하는 게시글 리스트 메서드
        List<TouroMateVO> selectedMateList;

        if (StringUtils.hasText(searchKeyword)) {
            // 검색어가 있을 경우 실행 -> 조건에 맞는 게시글을 가져옴
            selectedMateList = mateService.searchMateList(searchKeyword, page);
        } else {
            // 검색어가 없는 경우 -> 전체 게시글을 가져옴
            selectedMateList = mateService.getSelectedMateList(page);
        }

        System.out.println("Search keyword: " + searchKeyword);

        m.addAttribute("touromates", selectedMateList);
        m.addAttribute("totalPages", getTotalPages);
        m.addAttribute("currentPage", page);

        return "touromate/touromate_list";
}

    // insert 페이지
    @PostMapping("/register-course")
    public String registerCourse(@ModelAttribute TouroMateVO touroMateVO, 
                                @RequestParam int touro_mate_num, 
                                HttpServletRequest request){
        //세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");

        System.out.println("userId:" + loggedInUser.getUser_id());
        System.out.println("touro_mate_num:" + touro_mate_num);

        touroMateVO.setUser_id(loggedInUser.getUser_id());

        mateService.registerTouroMateAndChat(touroMateVO);
        return "redirect:/touromate/touromate_list";

    }

    //detail 페이지
    @RequestMapping("/touromate_detail")
    public void showDetailPage(@RequestParam int touro_mate_num, Model m){

        // 해당 게시글의 정보 가져옴
        TouroMateVO touroMate = mateService.getTouroMateById(touro_mate_num);

        // 해당 게시글의 여행지 정보를 가져옴
        List<TouroMateVO> travelPlaces = mateService.getTravelPlaces(touro_mate_num);

        // 해당 게시글의 작성자 정보를 가져옴
        UserVO authorInfo = mateService.getAuthorInfo(touroMate.getUser_id());

        m.addAttribute("touroMate", touroMate);
        m.addAttribute("travelPlaces", travelPlaces);
        m.addAttribute("authorInfo", authorInfo);
    }


}

