package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.coding.dao.AdminRepository;
import com.example.coding.domain.AdminJpaVO;
import com.example.coding.domain.AdminVO;
import com.example.coding.service.AdminService;

import io.swagger.v3.oas.annotations.tags.Tag;


@RestController
@CrossOrigin(origins = "*")
@Tag(name="AdminController", description="이 클래스에 대한 설명부분")
public class AdminController {
    
    @Autowired
    private AdminService adminService;

    @Autowired
	private AdminRepository repo ; 

    // 전체 여행지 리스트 띄우는 컨트롤러 (My batis)
    @GetMapping("/tour-list")
    public List<AdminVO> tourList(Model m) {
        // BoardVO vo = new BoardVO();
        List<AdminVO> list = adminService.tourList();
        m.addAttribute("tourList", list);
        return list;
    }

    // 여행지 목록 페이지 내부에 search 값 리스트 띄우는 컨트롤러 (JPA)
    @GetMapping("/search_tourName")
    public List<AdminJpaVO> search_tourName(@RequestParam("search_tourName") String search_tourName, Model m) {
        System.out.println("검색어: " + search_tourName);
        return repo.findByTourNameLike("%" + search_tourName + "%");
    }

    @GetMapping("/tour-view/${tourNum}")
    public AdminVO TourDetail(@PathVariable String tourNum) {
        AdminVO vo = new AdminVO();
        vo.setTourNum(tourNum);
        AdminVO result = adminService.tourdetail(vo);
        return result;
    }

}
