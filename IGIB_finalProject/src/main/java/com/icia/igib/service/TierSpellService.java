package com.icia.igib.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.igib.dao.TierSpellDao;

@Service
public class TierSpellService {

    @Autowired
    private TierSpellDao tierSpellDao;

    public Map<String, List<?>> getSpellData(int spnumber) {
        List<Map<String, Object>> spellDataList = tierSpellDao.selectSpellUsage(spnumber);
        // 값이 가져와진다.
        System.out.println(spellDataList);
        
        List<String> tierList = new ArrayList<>();
        List<Integer> spellList = new ArrayList<>();
        List<Double> countList = new ArrayList<>(); // countList를 Double로 변경
        List<Integer> totalList = new ArrayList<>();

        for (Map<String, Object> spellData : spellDataList) {
            String mctier = (String) spellData.get("MCTIER");
            BigDecimal spellBigDecimal = (BigDecimal) spellData.get("SPELL");
            BigDecimal spellCountBigDecimal = (BigDecimal) spellData.get("SPELL_COUNT");
            BigDecimal TOTALGAMEBigDecimal = (BigDecimal) spellData.get("TOTAL_GAMES");

            // BigDecimal을 int로 변환
            Integer spell = spellBigDecimal.intValue();
            Integer spellCount = spellCountBigDecimal.intValue();
            Integer totalgame = TOTALGAMEBigDecimal.intValue();

            tierList.add(mctier);
            spellList.add(spell);
            totalList.add(totalgame);

            // countList에 (counts/total)*100 값을 추가
            double percentage = (spellCount.doubleValue() / totalgame) * 100;
            countList.add(percentage);
        }


        System.out.println(tierList);
        System.out.println(spellList);
        System.out.println(countList);
        System.out.println(totalList);

        Map<String, List<?>> result = new HashMap<>();
        result.put("tiers", tierList);
        result.put("spells", spellList);
        result.put("counts", countList);
        result.put("total", totalList);

        return result;
    }
}
