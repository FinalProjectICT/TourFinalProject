package com.example.coding.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.example.coding.domain.TouroMateVO;

@Repository // Spring Data Repository
@Primary
public class TouroMateDAOImpl implements TouroMateDAO {

    private final SqlSessionTemplate sqlSession;

    // 생성자 -> 의존성 주입
    public TouroMateDAOImpl(SqlSessionTemplate sqlSession){
        this.sqlSession = sqlSession;
    }

    // 전체 게시물 리스트를 가져오는 메서드
    @Override
    public List<TouroMateVO> getSelectedMateList(RowBounds rowBounds) {
        // MyBatis를 통한 결과를 반환
        return sqlSession.selectList("com.example.coding.dao.TouroMateMapper.getSelectedMateList");
    }

    // 검색어를 통한 게시물 검색 메서드
    @Override
    public List<TouroMateVO> searchMateList(String searchKeyword, RowBounds rowBounds) {
      
        return sqlSession.selectList("com.example.coding.dao.TouroMateMapper.searchMateList", searchKeyword);
    }

    // 전체 게시물 수를 반환 메서드
    @Override
    public int getTotalMateCount() {

        return sqlSession.selectOne("com.example.coding.dao.TouroMateDAO.getTotalMateCount");
    }
    
}