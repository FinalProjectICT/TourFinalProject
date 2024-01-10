package com.example.coding.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.coding.domain.AdminJpaVO;


public interface AdminRepository extends CrudRepository<AdminJpaVO, String>{
	
	List<AdminJpaVO> findByTourNameLike(String tourName);
	
}