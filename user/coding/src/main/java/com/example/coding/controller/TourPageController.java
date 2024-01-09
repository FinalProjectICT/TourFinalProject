package com.example.coding.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.coding.service.TourListService;
import com.example.coding.service.UserInfoService;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.UserVO;

@Controller
@RequestMapping("/touro")
public class TourPageController {

	// 여행지 리스트 서비스 연결
	@Autowired
	private TourListService tourListService;

	// 유저 정보 서비스 연결
	@Autowired
	private UserInfoService userInfoService;

	/****
	 * 여행지 리스트 전체 출력 /touro/tour
	 * - TourVO & TourListService, DAO
	 * - mapper - TourListMapper
	 *  단순히 불러오는거라 20 개씩 출력되고 Nav도 정삭 작동하도록 수정해야함
	 */
	@RequestMapping("/tour")
	public String tourList(Model m) {
		List<TourVO> List = tourListService.getTourList();
		m.addAttribute("TourList", List);
		return "/tour/tour_list";	
	}

	/****
	 * 여행지 리스트 게시물 출력 /touro/tour/{}
	 * - TourVO & TourListService, DAO
	 * - mapper - TourListMapper
	 */
	@RequestMapping(value = "/{tour_num}", method = {RequestMethod.GET})
	public ModelAndView tourDetail(TourVO vo) {
		System.out.println(vo.getTour_num());
		ModelAndView m = new ModelAndView();
		m.setViewName("/tour/tour_detail");
		m.addObject("TourData", tourListService.getTourData(vo));
		return m;
	}

	/***** 
	 * 사용자 정보 모달 전달
	 * - UserVO & UserInfoService, DAO
	 * - mapper - UserInfoMapper
	 */
	@RequestMapping(value = "/userInfo", method = {RequestMethod.POST})
	@ResponseBody
	public UserVO userInfo(@RequestParam("user_id") String user_id){
		System.out.println(user_id);
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo = userInfoService.getUserInfo(vo);
		return vo;
	} 

}
