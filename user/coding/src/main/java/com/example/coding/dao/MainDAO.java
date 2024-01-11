package com.example.coding.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.MainVO;
import com.example.coding.domain.UserVO;

@Mapper
public interface MainDAO {

  public MainVO preferLoc(UserVO vo);

  
}