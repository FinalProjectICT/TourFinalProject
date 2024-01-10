package com.example.coding.service;

import java.util.List;

import com.example.coding.domain.AdminVO;

public interface AdminService {

    List<AdminVO> tourList();
    AdminVO tourdetail(AdminVO vo); 
}
