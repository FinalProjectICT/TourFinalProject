package com.example.coding.dao;

import com.example.coding.domain.BMHVO;

public interface BMHDAO {

    public void insertUser(BMHVO vo);

    public int idCheck(String user_id);
    
}