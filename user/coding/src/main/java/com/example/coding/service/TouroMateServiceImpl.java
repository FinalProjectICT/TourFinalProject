package com.example.coding.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.coding.dao.TouroMateDAO;
import com.example.coding.domain.TouroMateVO;

@Service
public class TouroMateServiceImpl implements TouroMateService {

    private final TouroMateDAO TouromateDAO;

    // 생성자를 통한 의존성 주입
    @Autowired
    public TouroMateServiceImpl(@Qualifier("touroMateDAO") TouroMateDAO TouromateDAO){
        this.TouromateDAO = TouromateDAO;
    }

    @Override
    // 전체 게시물 리스트 메서드
    public List<TouroMateVO> getSelectedMateList( int page ) {
        int pageSize = 10;
        int offset = (page -1 ) * pageSize;
        RowBounds rowBounds = new RowBounds(offset, pageSize);
        
        // DAO를 통한 전체 게시물 리스트 가져오기
        return TouromateDAO.getSelectedMateList(rowBounds);
    }

   @Override
   // 검색어를 이용한 게시물 리스트 메서드
    public List<TouroMateVO> searchMateList(String searchKeyword, int page) {
        int pageSize = 10;
        int offset = (page - 1) * pageSize;
        RowBounds rowBounds = new RowBounds(offset, pageSize);

        // DAO를 통한 검색어에 맞는 게시물 리스트 가져오기
        return TouromateDAO.searchMateList(searchKeyword, rowBounds);
    }

    @Override
    // Touromate 리스트 게시판의 전체 페이지 수를 반환 메서드
    public int getTotalPages() {
        int totalMateCount = TouromateDAO.getTotalMateCount();
        int pageSize = 10;

        // 전체 게시물 수를 페이지 사이즈로 나누어 전체 페이지 수를 계산하여 반환
        return (int) Math.ceil((double) totalMateCount / pageSize);
    }
}