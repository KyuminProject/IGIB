package com.icia.igib.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface roamingkillDao {
    String selectJungleKill(@Param("red_postion") int red_postion,@Param("blue_postion") int blue_postion);
    
    String selectOtherKill(@Param("red_postion") int red_postion,@Param("blue_postion") int blue_postion);
}