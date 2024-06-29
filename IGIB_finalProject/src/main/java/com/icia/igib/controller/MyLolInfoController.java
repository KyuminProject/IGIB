package com.icia.igib.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyLolInfoController {

	@GetMapping("/ban")
	public ModelAndView ban() {
		return new ModelAndView("mylolInfo/ban");
	}

}
