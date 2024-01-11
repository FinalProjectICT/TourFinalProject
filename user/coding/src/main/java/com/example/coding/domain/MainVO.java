package com.example.coding.domain;

import lombok.Data;

@Data
public class MainVO {

    private String user_prefer_loc1;    // 1순위 선호 지역
    private String user_prefer_loc2;    // 2순위 선호 지역
    private String user_prefer_loc3;    // 3순위 선호 지역

  
}
