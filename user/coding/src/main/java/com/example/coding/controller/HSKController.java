package com.example.coding.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.service.TouroviewService;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;




@RestController
@RequestMapping("/touroview")
public class HSKController {

    @Autowired
    private TouroviewService touroviewService;



    @GetMapping("/search")
    @ResponseBody
    public ResponseEntity<List<TourVO>> findByKeyword(@RequestParam("keyword") String keyword) {
        try{
            // 여행지 검색 로직을 수행 결과
            List<TourVO> searchResults = touroviewService.findByKeyword(keyword);
            // 성공 시 결과 반환
            return new ResponseEntity<>(searchResults, HttpStatus.OK);
        }catch(Exception e){
            e.printStackTrace();
            // 오류시 로그
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    


    // @GetMapping("/submitForm")
    // public String submitForm(@ModelAttribute TouroviewVO touroviewVO){
    //     // 폼 데이터 받아서 db 저장
    //     touroviewService.insertTouroview(touroviewVO);
    //     // 클라이언트에서 처리할 경로로 수정
    //     return "redirect:/touroview/success";
    // }


    // @PostMapping("insert")
    // public String insertTouroview(TouroviewVO touroviewVO, RedirectAttributes redirectAttributes){
    //     try{
    //         // 서비스 통해 데이터베이스에 등록
    //         touroviewService.insertTouroview(touroviewVO);
    //         // 등록 성공 시 리다이렉트
    //         return "redirect:/submit";
    //     } catch (Exception e){
    //         // 등록 오류 시, insert 페이지 리다이렉트
    //         redirectAttributes.addFlashAttribute("error", "등록 중 오류가 발생했습니다.");
    //         return "redirect:/touroview_insert";
    //     }
    // }

    // @PostMapping("/submitForm")
    // @ResponseBody
    // public ResponseEntity<String> submitForm(@ModelAttribute TouroviewVO touroview, 
    //                                             @RequestParam("file1") MultipartFile file1,
    //                                             @RequestParam("file2") MultipartFile file2,
    //                                             @RequestParam("file3") MultipartFile file3){
    //         try{
    //         // 이미지 파일 및 게시글 정보 서비스 전달 저장
    //         touroviewService.saveTouroviewWithImages(touroview, Arrays.asList(file1, file2, file3));
    //         return new ResponseEntity<>("Success", HttpStatus.OK);
    //     } catch (Exception e){
    //         e.printStackTrace(); 
    //         return new ResponseEntity<>("Error", HttpStatus.INTERNAL_SERVER_ERROR);
    //     }
    // }

    
        
  
}
    
