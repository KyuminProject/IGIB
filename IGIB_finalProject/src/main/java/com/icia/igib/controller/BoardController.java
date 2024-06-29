package com.icia.igib.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.igib.service.MatchService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BoardController {

	@Autowired
	private MatchService mcsvc;

	@GetMapping("/template")
	public ModelAndView template() {
		return new ModelAndView("board/template");
	}

	// 메인 페이지
	@GetMapping("/")
	public ModelAndView main() {
		return new ModelAndView("board/main");
	}

	// 전적검색
	@GetMapping("/search")
	public ModelAndView search(String username, String tag) {
		ModelAndView mav = new ModelAndView();
		System.out.println(username);
		System.out.println(tag);

		mav.addObject("username", username);
		mav.addObject("tag", tag);
		mav.setViewName("board/search");
		return mav;
	}

	// 내 친구와의 승률 페이지
	@GetMapping("/searchfriend")
	public ModelAndView searchfriend() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/search_friend");
		return mav;
	}

	// 로그인 페이지 이동
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("member/login");
	}

	// 회원가입 페이지 이동
	@GetMapping("/join")
	public ModelAndView join() {
		return new ModelAndView("member/join");
	}

	// 비밀번호 찾기 페이지 이동
	@GetMapping("/findPw")
	public ModelAndView findPw() {
		return new ModelAndView("member/findPw");
	}

	// 아이디 찾기 페이지 이동
	@GetMapping("/findId")
	public ModelAndView findId() {
		return new ModelAndView("member/findId");
	}

	// 퍼센트 바, 시간 바
	@GetMapping("/test")
	public ModelAndView test() {
		return new ModelAndView("/test");
	}

	// 공허 vs 용 페이지 이동
	@GetMapping("/baronVsDragon")
	public ModelAndView baronVsDragon() {
		return new ModelAndView("winning/baronVsDragon");
	}

	// 라인별 분당 골드 이동
	@GetMapping("/minuteGold")
	public ModelAndView MinuteGold() {
		return new ModelAndView("tierUp/minuteGold");
	}
	
	@GetMapping("/firstKillTime")
	public ModelAndView test0530(HttpSession session, RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();

		String loginLolName = (String) session.getAttribute("loginLolName");
		String loginLolTag = (String) session.getAttribute("loginLolTag");

		System.out.println(loginLolName);

		mav.addObject("loginLolName", loginLolName);
		mav.addObject("loginLolTag", loginLolTag);
		if (loginLolName == null || loginLolTag == null) {
			ra.addFlashAttribute("msg", "소환사 닉네임과 태그를 모두 입력해주세요");
			mav.setViewName("member/myinfo");
		}
		mav.setViewName("tierUp/firstKillTime");
		return mav;
	}
	
	// 티어별 와드 사용 개수 or 시야점수 
	@GetMapping("/sightScore")
	public ModelAndView sightScore() {
		return new ModelAndView("tierUp/sightScore");
	}
	@GetMapping("/firstBlood")
	public ModelAndView firstBlood(HttpSession session, RedirectAttributes ra) {
		ModelAndView mav = new ModelAndView();

		String loginLolName = (String) session.getAttribute("loginLolName");
		String loginLolTag = (String) session.getAttribute("loginLolTag");

		System.out.println(loginLolName);

		mav.addObject("loginLolName", loginLolName);
		mav.addObject("loginLolTag", loginLolTag);
		if (loginLolName == null || loginLolTag == null) {
			ra.addFlashAttribute("msg", "소환사 닉네임과 태그를 모두 입력해주세요");
			mav.setViewName("member/myinfo");
		}
		mav.setViewName("tierUp/firstBlood");
		return mav;
	}

}
