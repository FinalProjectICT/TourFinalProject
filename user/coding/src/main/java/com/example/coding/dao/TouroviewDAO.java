package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;

@Mapper
public interface TouroviewDAO {
    
    // 해당 키워드로 여행지 목록가져오기
    public List<TourVO> findByKeyword(TourVO vo);
    
    // 후기 게시판 작성 후 db 저장
    public void saveTouroview(TouroviewVO touroviewVO);

    // (detail페이지) db 값 불러오기
    public List<TouroviewVO> getTouroviewByUserId(String user_id);

    // 후기 게시판 수정
    public void updateTouroview(TouroviewVO touroviewVO);

    // 후기 게시판 삭제
    public void deleteTouroview(int touroviewNum);

    
    
}
