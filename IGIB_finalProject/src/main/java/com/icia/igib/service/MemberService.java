package com.icia.igib.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.MemberDao;
import com.icia.igib.dto.MemberDto;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Service
public class MemberService {

	@Autowired
	private MemberDao mdao;
	@Autowired
	private JavaMailSender javaMailSender;

	// 로컬 로그인
	public MemberDto getLoginMemberInfo(String mid, String mpw) {
		System.out.println("MemberService - getLoginMemberInfo()호출");
		MemberDto login = mdao.loginMember(mid, mpw);
		return login;
	}

	// 카카오 로그인
	public MemberDto getLoginMemberInfo(String id) {
		System.out.println("Memberservice - getLoginMemberInfo_kakao 호출");
		return mdao.selectMemberInfo(id);
	}

	// 카카오 회원가입
	public int registMember_kakao(MemberDto member) {
		System.out.println("Memberservice - registMember_kakao 호출");
		return mdao.insertMember_kakao(member);
	}

	// 내정보 변경
	public int updateInfo(String mid, String mlolname, String mloltag) {
		System.out.println("SERVICE - updatePw");
		int result = mdao.updateInfo(mid, mlolname,mloltag);
		return result;
	}

	// 아이디 중복 확인
	public String memberIdCheck(String inputId) {
		System.out.println("MemberService - memberIdCheck() 호출");
		String id = mdao.selectMemberIdCheck(inputId);
		System.out.println(id);
		return mdao.selectMemberIdCheck(inputId);
	}

	// 이메일 인증 번호 전송
	public String sendEmailCode(String inputEmail, HttpSession session) {
		System.out.println("MemberService - sendEmailCode() 호출");
		// 랜덤한 인증 번호 생성
		String randomCode = generateRandomCode();
		// 이메일 전송
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(inputEmail);
		message.setSubject("인공일보 이메일 인증 번호");
		message.setText("인증 코드 : " + randomCode);
		javaMailSender.send(message);
		// session에 인증번호 저장
		session.setAttribute("sentCode", randomCode);
		return randomCode;
	}

	// 인증번호 생성
	private String generateRandomCode() {
		// 랜덤한 6자리 숫자 생성. 범위 : 100000 ~ 999999
		Random random = new Random();
		int code = 100000 + random.nextInt(900000);
		System.out.println("생성한 인증 번호 : " + code);
		return String.valueOf(code);
	}

	// 로컬 회원가입
	public int memberJoin(@Valid MemberDto member) {
		System.out.println("MemberService - memberJoin() 호출");
		int joinInsert = mdao.insertMemberJoin(member);
		return joinInsert;
	}

	// 비밀번호 변경
	public int changePw(String mid, String mpw) {
		int changePwUpdate = mdao.udateMemberPassword(mid, mpw);
		return changePwUpdate;
	}

	// 아이디 찾기
	public String findId(String mname, String memail) {
		String findMid = mdao.selectMemberFindId(mname, memail);
		return findMid;
	}

	public int checkMidAndMemail(String mid, String memail) {
		return mdao.selectCheckMember(mid, memail);
	}

	public int checkMnemeAndMemail(String mname, String memail) {
		return mdao.selectCheckMnameMember(mname, memail);
	}

	// 이메일 변경
	public int changeEmail(String mid, String memail) {
		return mdao.updateEmail(mid, memail);
	}
}
