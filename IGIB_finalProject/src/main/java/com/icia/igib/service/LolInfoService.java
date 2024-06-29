package com.icia.igib.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.LolInfoDao;
import com.icia.igib.dto.ItemDto;

@Service
public class LolInfoService {

	@Autowired
	LolInfoDao lolInfodao;

	public List<Map<String, Object>> getChampListAll() {
		System.out.println("LolInfoService - /getChampListAll");
		return lolInfodao.selectChampListAll();
	}

	public List<Map<String, Object>> getChampListByPosition(String position) {
		System.out.println("LolInfoService - /getChampListByPosition");
		return lolInfodao.selectChampListByPosition(position);
	}

	public List<Map<String, Object>> getChampRankingAll(String tier) {
		System.out.println("LolInfoService - /getChampRankingAll");
		return lolInfodao.selectChampRankingAll(tier); 
	}

	public List<Map<String, Object>> getChampRankingByPosition(String tier, String position) {
		System.out.println("LolInfoService - /getChampRankingByPosition");
		return lolInfodao.selectChampRankingByPosition(tier,position); 
	}

	public Map<String, Object> getChampInfo(String cid) {
        System.out.println("LolInfoService - /getChampInfo");
        return lolInfodao.selectChampInfo(cid);
    }

	public List<ItemDto> getItemsInfo() {
		System.out.println("LolInfoService - /getItemsInfo");
		return lolInfodao.selectItemInfo();
	}

	// 챔피언과 아이템의 사용 정보를 가져오는 메서드 추가
	public Map<String, Object> getItemUsageData(String championName, int itemId) {
		System.out.println("LolInfoService - /getItemUsageData for Champion: " + championName + ", Item ID: " + itemId);

		// DAO를 통해 매퍼에서 정의한 SQL 쿼리 호출
		Map<String, Object> itemUsageData = lolInfodao.getItemUsageData(championName, itemId);
			// 필요한 추가 로직이 있다면 여기서 수행할 수 있습니다.

		return itemUsageData;
	}
}
