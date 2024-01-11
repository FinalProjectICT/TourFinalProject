package com.example.coding.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.BMHVO;
import com.example.coding.domain.MainVO;

@Mapper
public interface MainDAO {

  public MainVO preferLoc(BMHVO vo);

  
}