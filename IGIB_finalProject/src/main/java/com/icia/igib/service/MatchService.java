package com.icia.igib.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.MatchDao;

@Service
public class MatchService {

	@Autowired
	private MatchDao mcdao;

}
