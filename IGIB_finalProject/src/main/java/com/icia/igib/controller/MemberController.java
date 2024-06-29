package com.icia.igib.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.igib.dto.MemberDto;
import com.icia.igib.service.MemberService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MemberController {

	@Autowired
	private MemberService msvc;

	// 로컬 로그인
	@PostMapping("/memberLogin")
	public ModelAndView memberLogin(String mid, String mpw, HttpSession session, RedirectAttributes ra) {
		System.out.println("로그인 처리 요청-/memberLogin");
		ModelAndView mav = new ModelAndView();
		// 1. 로그인할 아이디, 비밀번호 파라메터 확인
		System.out.println(mid);
		System.out.println(mpw);
		// 2. SERVICE = 로그인 회원정보 조회 호출
		MemberDto loginMember = msvc.getLoginMemberInfo(mid, mpw);
		if (loginMember == null) {
			System.out.println("로그인 실패");
			ra.addFlashAttribute("msg", "아이디 또는 비밀번호 일치하지 않습니다.");
			mav.setViewName("redirect:/login");
		} else {
			System.out.println("로그인 성공");
			session.setAttribute("loginId", loginMember.getMid());
			session.setAttribute("loginPw", loginMember.getMpw());
			session.setAttribute("loginName", loginMember.getMname());
			session.setAttribute("loginEmail", loginMember.getMemail());
			session.setAttribute("loginState", loginMember.getMstate());
			session.setAttribute("loginLolName", loginMember.getMlolname());
			session.setAttribute("loginMpay", loginMember.getMpay());
			session.setAttribute("loginLolTag", loginMember.getMloltag());
			mav.setViewName("redirect:/");
		}
		return mav;
	}

	// 로그아웃
	@RequestMapping(value = "/logout")
	public String memberLogout(HttpSession session, RedirectAttributes ra) {
		session.invalidate();
		ra.addFlashAttribute("msg", "로그아웃 되었습니다.");
		return "redirect:/";
	}

	// 카카오 로그인
	@RequestMapping(value = "/memberLogin_kakao")
	public @ResponseBody String memberLogin_kakao(String id, HttpSession session) {
		System.out.println("카카오 로그인 요청");
		System.out.println("카카오 id: " + id);
		// Member, MemberService, MemberDao
		MemberDto loginMember = msvc.getLoginMemberInfo(id);
		if (loginMember == null) {
			System.out.println("카카오 계정 정보 없음");
			return "N";
		} else {
			System.out.println("카카오 계정 정보 있음");
			System.out.println("로그인 처리");
			session.setAttribute("loginId", loginMember.getMid());
			session.setAttribute("loginPw", loginMember.getMpw());
			session.setAttribute("loginName", loginMember.getMname());
			session.setAttribute("loginEmail", loginMember.getMemail());
			session.setAttribute("loginState", loginMember.getMstate());
			session.setAttribute("loginLolName", loginMember.getMlolname());
			session.setAttribute("loginMpay", loginMember.getMpay());
			session.setAttribute("loginLolTag", loginMember.getMloltag());
			if ("미입력".equals(loginMember.getMemail()) || "미입력".equals(loginMember.getMlolname())) {
				return "NN";
			}
			return "Y";
		}
	}

	// 카카오 회원가입
	@RequestMapping(value = "/memberJoin_kakao")
	public @ResponseBody String memberJoin_kakao(MemberDto member) {
		System.out.println("카카오 계정 - 회원가입요청 - memberJoin_kakao");
		System.out.println(member);
		int result = msvc.registMember_kakao(member);
		return result + "";
	}

	// 로컬 회원가입
	@PostMapping("/memberJoin")
	public ModelAndView memberJoin(@ModelAttribute @Valid MemberDto member) {
		System.out.println("회원가입 처리 요청 - /memberJoin");
		ModelAndView mav = new ModelAndView();
		member.setMstate("L");
		System.out.println(member);
		int joinResult = 0;
		try {
			joinResult = msvc.memberJoin(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (joinResult != 0) {
			System.out.println("회원 가입 성공");
			mav.setViewName("redirect:/login");
		} else {
			System.out.println("회원 가입 실패");
			mav.setViewName("redirect:/join");
		}
		return mav;
	}

	// 로컬 회원가입시 아이디 중복 확인
	@GetMapping("/memberIdCheck")
	public @ResponseBody String memberIdCheck(@RequestParam("inputId") String inputId) {
		System.out.println("회원가입_아이디 중복 확인 요청 - /memberIdCheck");
		System.out.println("중복 확인할 아이디 : " + inputId);
		return msvc.memberIdCheck(inputId);
	}

	// 이메일로 인증번호 전송
	@PostMapping("/sendEmail")
	public @ResponseBody String sendEmail(@RequestParam String inputEmail, HttpSession session) {
		System.out.println("회원가입_이메일 인증번호 전송 요청 - /sendEmail");
		System.out.println("인증 번호를 전송할 이메일 : " + inputEmail);
		try {
			String result = msvc.sendEmailCode(inputEmail, session);
			return "Y";
		} catch (Exception e) {
			e.printStackTrace();
			return "N";
		}
	}

	// 이메일 인증번호 확인
	@PostMapping("/checkEmailCode")
	public @ResponseBody String checkEmailCode(@RequestParam String inputCode, HttpSession session) {
		System.out.println("회원가입_이메일 인증 번호 확인 요청 - /checkEmailCode");
		System.out.println("확인할 인증 번호 : " + inputCode);
		String saveCode = (String) session.getAttribute("sentCode");
		if (saveCode != null && saveCode.equals(inputCode)) {
			return "Y";
		} else {
			return "N";
		}
	}

	// 내정보 페이지 이동
	@RequestMapping(value = "/myinfo")
	public ModelAndView myinfoPage() {
		System.out.println("/myinfo 요청");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/member/myinfo");
		return mav;
	}

	// 내정보 변경 (닉네임 변경)
	@PostMapping("/memberInfo")
	public ModelAndView memberInfo(String mid, String mlolname, String mpw, String mloltag, RedirectAttributes ra, HttpSession session) {
		System.out.println("업데이트 처리 요청-/memberInfo");
		ModelAndView mav = new ModelAndView();
		System.out.println(mid);
		System.out.println(mlolname);
		System.out.println(mloltag);
		int updateResult = msvc.updateInfo(mid, mlolname, mloltag);
		if (updateResult > 0) {
			mav.setViewName("redirect:/");
			MemberDto loginMember = msvc.getLoginMemberInfo(mid, mpw);
			session.setAttribute("loginLolName", loginMember.getMlolname());
			session.setAttribute("loginEmail", loginMember.getMemail());
			session.setAttribute("loginLolTag", loginMember.getMloltag());
			ra.addFlashAttribute("msg", "닉네임이 변경 되었습니다.");
		} else {
			mav.setViewName("redirect:/myinfo");
			ra.addFlashAttribute("msg", "닉네임 변경에 실패했습니다.");
		}
		return mav;
	}

	// 내정보 변경 (이메일 변경)
	@PostMapping("/changeEmail")
	public @ResponseBody int changeEmail(@RequestParam String mid, @RequestParam String memail) {
		System.out.println("내 정보_이메일 변경 요청 - /changeEmail");
		System.out.println(mid + " : " + memail);
		int updateResult = msvc.changeEmail(mid, memail);
		if (updateResult != 0) {
			System.out.println("내 정보 - 이메일 변경 성공");
			return 1;
		} else {
			System.out.println("내 정보 - 이메일 변경 실패");
			return 0;
		}
	}

	// 내정보 변경 (비빌번호 변경 페이지 이동 - 로컬 로그인만 접속 가능)
	@PostMapping("/changePw_Page")
	public ModelAndView changePw_Page(@RequestParam String mid) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/changePw");
		mav.addObject("mid", mid);
		return mav;
	}

	// 비밀번호 변경
	@PostMapping("/changePw")
	public ModelAndView ChangePw(String mid, String mpw, String checkpw, RedirectAttributes ra) {
		System.out.println(mid);
		System.out.println(mpw);
		System.out.println(checkpw);
		ModelAndView mav = new ModelAndView();
		if (mpw.equals(checkpw)) { // Use equals() to compare string values
			int result = msvc.changePw(mid, mpw);
			if (result == 1) {
				System.out.println("성공");
				ra.addFlashAttribute("msg", "비밀번호가 변경되었습니다.");
				mav.setViewName("redirect:/login");
			} else {
				System.out.println("실패");
				ra.addFlashAttribute("msg", "비밀번호 변경이 실패하였습니다. 다시 시도해주세요.");
				mav.setViewName("redirect:/login");
			}
		} else {
			System.out.println("실패");
			ra.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다. 다시 시도해주세요.");
			mav.setViewName("redirect:/findPw");
		}
		return mav;
	}

	// 비밀번호 찾기
	@PostMapping("/memberFindPw")
	public ModelAndView memberFindPw(@RequestParam String mid, @RequestParam String memail, HttpSession session, RedirectAttributes ra) {
		System.out.println("비밀번호 찾기 요청 - /memberFindPw");
		System.out.println("아이디 : " + mid);
		String sessionMid = (String) session.getAttribute("mid"); // Ensure session mid retrieval
		System.out.println("세션 아이디 : " + sessionMid);
		ModelAndView mav = new ModelAndView();
		int checkResult = msvc.checkMidAndMemail(mid, memail);
		if (checkResult == 1) {
			mav.setViewName("member/changePw");
			mav.addObject("mid", mid);
		} else {
			ra.addFlashAttribute("msg", "회원가입 시 입력한 이메일 및 아이디로 진행해주세요.");
			mav.setViewName("redirect:/findPw");
		}
		return mav;
	}

	// 아이디 찾기
	@PostMapping("/memberFindId")
	public ModelAndView memberFindId(@RequestParam String mname, @RequestParam String memail, HttpSession session, RedirectAttributes ra) {
		System.out.println("아이디 찾기 요청 - /memberFindId");
		System.out.println("아이디 : " + mname);
		System.out.println("이메일 : " + memail);
		ModelAndView mav = new ModelAndView();
		int checkResult = msvc.checkMnemeAndMemail(mname, memail);
		if (checkResult == 1) {
			String mid = msvc.findId(mname, memail);
			System.out.println(mid);
			mav.setViewName("member/checkId");
			mav.addObject("mid", mid);
		} else {
			ra.addFlashAttribute("msg", "회원가입 시 입력한 이메일 및 이름으로 진행해주세요.");
			mav.setViewName("redirect:/findId");
		}
		return mav;
	}

	// 유료결제 페이지
	@GetMapping("/pay")
	public ModelAndView pay() {
		return new ModelAndView("/member/pay");
	}
}
