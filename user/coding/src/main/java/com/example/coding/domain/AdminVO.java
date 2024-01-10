package com.example.coding.domain;

import lombok.Data;

@Data
public class AdminVO {
    

    
    private String tourNum;        // 여행지 번호 
    private String tourName;       // 여행지 명 
    private Integer checkNum;      //  조회수 
    private Integer imgNum ;       // 이미지 번호
    private String imgName ;       // 이미지 명  
    private String imgRealName ;  // 원본 이미지 명  
    private String imgSize ;       // 이미지 크기
    private String imgWidth ;      // 이미지 가로
    private String imgLength ;     // 이미지 세로
    private String tourSiteAddr ; // 여행지 사이트 주소
    private String tourAddr  ;       // 여행지 주소 
    private String tourContent ;   // 여행지 내용
    private String locCateCode ;  // 여행지 별점 
    private Integer wishlistNum;   // 찜 번호 
    private Integer inquiryNum ;   // 여행지 전화 번호 
    private String tourCateCode;  // 여행지 코드 
    private String tourCateName;  // 여행지 카테고리명
    private Integer imgDetailNum; // 이미지 구분 
    private String tourPostnum;    // 우편 번호
    private String tourLati ;      // 위도 
    private String tourLongi;      // 경도


}
