package com.example.coding.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.coding.dao.TouroMateDAO;
import com.example.coding.domain.TouroMateChatUserVO;
import com.example.coding.domain.TouroMateChatVO;
import com.example.coding.domain.TouroMateVO;
import com.example.coding.domain.UserVO;

import jakarta.transaction.Transactional;

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

    // 게시글 작성 페이지 insert
    @Override
    public void registerCourse(TouroMateVO touroMateVO) {
        
        TouromateDAO.registerCourse(touroMateVO);
    }

    // 게시글 detail 페이지
    @Override
    public TouroMateVO getTouroMateById(int touro_mate_num) {
        
        return TouromateDAO.getTouroMateById(touro_mate_num);
    }

    //여행지 정보 가져오기
    @Override
    public List<TouroMateVO> getTravelPlaces(int touro_mate_num) {
        
        return TouromateDAO.getTravelPlaces(touro_mate_num);
    }

    // 게시글 작성자 정보 가져오기
    @Override
    public UserVO getAuthorInfo(String user_id) {
        
        return TouromateDAO.getAuthorInfo(user_id);
    }

    @Transactional
    @Override
    public void registerTouroMateAndChat(TouroMateVO touroMateVO) {
        TouromateDAO.registerTouroMateAndChat(touroMateVO);
        TouromateDAO.registerTouroMateChat(touroMateVO);
    }

    // 채팅 참가하기 버튼을 눌렀을 때, tour_mate_chat_user 테이블에 값 저장
    @Transactional
    @Override
    public String joinChat(String user_id, int touro_mate_num) {
        String chat_num = String.valueOf(touro_mate_num);

        // 테이블에 해당 사용자와 채팅방이 존재하는지 확인
        int userCountInChat = TouromateDAO.checkUserInChat(user_id, chat_num);

        try {
            if (userCountInChat == 0) {
                return "정원에 도달했습니다";
            }

            int currentChatUsers = TouromateDAO.getCurrentChatUsers(touro_mate_num);
            int maxChatUsers = TouromateDAO.getMaxChatUsers(touro_mate_num);

            // 채팅방이 꽉 찼는지 확인
            if (currentChatUsers < maxChatUsers) {
                TouroMateChatUserVO chatUserVO = new TouroMateChatUserVO();
                chatUserVO.setUser_id(user_id);
                chatUserVO.setChat_num(chat_num);

                // tour_mate_chat_user 테이블에 값 저장
                TouromateDAO.joinChat(chatUserVO);

                // 여기에 채팅 참가 로직을 추가하면 됩니다.
                // 예를 들어, 채팅 참가 성공 시 다른 동작을 수행할 필요가 있다면 여기에서 처리
                return "채팅 참가 성공";
            } else {
                // 참가 불가능한 경우
                // 예를 들어, 참가 불가능할 때의 동작을 처리하고 싶다면 여기에서 처리
                return "채팅 참가 성공";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "채팅 참가 중 오류 발생";
        }
    }


 
    
}
