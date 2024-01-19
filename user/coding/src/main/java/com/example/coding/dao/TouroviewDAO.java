package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springdoc.core.converters.models.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;

@Mapper
public interface TouroviewDAO {
    
    // 해당 키워드로 여행지 목록가져오기
    public List<TourVO> findByKeyword(TourVO vo);
    
    // 후기 게시판 작성 후 db 저장
    public void saveTouroview(TouroviewVO touroviewVO);

    
    // 후기 게시판 수정
    public void updateTouroview(TouroviewVO touroviewVO);
    
    // 후기 게시판 삭제
    public void deleteTouroview(int touroviewNum);
    
    // ----------------------------- list 페이지
    // (list 페이지) 페이징, 목록
    public List<TouroviewVO> getTouroviewList(@Param("searchKeyword") String searchKeyword, int page, int size);

    // 목록 전체 가져오기
    public int getTotalPages();

    // ------------------------------ touroview_detail
    // 게시물 id로 touroview 게시물 가져오기
    public TouroviewVO getTouroviewById(int touroview_num);

    // 여행지 번호를 이용하여 해당 여행지 정보를 가져오기
    public TourVO getTourByTouroviewId(int touroview_num);
}
