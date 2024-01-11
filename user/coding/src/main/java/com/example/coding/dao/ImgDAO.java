package com.example.coding.dao;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.ImgVO;

@Mapper
public interface ImgDAO {

    public void     insertFile(ImgVO vo);
    public ImgVO   selectFile(ImgVO vo);
    public Long     selectId();
    
}