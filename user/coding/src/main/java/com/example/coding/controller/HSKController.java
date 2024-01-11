package com.example.coding.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.coding.domain.TouroviewVO;
import com.example.coding.service.TouroviewService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@RestController
@RequestMapping("/touroview/insert")
public class HSKController {

    @Autowired
    private SqlSession sqlSession;

    @Autowired
    private TouroviewService touroviewService;

     @GetMapping("/search")
    public ResponseEntity<List<TouroviewVO>> searchTouroviews(@RequestParam String keyword) {
        try {
            // MyBatis Mapper 호출
            List<TouroviewVO> touroviews = sqlSession.selectList("com.example.mapper.TouroviewMapper.searchTouroviews", keyword);
            return new ResponseEntity<>(touroviews, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/submitForm")
    @ResponseBody
    public Map<String, Object> submitForm(@RequestParam String user_id,
                                            @RequestParam String tour_num,
                                            @RequestParam String touroview_title,
                                            @RequestParam String touroview_content) {

        try {
            // TouroviewVO 객체 생성 및 필드 설정
            TouroviewVO touroview = new TouroviewVO();
            touroview.setUser_id(user_id);
            touroview.setTour_num(tour_num);
            touroview.setTouroview_title(touroview_title);
            touroview.setTouroview_content(touroview_content);

            // 서비스로 데이터 저장
            touroviewService.insertTouroview(touroview);

            // 응답 메시지 설정
            Map<String, Object> response = new HashMap<>();
            response.put("message", "Success");
            return response;
        } catch (Exception e) {
            // 에러가 발생한 경우 응답 메시지 설정
            Map<String, Object> response = new HashMap<>();
            response.put("message", "Error");
            return response;
        }
    }
    
}
