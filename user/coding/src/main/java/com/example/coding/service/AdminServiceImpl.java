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

    @Override
    public int deleteNum(AdminVO vo) {
        int result = adminDAO.deleteNum(vo);
        return result;
    }

    @Override
    public int tourInsert(AdminVO vo) {

        return adminDAO.tourInsert(vo);
    }


    // 유저 리스트 출력
    public List<AdminVO> userList() {
    List<AdminVO> userlist = adminDAO.userList();
    System.out.println("확인: " + userlist.size());
    return userlist;
    }

    // 후기 게시판 리스트 출력
    public List<AdminVO> touroviewList() {
    List<AdminVO> viewList = adminDAO.touroviewList();
    System.out.println("확인: " + viewList.size());
    return viewList;
    }
    
    @Override
    public AdminVO touroViewNum(AdminVO vo) {
        return adminDAO.touroViewNum(vo);
    }

    
}
