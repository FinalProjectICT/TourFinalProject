package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.coding.dao.AdminRepository;
import com.example.coding.dao.AdminUserRepository;
import com.example.coding.domain.AdminTourJpaVO;
import com.example.coding.domain.AdminUserJpaVO;
import com.example.coding.domain.AdminVO;
import com.example.coding.service.AdminService;

import io.swagger.v3.oas.annotations.tags.Tag;


@RestController
@CrossOrigin(origins = "http://localhost:5173")
@Tag(name="AdminController", description="이 클래스에 대한 설명부분")
public class AdminController {
    
    @Autowired
    private AdminService adminService;

    @Autowired
	private AdminRepository repo ; 

    @Autowired
	private AdminUserRepository userRepo ; 


    // 전체 여행지 리스트 띄우는 컨트롤러 (My batis)
    @GetMapping("/tour-list")
    public List<AdminVO> tourList(Model m) {
        List<AdminVO> list = adminService.tourList();
        m.addAttribute("tourList", list);
        return list;
    }

    // 여행지 목록 페이지 내부에 search 값 리스트 띄우는 컨트롤러 (JPA)
    @GetMapping("/search_tourName")
    public List<AdminTourJpaVO> search_tourName(@RequestParam("search_tourName") String search_tourName, Model m) {
        System.out.println("검색어: " + search_tourName);
        return repo.findByTourNameLike("%" + search_tourName + "%");
    }

    @GetMapping("/tour-view/{tourNum}")

    public AdminVO TourDetail(@PathVariable("tourNum") String tourNum) {
        System.out.println(tourNum);
        AdminVO vo = new AdminVO();
        vo.setTourNum(tourNum);
        System.out.println();
        AdminVO result = adminService.tourdetail(vo);
        result.setTourNum(tourNum);
        System.out.println(result);
        return result;
    }

    // 여행지 삭제
    @DeleteMapping("/tour-list/{tourNum}")
    public void deleteNum(@PathVariable String tourNum) {
        System.out.println(tourNum);
        AdminVO vo = new AdminVO();
        vo.setTourNum(tourNum);
        System.out.println("/tour-list/{tourNum} delete 요청");
        adminService.deleteNum(vo);
    }

    // 여행지 등록 
    @PostMapping("/tour-register/tourInsert")
    public void tourInsert(AdminVO vo) {
        System.out.println("/tourInsert post 요청");
        adminService.tourInsert(vo);
    }

    
    // 전체 회원 전체 리스트 띄우는 컨트롤러 (My batis)
    @GetMapping("/user/userList")
    public List<AdminVO> userList(Model m) {
    List<AdminVO> userlist = adminService.userList();
    m.addAttribute("userList", userlist);
    System.out.println(userlist);
    return userlist;
    }

    // 유저 목록 페이지 내부에 search 값 리스트 띄우는 컨트롤러 (JPA)
    @GetMapping("/user/userSearch")
    public List<AdminUserJpaVO> searchUsers(@RequestParam("userSearch") String userSearch, Model m) {
        System.out.println("검색어: " + userSearch);
        return userRepo.findByUserSearchLike("%" + userSearch + "%");
    }


    // touroview ( 게시판 ) 리스트 출력
    @GetMapping("/touroview-list/touroviewList")
    public List<AdminVO> touroviewList(Model m) {
        List<AdminVO> viewLists = adminService.touroviewList();
        System.out.println(viewLists);
        m.addAttribute("touroviewList", viewLists);
        return viewLists;
    }

}
