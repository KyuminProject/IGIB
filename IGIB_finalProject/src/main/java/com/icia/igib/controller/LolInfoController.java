package com.icia.igib.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.sql.Clob;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.icia.igib.dto.ChampionDto;
import com.icia.igib.dto.ItemDto;
import com.icia.igib.service.LolInfoService;
import com.icia.igib.service.WinningRateService;

@Controller
public class LolInfoController {

	@Autowired
	WinningRateService winsvc; // 챔피언 이름 가져오기 서비스

	@Autowired
	LolInfoService lolInfosvc;

	// 챔피언 정보 페이지
	@GetMapping("/champions")
	public ModelAndView champInfo() {
		System.out.println("챔피언 정보 페이지 이동 - /champions");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("lolInfo/champions");
		return mav;
	}

	// 챔피언 리스트 - 전체
	@GetMapping("/getChampListAll")
	public @ResponseBody String getChampListAll() {
		System.out.println("챔피언 정보 페이지 - 챔피언 리스트 조회 -/getChampListAll");
		List<Map<String, Object>> champListAll = lolInfosvc.getChampListAll();
		System.out.println("champListAll : " + champListAll);

		return new Gson().toJson(champListAll);

	}

	// 챔피언 리스트 - 포지션별
	@GetMapping("/getChampListByPosition")
	public @ResponseBody String getChampListByPosition(String position) {
		System.out.println("챔피언 정보 페이지 - 챔피언 리스트 조회 -/getChampListByPosition");
		System.out.println("positon : " + position);

		// 전체 게임에서 해당 포지션을 선택한 비율이 30% 이상인 챔피언들만 조회
		List<Map<String, Object>> champListByPostion = lolInfosvc.getChampListByPosition(position);
		System.out.println(champListByPostion);

		return new Gson().toJson(champListByPostion);

	}

	// 챔피언 랭킹 - 전체
	@GetMapping("/getChampRankingAll")
	public @ResponseBody String getChampRankingAll(String tier) {
		System.out.println("챔피언 정보 페이지 - 챔피언 랭킹 조회 -/getChampRankingAll");
		System.out.println("tier : " + tier);

		/*
		 * 티어 1티어 : 상위 10%까지 2티어 : 상위 40%까지 3티어 : 나머지 랭킹 티어 -> 승률 40% + 픽률 60% -> 승률 ->
		 * 픽률
		 */
		List<Map<String, Object>> champRankingAll = lolInfosvc.getChampRankingAll(tier);
		System.out.println(champRankingAll);

		return new Gson().toJson(champRankingAll);
	}

	// 챔피언 랭킹 - 포지션별
	@GetMapping("/getChampRankingByPosition")
	public @ResponseBody String getChampRankingByPosition(String tier, String position) {
		System.out.println("챔피언 정보 페이지 - 챔피언 랭킹 조회 -/getChampRankingByPosition");
		System.out.println(tier + " : " + position);

		List<Map<String, Object>> champRankingByPosition = lolInfosvc.getChampRankingByPosition(tier, position);
		System.out.println(champRankingByPosition);

		return new Gson().toJson(champRankingByPosition);

	}

	// 챔피언 상세 정보 
	@GetMapping("/champion")
	public ModelAndView champDetailInfo(@RequestParam("cid") String cid) {
		System.out.println("챔피언 상세 정보 페이지 이동 - /champDetailInfo");
		ModelAndView mav = new ModelAndView();
		System.out.println("cid : " + cid);

		Map<String, Object> championInfo = lolInfosvc.getChampInfo(cid);
		System.out.println(championInfo);

		// Convert CLOB to String for CCONTENT only
		if (championInfo.get("CCONTENT") instanceof Clob) {
			Clob clob = (Clob) championInfo.get("CCONTENT");
			StringBuilder sb = new StringBuilder();
			try (Reader reader = clob.getCharacterStream(); BufferedReader br = new BufferedReader(reader)) {
				String line;
				while ((line = br.readLine()) != null) {
					sb.append(line);
				}
			} catch (SQLException | IOException e) {
				e.printStackTrace();
			}
			championInfo.put("CCONTENT", sb.toString());
		}

		mav.addObject("champInfo", championInfo);
		mav.setViewName("lolInfo/champion");
		return mav;
	}

	// 아이템별 상성 선택률(1) 정보 페이지
	@GetMapping("/itemSynergy")
	public @ResponseBody ModelAndView getItemsListAll() {
		ModelAndView mav = new ModelAndView();
		System.out.println("챔피언 사진 가져오기 /getChampionName");

		List<ChampionDto> championName = winsvc.getChampionName();
		// System.out.println(championName);
		mav.addObject("championName", championName);

		System.out.println("아이템 사진 가져오기 /getItemsListAll");
		List<ItemDto> itemSynergy = lolInfosvc.getItemsInfo();
		// System.out.println(itemSynergy);

		mav.addObject("itemSynergy", itemSynergy);
		mav.setViewName("lolInfo/itemSynergy");
		return mav;
	}

	// 추가할 엔드포인트
	@GetMapping("/getItemListAll")
	public @ResponseBody String getItemListAll() {
		System.out.println("아이템 정보 페이지 - 아이템 리스트 조회 - /getItemListAll");
		List<ItemDto> itemListAll = lolInfosvc.getItemsInfo();
		// System.out.println("itemListAll : " + itemListAll);

		return new Gson().toJson(itemListAll);
	}

	// 새로운 엔드포인트: 특정 챔피언과 아이템의 사용 정보를 가져오는 메서드
	@PostMapping("/getItemUsageByChampionAndItem")
	public @ResponseBody Map<String, Object> getItemUsageByChampionAndItem(@RequestParam("championName") String championName,
	                                                                       @RequestParam("itemId") int itemId) {

	    System.out.println("Fetching usage data for Champion: " + championName + ", Item ID: " + itemId);

	    // 서비스에서 챔피언과 아이템에 대한 사용 정보를 가져옵니다.
	    Map<String, Object> itemUsageData = lolInfosvc.getItemUsageData(championName, itemId);

	    System.out.println(itemUsageData);

	    // JSON 형식으로 반환
	    return itemUsageData;
	}

}
