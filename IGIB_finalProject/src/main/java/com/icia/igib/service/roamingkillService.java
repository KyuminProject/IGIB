package com.icia.igib.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.roamingkillDao;

@Service
public class roamingkillService {

	  @Autowired
	    private roamingkillDao rdao;

	    public List<String> getroamingkill(String ptype) {
	        
	    	int red_postion = 0;
	    	int blue_postion = 0;
	    	if(ptype.equals("UTILITY")) {
	    		red_postion = 5;
	    		blue_postion = 10;
	    	}
	    	
	    	if(ptype.equals("BOTTOM")) {
	    		red_postion = 4;
	    		blue_postion = 9;
	    	}
	    	
	    	if(ptype.equals("MIDDLE")) {
	    		red_postion = 3;
	    		blue_postion = 8;
	    	}
	    	
	    	if(ptype.equals("TOP")) {
	    		red_postion = 1;
	    		blue_postion = 6;
	    	}
	    	String jungle_killWin = rdao.selectJungleKill(red_postion,blue_postion);
	    	String other_killWin = rdao.selectOtherKill(red_postion,blue_postion);
	    	
	    	List<String> result = new ArrayList<>();
	    	result.add(jungle_killWin);
	    	result.add(other_killWin);
	        return result;
	    }
	}