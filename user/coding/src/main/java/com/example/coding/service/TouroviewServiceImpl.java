package com.example.coding.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.TouroviewDAO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;


@Service
public class TouroviewServiceImpl implements TouroviewService{

    @Autowired
    private final TouroviewDAO touroviewDAO;

    public TouroviewServiceImpl(TouroviewDAO touroviewDAO) {
        this.touroviewDAO = touroviewDAO;
    }

    // ----------------------------------------------------- touroview_insert
    // 여행지 검색
    @Override
    public List<TourVO> findByKeyword(TourVO vo) {
        try {
            // 여행지 검색 로직을 수행
            // ...
            List<TourVO> result = touroviewDAO.findByKeyword(vo);
            // System.err.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("여행지 검색 중 오류 발생", e);
        }
    }
    
    // 후기 게시물 입력
    @Override
    public void saveTouroview(TouroviewVO touroviewVO){
        // 여행 후기 데이터 저장하는 DAO 메소드 호출
        touroviewDAO.saveTouroview(touroviewVO);
    }


    // ----------------------------------------------------- touroview_list
    // 게시물 목록 불러오기
    // (list 페이지) 페이징
    @Override
    public List<TouroviewVO> getTouroviewList(String searchKeyword, int page, int size){
        int start = page * size;
        return touroviewDAO.getTouroviewList(searchKeyword, start, size);
    }

    @Override
    public int getTotalPages(int size){
        // 전체 게시물 수 가져오기
        int getTotalPages = touroviewDAO.getTotalPages();

        // 전체 페이지 수 계산 
        int totalPages = (int) Math.ceil((double) getTotalPages / size);
         
        return totalPages;
    }

    // ----------------------------------------------------- touroview_detail
    // 게시물 id로(TouroviewVO) 게시물 가져오기(detail)
    @Override
    public TouroviewVO getTouroviewById(int touroview_num){

        return touroviewDAO.getTouroviewById(touroview_num);
    }



    // 여행지(TourVO) 번호를 이용하여 해당 여행지 정보를 가져오기
    @Override
   public TourVO getTourByTouroviewId(int touroview_num){
        return touroviewDAO.getTourByTouroviewId(touroview_num); 
   }
    


    // 작성자(사용자) 정보 가져오기
    @Override
    public UserVO getUserByTouroviewId(int touroview_num){
        return touroviewDAO.getUserByTouroviewId(touroview_num);
    }

    // 후기 게시물 리뷰 정보 가져오기
    @Override
    public TouroviewReviewVO getTouroviewReviewByTouroviewId(int touroview_num){
        return touroviewDAO.getTouroviewReviewByTouroviewId(touroview_num);
    }



    // ----------------------------------------------------- touroview_update_delete
    // 후기 게시물 수정
    @Override
    public void updateTouroview(TouroviewVO touroviewVO){
        touroviewDAO.updateTouroview(touroviewVO);
    }

    // 후기 게시물 삭제
    @Override
    public void deleteTouroview(int touroviewNum){
        touroviewDAO.deleteTouroview(touroviewNum);
    }

    

}
