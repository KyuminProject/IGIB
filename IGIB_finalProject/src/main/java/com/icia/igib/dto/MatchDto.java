package com.icia.igib.dto;

import lombok.Data;

@Data
public class MatchDto {
	private String mcid;
	private int mcduration;
	private String mcgver;
	private String mcrdganame;
	private String mcrdtagline;
	private int mcsummonerlevel;
	private int mcparticipantid;
	private int mchampionid;
	private String mchampionname;
	private int mcchampexperience;
	private String mcteamposition;
	private int mcteamid;
	private int mcwin;
	private int mckills;
	private int mcdeaths;
	private int mcassists;
	private int mctotalddchampions;
	private int mctotaldtaken;
	private String mctier;
}
