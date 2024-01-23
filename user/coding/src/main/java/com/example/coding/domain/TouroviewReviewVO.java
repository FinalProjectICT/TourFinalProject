package com.example.coding.domain;

import lombok.Data;

@Data
public class TouroviewReviewVO {

    private Integer touroview_review_num;           // 여행 후기 댓글 번호
    private Integer touroview_num;                  // 여행 후기 번호
    private String  user_id;                        // 아이디
    private String  tour_num;                       // 여행지 번호
    private String  touroview_review_register_date; // 여행 후기 댓글 등록일
    private String  touroview_review_content;       // 여행 후기 댓글 내용
    private String  touroview_review_star;          // 여행 후기 댓글 별점 
    
}
