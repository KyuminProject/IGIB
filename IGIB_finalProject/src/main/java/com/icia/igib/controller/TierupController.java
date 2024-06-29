package com.icia.igib.controller;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.icia.igib.dto.ChampRecommendDto;
import com.icia.igib.dto.GoldDto;
import com.icia.igib.service.TierUpService;

@Controller
public class TierupController {

	@Autowired
	private TierUpService tierUpService;

	@PostMapping("/minuteGoldInfo")
	public ModelAndView MinuteGoldInfo(@RequestParam String tier, RedirectAttributes ra) throws JsonProcessingException {
		System.out.println("TierupController - MinuteGoldInfo");
		System.out.println("Requested tier: " + tier);

		List<GoldDto> goldDtos = tierUpService.getGoldInfoList(tier);

		// Convert goldDtos to JSON, extracting only the gold values
		ObjectMapper objectMapper = new ObjectMapper();
		List<List<Integer>> goldValuesList = goldDtos.stream().map(GoldDto::getGoldValues).collect(Collectors.toList());
		String goldValuesJson = objectMapper.writeValueAsString(goldValuesList);

		ModelAndView mav = new ModelAndView("tierUp/minuteGoldInfo"); // minuteGoldInfoPage는 뷰의 이름입니다.
		mav.addObject("goldDtos", goldDtos);
		mav.addObject("goldValuesJson", goldValuesJson); // JSON으로 변환된 데이터를 추가합니다.
		mav.addObject("tier", tier);

		if (goldDtos == null || goldDtos.isEmpty()) {
			System.out.println("No data found for tier: " + tier);
			ra.addFlashAttribute("msg", "아직 데이터가 집계되지 않았습니다. 며칠뒤 다시 시도해주세요");
			mav.setViewName("redirect:/minuteGold");

		} else {
			System.out.println("GoldDto retrieved: " + goldDtos);
			System.out.println("GoldValuesJson retrieved: " + goldValuesJson);
		}

		return mav;
	}
	
	 @PostMapping("/sightScore")
	    @ResponseBody
	    public Map<String, List<?>> getSpellData(@RequestParam String wardType) {
	        return tierUpService.getwardData(wardType);
	    }
	 
		@GetMapping("/champRecommend")
		public ModelAndView champRecommend() {
			return new ModelAndView("tierUp/champRecommend");
		}
		
		@ResponseBody //ajax에서 값넘길때 사용
		@GetMapping("/champRecommendInfo")
		public String champRecommendInfo(String tier) throws JsonProcessingException {
			System.out.println(tier);
			
			ObjectMapper objectMapper = new ObjectMapper();
			
			List<ChampRecommendDto> ChampRecommendDto = tierUpService.getChampRecommendDto(tier);
			String ChampRecommendJson = objectMapper.writeValueAsString(ChampRecommendDto); //json 형식으로 변환
			
			System.out.println(ChampRecommendJson);
			return ChampRecommendJson; 
		}
		
		@ResponseBody //ajax에서 값넘길때 사용
		@GetMapping("/counterRecommendInfo")
		public String counterRecommendInfo(String tier, String champ) throws JsonProcessingException {
			System.out.println(tier);
			System.out.println(champ);
			
			ObjectMapper objectMapper = new ObjectMapper();
			
			List<ChampRecommendDto> ChampRecommendDto = tierUpService.getCounterRecommendDto(tier,champ);
			System.out.println(ChampRecommendDto);
			String ChampRecommendJson = objectMapper.writeValueAsString(ChampRecommendDto); //json 형식으로 변환
			System.out.println(ChampRecommendJson);
			
			return ChampRecommendJson; 
		}

}
