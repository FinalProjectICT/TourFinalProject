package com.example.coding.domain;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class TouroviewVO {

    @Id
    private Integer touroview_num;      // 여행 후기 번호
    private String  user_id;            // 아이디
    private String  tour_num;           // 여행지 번호
    private String  touroview_title;    // 게시글 제목
    private Date    touroview_regdate;   // 등록일
    private Date    touroview_update;   // 수정일
    private String  touroview_content;  // 게시글 상세 정보

    // setter, getter 
    
    public Integer getTouroview_num() {
        return touroview_num;
    }
    public void setTouroview_num(Integer touroview_num) {
        this.touroview_num = touroview_num;
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getTour_num() {
        return tour_num;
    }
    public void setTour_num(String tour_num) {
        this.tour_num = tour_num;
    }
    public String getTouroview_title() {
        return touroview_title;
    }
    public void setTouroview_title(String touroview_title) {
        this.touroview_title = touroview_title;
    }
    public Date getTouroview_regdate() {
        return touroview_regdate;
    }
    public void setTouroview_regdate(Date touroview_regdate) {
        this.touroview_regdate = touroview_regdate;
    }
    public Date getTouroview_update() {
        return touroview_update;
    }
    public void setTouroview_update(Date touroview_update) {
        this.touroview_update = touroview_update;
    }
    public String getTouroview_content() {
        return touroview_content;
    }
    public void setTouroview_content(String touroview_content) {
        this.touroview_content = touroview_content;
    }

    // toString
    @Override
    public String toString() {
        return "TouroviewVO [touroview_num=" + touroview_num + ", user_id=" + user_id + ", tour_num=" + tour_num
                + ", touroview_title=" + touroview_title + ", touroview_regdate=" + touroview_regdate
                + ", touroview_update=" + touroview_update + ", touroview_content=" + touroview_content + "]";
    }
    
}
