package com.example.coding.domain;

import lombok.Data;

@Data
public class UserVO {
    private String user_id;
    private String user_name;
    private String user_pass;
    private String user_tel;
    private String user_email;
    private String user_addr;
    private String user_gender;
    private String user_age;
    private String user_prefer_type1;
    private String user_prefer_type2;
    private String user_prefer_type3;
    private String user_prefer_loc1;
    private String user_prefer_loc2;
    private String user_prefer_loc3;

}
