package com.icia.igib.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.icia.igib.dto.MemberDto;

import jakarta.validation.Valid;

@Mapper
public interface MemberDao {

	MemberDto loginMember(@Param("mid") String mid, @Param("mpw") String mpw);

	MemberDto selectMemberInfo(String id);

	int insertMember_kakao(MemberDto member);

	int updateInfo(@Param("mid") String mid, @Param("mlolname") String mlolname, @Param("mloltag")String mloltag);

	String selectMemberIdCheck(String inputId);

	int insertMemberJoin(@Valid MemberDto member);

	int udateMemberPassword(String mid, String mpw);

	String selectMemberFindId(String mname, String memail);

	int selectCheckMember(String mid, String memail);

	int selectCheckMnameMember(String mname, String memail);

	int updateEmail(@Param("mid") String mid, @Param("memail") String memail);

}
