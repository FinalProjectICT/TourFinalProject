package com.example.coding.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.coding.dao.TouroviewDAO;
import com.example.coding.domain.ImgVO;
import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;


@Service
public class TouroviewServiceImpl implements TouroviewService{

    @Autowired
    private final TouroviewDAO touroviewDAO;

    public TouroviewServiceImpl(TouroviewDAO touroviewDAO) {
        this.touroviewDAO = touroviewDAO;
    }

    // @Override
    // public String insertTouroview(TouroviewVO touroview){
    //     try{
    //         // 서비스 통해 db 등록
    //         touroviewDAO.insertTouroview(touroview);
    //         // 등록 성공 시 리다이렉트
    //         return "redirect:/touroview/touroview_detail";
    //     }catch(Exception e){
    //         // 등록 오류 시 insert 페이지 리다이렉트
    //         redirectAttributes.addFlashAttribute("error", "등록 중 오류가 발생했습니다.");
    //         return "redirect:/touroview_insert";
    //     }
    // }

    @Override
    public List<TourVO> findByKeyword(String keyword){
        return touroviewDAO.findByKeyword(keyword);
    }
    
    // @Override
    // public void saveTouroviewWithImages(TouroviewVO touroview, List<MultipartFile> imageFiles) {
    //     // 1. 게시글 정보 저장
    //     touroviewDAO.insertTouroview(touroview);

    //     // 2. 이미지 정보 저장 (img 테이블)
    //     for (MultipartFile file : imageFiles){
    //         ImgVO img = new ImgVO();
    //         img.setImg_name(file.getOriginalFilename());
    //         img.setTouroviewId(touroview.getTouroview_num()); // 연결할 게시글 id 설정
    //         TouroviewDAO.saveTouroviewWithImages(img);
    //     }
    // }

}
