package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.AdminVO;

@Mapper
public interface AdminDAO {

    // 여행지 관련
    public List<AdminVO> tourList();

    public AdminVO tourdetail(AdminVO vo);

    public int deleteNum(AdminVO vo );

    public int tourInsert(AdminVO vo);

    
    // 회원 리스트 출력
    public List<AdminVO> userList();

    //후기 게시판 리스트 추렭
    public List<AdminVO> touroviewList();
    
}