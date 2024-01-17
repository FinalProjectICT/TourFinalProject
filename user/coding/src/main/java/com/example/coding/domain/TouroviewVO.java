package com.example.coding.domain;

import lombok.Data;

@Data
public class TouroviewVO {

    private Integer touroview_num;      // 여행 후기 번호
    private String  user_id;            // 아이디
    private String  tour_num;           // 여행지 번호
    private String  touroview_title;    // 게시글 제목
    private String  touroview_regdate;   // 등록일
    private String  touroview_update;   // 수정일
    private String  touroview_content;  // 게시글 상세 정보


    public void setUser_id(String user_id){
        this.user_id = user_id;
    }

    
    
}
