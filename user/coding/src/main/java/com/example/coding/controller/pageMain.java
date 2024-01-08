package com.example.coding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pageMain {
    /* 
    @RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return ""+step;
	}
	*/
	
	@RequestMapping("/html/{step}")
	public String viewPage(@PathVariable String step) {
		return "/html/"+step;
	}

	@RequestMapping("/jsp/{step}")
	public String viewPage2(@PathVariable String step) {
		return "/jsp/"+step;
	}

}
