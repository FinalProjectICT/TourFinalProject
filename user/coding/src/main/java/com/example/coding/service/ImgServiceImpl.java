package com.example.coding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.ImgDAO;
import com.example.coding.domain.ImgVO;

@Service
public class ImgServiceImpl implements ImgService {

    @Autowired
    ImgDAO imgDAO;

    @Override
    public void     insertFile(ImgVO vo){
        imgDAO.insertFile(vo);
    };
    
    @Override
    public ImgVO   selectFile(ImgVO vo){
        return imgDAO.selectFile(vo);
    };

    @Override
    public Long     selectId(){
        return imgDAO.selectId();
    };
}
