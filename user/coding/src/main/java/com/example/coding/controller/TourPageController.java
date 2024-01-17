package com.example.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.coding.service.TourListService;
import com.example.coding.service.UserInfoService;

import jakarta.servlet.http.HttpServletRequest;

import com.example.coding.domain.InquiryVO;
import com.example.coding.domain.Search;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.UserVO;
import com.example.coding.domain.WishListVO;

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
	 * 여행지 리스트 검색 /touro/tour
	 * - TourVO & TourListService, DAO
	 * - mapper - TourListMapper - selectAll
	 *  단순히 불러오는거라 20 개씩 출력되고 Nav도 정삭 작동하도록 수정해야함
	 * 	?page=&range=&tour_cate_code=&keyword=
	 */
	@RequestMapping(value = "/tour")
	public String tourList(Model m ,@RequestParam(required = false, defaultValue = "1") int page 
							,@RequestParam(required = false, defaultValue = "1") int range 
							,@RequestParam(required = false, defaultValue = "") String tour_cate_code 
							,@RequestParam(required = false) String keyword
							,@RequestParam(required = false, defaultValue = "") String Locs
							,@ModelAttribute("search") Search search) throws Exception {

		m.addAttribute("search", search);
		search.setTour_cate_code(tour_cate_code);
		search.setKeyword(keyword);
		search.setLocs(Locs);
		if (search.getLocs() != null && search.getLocs() != ""){
			search.setLoc_cate_code(search.getLocs().split("/"));
		}else search.setLoc_cate_code(null);
		
		int listCnt = tourListService.getBoardListCnt(search);

		search.pageInfo(page, range, listCnt);
		m.addAttribute("paging", search);
		System.out.println(search.toString()+ " / " +  search.getLoc_cate_code()[0] );

		List<TourVO> List = tourListService.getTourList(search);

		m.addAttribute("TourList", List);
		return "/tour/tour_list";	
	}

	/****
	 * 여행지 리스트 게시물 출력 /touro/tour/{}
	 * - TourVO & TourListService, DAO
	 * - mapper - TourListMapper - selectOne
	 */
	@RequestMapping(value = "/{tour_num}", method = {RequestMethod.GET})
	public ModelAndView tourDetail(TourVO vo,  HttpServletRequest request) {
		System.out.println(vo.getTour_num());
		System.out.println(vo.getLoc_cate_code());
		ModelAndView m = new ModelAndView();
		TourVO toutData = tourListService.getTourData(vo);
		String referer = request.getHeader("Referer");
		if(toutData != null){
			m.setViewName("/tour/tour_detail");
			m.addObject("TourData", toutData);
			return m;
		}else
		m.setViewName("redirect:"+referer);
		return m;
	}

	/***** 
	 * 사용자 정보 모달 전달
	 * - UserVO & UserInfoService, DAO
	 * - mapper - UserInfoMapper - selectUser
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

	/***** 
	 * 여행지 찜목록 추가
	 * - UserVO, TourVO - HashMap & UserInfoService, DAO
	 * - mapper - TourListMapper - wishListAdd
	 */
	@RequestMapping(value = "/addWishList", method = {RequestMethod.POST})
	@ResponseBody
	public String addWishList(@ModelAttribute("vo") WishListVO vo){
		String res = tourListService.addWishList(vo);
		if (res.equals("1")){
			System.out.println("찜 리스트 추가");
		}else System.out.println("에러");
		return res;
	}

	/*********
	 * 찜 된 여행지 구분
	 * @param vo
	 * @return
	*/
	@RequestMapping(value = "/ckWishList", method = {RequestMethod.POST})
	@ResponseBody
	public String ckWishList(@ModelAttribute("vo") WishListVO vo){
		String res = tourListService.ckWishList(vo);
		return res;
	}

	/*****
	 * 여행지 문의 작성
	 * @param vo
	 * @return
	 */
	@RequestMapping(value ="/inquiry", method={RequestMethod.POST})
	@ResponseBody
	public String newInquiry(@ModelAttribute("vo") InquiryVO vo) {
		System.out.println(vo);
		String res = tourListService.newInquiry(vo);
		return res;
	}
	

}
