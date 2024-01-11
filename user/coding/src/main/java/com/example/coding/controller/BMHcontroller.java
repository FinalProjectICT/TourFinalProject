package com.example.coding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.coding.domain.BMHVO;
import com.example.coding.service.BMHService;

@Controller
@RequestMapping("user")
public class BMHcontroller {
    
	@Autowired
	private BMHService BMHServiceImpl;

	// 회원가입
	@RequestMapping("/insertUser") 
	public String insertUser(BMHVO vo, Model m) {
		BMHServiceImpl.insertUser(vo);

		return "redirect:login";
	}

	// id 중복체크
	@RequestMapping("/idCheck") 
	@ResponseBody
	public String idCheck(String user_id) {
		int result = BMHServiceImpl.idCheck(user_id);
		return "" + result;
	}

}
