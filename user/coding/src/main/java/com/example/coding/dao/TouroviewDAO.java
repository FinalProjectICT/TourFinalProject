package com.example.coding.dao;

import java.util.List;

import com.example.coding.domain.TouroviewVO;

public interface TouroviewDAO {
    
    // TouroviewVO 전체 가져오기
    List<TouroviewVO> getAllTouroviewVOs();

    // 해당 키워드로 여행지 목록가져오기
    List<TouroviewVO> searchTouroviewVOs(String keyword);
    
    // 후기 게시판 입력 
    void insertTouroview(TouroviewVO touroview);
    
    
}
