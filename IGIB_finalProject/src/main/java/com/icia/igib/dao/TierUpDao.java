 package com.icia.igib.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.icia.igib.dto.ChampRecommendDto;
import com.icia.igib.dto.GoldDto;




@Mapper
public interface TierUpDao {

	List<GoldDto> GoldList(@Param("tier") String tier);

	List<Map<String, Object>> selectwardList(@Param("wardType") String wardType);

		List<ChampRecommendDto> ChampRecommendList(@Param("tier") String tier);

	List<ChampRecommendDto> CounterRecommendList(String tier, String champ);
	
}