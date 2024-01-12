package com.example.coding.dao;

import com.example.coding.domain.TouroMateVO;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
/*
  * RowBounds
    - MyBatis 라이브러리(?)
    - 전체 레코드에서 원하는 범위의 레코드만을 가져올 수 있음.
    - MyBatis를 이용하여, 특정 개수 만큼의 레코드를 건너띄게 하는 속성이 있음
 */

@Mapper // MyBatis Mapper 인터페이스
public interface TouroMateDAO {

    //여행 친구 찾기 게시글 리스트를 가져오는 메서드, RowBounds를 사용하여 페이징 처리 범위 지정
    List<TouroMateVO> getSelectedMateList(RowBounds rowBounds);

    // searchKeyword를 사용하여 제목을 기준으로 필터링
    List<TouroMateVO> searchMateList(@Param("searchKeyword") String searchKeyword, RowBounds rowBounds);

    // 게시글 페이지 네이션 중 전체 게시글 반환 메서드
    int getTotalMateCount();

    // 게시글 작성 페이지 insert
    void registerCourse(TouroMateVO touroMateVO);
}
