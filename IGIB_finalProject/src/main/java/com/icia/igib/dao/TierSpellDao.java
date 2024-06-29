package com.icia.igib.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TierSpellDao {
    List<Map<String, Object>> selectSpellUsage(int spnumber);
}
