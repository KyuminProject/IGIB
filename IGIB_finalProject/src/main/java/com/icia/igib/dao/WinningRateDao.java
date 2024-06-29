package com.icia.igib.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.icia.igib.dto.ChampionDto;

@Mapper
public interface WinningRateDao {

	String selectWinningHordeVsDragon(String tier, String team, String hordeOrDragon);

	int selectTotalCount(String tier, String team, String hordeOrDragon);

	// 용별 승률
	String selectWinningDragonBlue(String dtype);

	// 용별 승률
	String selectWinningDragonRed(String dtype);
	
	List<ChampionDto> selectChampionName();

	int selectLaneTotalCount(String position1, String position2, String champion1, String champion2);

	String selectLaneWinningRate(String position1, String position2, String champion1, String champion2);


}
