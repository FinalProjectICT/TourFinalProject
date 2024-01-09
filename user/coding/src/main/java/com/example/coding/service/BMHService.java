package com.example.coding.service;

import com.example.coding.domain.BMHVO;

public interface BMHService {

    public void insertUser(BMHVO vo);

    public int idCheck(String user_id);
    
} 