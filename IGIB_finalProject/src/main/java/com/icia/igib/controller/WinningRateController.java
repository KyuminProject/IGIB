package com.icia.igib.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.igib.dto.ChampionDto;
import com.icia.igib.service.WinningRateService;

@Controller
public class WinningRateController {

	@Autowired
	private WinningRateService winsvc;

	// 용별 승률 페이지 이동
	@GetMapping("/dragonWinning")
	public ModelAndView dragonWinning() {
		return new ModelAndView("winningRate/dragonWinning");
	}

	@PostMapping("/dragonWinning")
	@ResponseBody
	public Map<String, String> dragonWinning(@RequestParam String dtype) {
		Map<String, String> response = new HashMap<>();
		System.out.println("선택한 드래곤: " + dtype);

		String dwResultBlue = winsvc.getDragonWinningBlue(dtype);
		String dwResultRed = winsvc.getDragonWinningRed(dtype);
		response.put("dtype", dtype);
		response.put("dwResultBlue", dwResultBlue);
		response.put("dwResultRed", dwResultRed);

		return response;
	}

	// 공허 vs 용 페이지 이동
	@GetMapping("/hordeVsDragon")
	public ModelAndView hordeVsDragon() {
		return new ModelAndView("winningRate/hordeVsDragon");
	}

	@PostMapping("/winningHordeVsDragon")
	public ModelAndView winningHordeVsDragon(String tier, String team, String hordeOrDragon, RedirectAttributes ra) {
		System.out.println("공허 먼저 vs 용 먼저 승률 구하기 - /winningHordeVsDragon");
		System.out.println(tier + " : " + team + " : " + hordeOrDragon);
		ModelAndView mav = new ModelAndView();

		int totalCount = winsvc.getTotalCount(tier, team, hordeOrDragon);
		System.out.println(totalCount);
		if (totalCount > 0) {
			String result = winsvc.getWinningHordeVsDragon(tier, team, hordeOrDragon);
			System.out.println(result);
			mav.addObject("tier", tier);
			mav.addObject("team", team);
			mav.addObject("hordeOrDragon", hordeOrDragon);
			mav.addObject("hordeVsDragonResult", result);
		} else {
			String failure = "failure";
			mav.addObject("tier", tier);
			mav.addObject("team", team);
			mav.addObject("hordeOrDragon", hordeOrDragon);
			mav.addObject("hordeVsDragonResult", failure);
		}
		mav.setViewName("winningRate/hordeVsDragon");
		return mav;
	}
	
	// 라인별 궁합 승률 출력 
			@GetMapping("/laneWinning")
			public ModelAndView LaneWinning() {
				ModelAndView mav = new ModelAndView();
				List<ChampionDto> championName = winsvc.getChampionName();
				System.out.println(championName);
				
				mav.addObject("championName",championName);
				mav.setViewName("winningRate/laneWinning");
				return mav;
			}
			
		// 라인별 궁합 승률 구하기
			@PostMapping("/laneWinningRate")
			public ModelAndView laneWinningRate(String position1, String position2, String champion1, String champion2, RedirectAttributes ra) {
				System.out.println("라인 궁합 승률 구하기 - /laneWinningRate");
				System.out.println(position1 + " : " + champion1 +"/"+position2+ " : " + champion2);
				ModelAndView mav = new ModelAndView();
				List<ChampionDto> championName = winsvc.getChampionName();
				int laneTotalCount = winsvc.getLaneTotalCount(position1, position2, champion1, champion2);
				System.out.println(laneTotalCount);
				if (laneTotalCount > 0) {
					String result = winsvc.getLameWinningRate(position1, position2, champion1, champion2);
					System.out.println(result);
					mav.addObject("position1", position1);
					mav.addObject("position2", position2);
					mav.addObject("champion1", champion1);
					mav.addObject("champion2", champion2);
					mav.addObject("LaneWinningRate", result);
				} else {
					String failure = "failure";
					mav.addObject("position1", position1);
					mav.addObject("position2", position2);
					mav.addObject("champion1", champion1);
					mav.addObject("champion2", champion2);
					mav.addObject("LaneWinningRate", failure);
				}
				mav.addObject("championName",championName);
				mav.setViewName("winningRate/laneWinning");
				return mav;
			}
}
