package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.AdminVO;

@Mapper
public interface AdminDAO {

    public List<AdminVO> tourList();

    public AdminVO tourdetail(AdminVO vo);
    
}
