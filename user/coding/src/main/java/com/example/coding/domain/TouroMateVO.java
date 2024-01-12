package com.example.coding.domain;

import lombok.Data;

@Data
public class TouroMateVO {
    private int touro_mate_num;     // 게시글 번호
    private String user_id;         // 아이디
    private String touro_mate_title; // 제목
    private int touro_mate_count;    // 인원수
    private int limit_age;          // 제한 나이
    private int limit_gender;       // 제한 성별
    private String touro_mate_content; // 상세내용
    private double touro_mate_lati1;
    private double touro_mate_longi1;
    private double touro_mate_longi2;
    private double touro_mate_longi3;
    private double touro_mate_lati2;
    private double touro_mate_lati3;
    private String touro_mate_name1;
    private String touro_mate_name2;
    private String touro_mate_name3;
    private String touro_mate_addr1;
    private String touro_mate_addr2;
    private String touro_mate_addr3;
    private String touro_mate_date; // 작성 날짜, 수정 날짜


}
