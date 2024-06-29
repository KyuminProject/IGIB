package com.icia.igib.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.igib.service.TierSpellService;

@Controller
public class TierSpellController {

    @Autowired
    private TierSpellService spsvc;   
    
    //티어별 스펠 사용 횟수 페이지로 이동 
 	@GetMapping("/tierspell")
 	public ModelAndView tierSpell() {
 		return new ModelAndView("tierUp/tierspell");
 	}
    
    @PostMapping("/tierspell")
    @ResponseBody
    public Map<String, List<?>> getSpellData(@RequestParam int spnumber) {
        return spsvc.getSpellData(spnumber);
    }

}