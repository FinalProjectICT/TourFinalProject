package com.example.coding.service;


import java.util.Collections;
import java.util.List;

import org.hibernate.mapping.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.coding.dao.TouroviewDAO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;


@Service
public class TouroviewServiceImpl implements TouroviewService{

    @Autowired
    private final TouroviewDAO touroviewDAO;

    public TouroviewServiceImpl(TouroviewDAO touroviewDAO) {
        this.touroviewDAO = touroviewDAO;
    }

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

    // 게시물 목록 불러오기
    public List<TouroviewVO> getTouroviewByUserId(String user_id){
        try{
            return touroviewDAO.getTouroviewByUserId(user_id);
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList(); // 예외 발생 시 빈 리스트 반환 또는 적절한 처리
        }
    }


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
