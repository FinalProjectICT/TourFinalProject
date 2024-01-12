package com.example.coding.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.multipart.MultipartFile;

import com.example.coding.domain.ImgVO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;

public interface TouroviewService {
    
    // 해당 키워드로 여행지 목록가져오기
    public List<TourVO> findByKeyword(String keyword);
    
    // 후기 게시판 작성 후 db 저장
    // public String insertTouroview(TouroviewVO touroview);

    // 후기 게시판 이미지 db 저장
    // public void saveTouroviewWithImages(TouroviewVO touroviewVO, List<MultipartFile> imagFiles);

} 
