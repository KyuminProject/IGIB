package com.icia.igib.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.icia.igib.dto.ItemDto;

@Mapper
public interface LolInfoDao {

	List<Map<String, Object>> selectChampListAll();

	List<Map<String, Object>> selectChampListByPosition(String position);

	List<Map<String, Object>> selectChampRankingAll(String tier);

	List<Map<String, Object>> selectChampRankingByPosition(String tier, String position);

	Map<String, Object> selectChampInfo(String cid);

	List<ItemDto> selectItemInfo();

	// 챔피언과 아이템의 사용 정보를 가져오는 메서드
	Map<String, Object> getItemUsageData(@Param("championName") String championName, @Param("itemId") int itemId);

}
