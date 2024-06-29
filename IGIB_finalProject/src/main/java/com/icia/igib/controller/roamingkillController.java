package com.icia.igib.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.igib.service.roamingkillService;

@Controller
public class roamingkillController {

	@Autowired
	private roamingkillService rsvce;

	@GetMapping("/roamingkill")
	public ModelAndView roamingkill() {
		return new ModelAndView("tierUp/roamingkill");
	}

	   @PostMapping("/roamingkill")
	    public @ResponseBody List<String> roamingkill(@RequestParam String ptype) {
		   List<String> result = rsvce.getroamingkill(ptype);
	        return result;
	}

}
