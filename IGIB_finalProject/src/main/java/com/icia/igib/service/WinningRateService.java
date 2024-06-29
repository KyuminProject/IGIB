package com.icia.igib.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.WinningRateDao;
import com.icia.igib.dto.ChampionDto;

@Service
public class WinningRateService {

	@Autowired
	private WinningRateDao windao;

	public String getWinningHordeVsDragon(String tier, String team, String hordeOrDragon) {
		System.out.println("WinningService - /getWinningHordeVsDragon호출");
		return windao.selectWinningHordeVsDragon(tier, team, hordeOrDragon);
	}

	public int getTotalCount(String tier, String team, String hordeOrDragon) {
		System.out.println("WinningService - /getTotalCount 호출");
		return windao.selectTotalCount(tier, team, hordeOrDragon);
	}

	public String getDragonWinningBlue(String dtype) {
		System.out.println("WinningService - /getTDragonWinning 호출");
		return windao.selectWinningDragonBlue(dtype);
	}

	public String getDragonWinningRed(String dtype) {
		System.out.println("WinningService - /getDragonWinning200 호출");
		return windao.selectWinningDragonRed(dtype);
	}
	
	public List<ChampionDto> getChampionName() {
		System.out.println("WinningService - /getChampionName 호출");
		return windao.selectChampionName();
	}

	public int getLaneTotalCount(String position1, String position2, String champion1, String champion2) {
		System.out.println("WinningService - /getLaneTotalCount 호출");
		return windao.selectLaneTotalCount(position1, position2, champion1, champion2);
	}

	public String getLameWinningRate(String position1, String position2, String champion1, String champion2) {
		System.out.println("WinningService - /getLameWinningRate호출");
		return windao.selectLaneWinningRate(position1, position2, champion1,champion2);
	}

}
