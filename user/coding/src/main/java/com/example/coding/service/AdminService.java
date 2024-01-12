package com.example.coding.service;

import java.util.List;

import com.example.coding.domain.AdminVO;

public interface AdminService {

    // 여행지 
    List<AdminVO> tourList();
    AdminVO tourdetail(AdminVO vo); 


    public int deleteNum(AdminVO vo);
    public int tourInsert(AdminVO vo);



    // 유저
    List<AdminVO> userList();
    
    // 후기 게시판 
    List<AdminVO> touroviewList();

    // 후기 게시판 디테일
    AdminVO touroViewNum(AdminVO vo); 

    
    
}
