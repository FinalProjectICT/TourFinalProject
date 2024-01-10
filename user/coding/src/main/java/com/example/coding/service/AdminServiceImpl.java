package com.example.coding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.AdminDAO;
import com.example.coding.domain.AdminVO;

@Service
public class AdminServiceImpl implements AdminService {


    @Autowired
    private AdminDAO adminDAO;



    public List<AdminVO> tourList() {
        List<AdminVO> list = adminDAO.tourList();
        System.out.println("확인: " + list.size());
        return list;
    }

    @Override
    public AdminVO tourdetail(AdminVO vo) {
        return adminDAO.tourdetail(vo);
    }
    
}
