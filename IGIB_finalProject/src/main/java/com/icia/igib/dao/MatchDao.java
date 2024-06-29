package com.icia.igib.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.icia.igib.dto.MatchDto;

@Mapper
public interface MatchDao {

	MatchDto findUserInfo(@Param("tag") String tag, @Param("nickname") String nickname);

}
