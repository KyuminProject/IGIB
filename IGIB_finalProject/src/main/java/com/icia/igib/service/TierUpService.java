package com.icia.igib.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.TierUpDao;
import com.icia.igib.dto.ChampRecommendDto;
import com.icia.igib.dto.GoldDto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TierUpService {

	@Autowired
	private TierUpDao tdao;

	public List<GoldDto> getGoldInfoList(String tier) {
		System.out.println("TierUpService - getGoldInfoList");
		List<GoldDto> goldEntities = tdao.GoldList(tier);
		System.out.println(goldEntities);

		return goldEntities; // 그냥 DAO에서 가져온 리스트를 반환합니다.
	}

	public Map<String, List<?>> getwardData(String wardType) {
		List<Map<String, Object>> wardDataList = tdao.selectwardList(wardType);
		// 값이 가져와진다.
		System.out.println(wardDataList);

		List<String> tierList = new ArrayList<>();
		List<Double> tierCountList = new ArrayList<>();
		List<Double> averageScoreList = new ArrayList<>();

		for (Map<String, Object> wardData : wardDataList) {
			String wtier = (String) wardData.get("WTIER");

			BigDecimal tierCountBigDecimal = (BigDecimal) wardData.get("TIER_COUNT");
			Long tierCount = tierCountBigDecimal.longValue();

			BigDecimal avgScoreBigDecimal = (BigDecimal) wardData.get("AVG_SCORE");
			Long avgScore = avgScoreBigDecimal.longValue(); // BigDecimal을 Long으로 변환

			// BigDecimal을 double로 변환
			double averageScore = avgScoreBigDecimal.doubleValue();
			double tiersCount = tierCountBigDecimal.doubleValue();

			tierList.add(wtier);
			tierCountList.add(tiersCount);
			averageScoreList.add(averageScore);
		}

		System.out.println(tierList);
		System.out.println(tierCountList);
		System.out.println(averageScoreList);

		Map<String, List<?>> result = new HashMap<>();
		result.put("tiers", tierList);
		result.put("tierCounts", tierCountList);
		result.put("averageScores", averageScoreList);

		return result;
	}

	public List<ChampRecommendDto> getChampRecommendDto(String tier) {
		System.out.println("TierUpService - getChampRecommendDto");
		List<ChampRecommendDto> champRecommendEntities = tdao.ChampRecommendList(tier);
		System.out.println(champRecommendEntities);
		return champRecommendEntities;
	}

	public List<ChampRecommendDto> getCounterRecommendDto(String tier, String champ) {
		System.out.println("TierUpService - getcounterRecommendDto");
		List<ChampRecommendDto> counterRecommendEntities = tdao.CounterRecommendList(tier, champ);
		System.out.println(counterRecommendEntities);
		return counterRecommendEntities;
	}
}
