package com.example.coding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.example.coding.domain.NaverTokenResponse;

@Controller
public class NaverLoginController {

    private final String clientId = "ieY9ziYjv1wBfONtq6FJ";
    private final String clientSecret = "rUhrtJkBHJ";
    private final String redirectUri = "http://localhost:8080/user/naverCallBack";
    private final String naverTokenEndpoint = "https://nid.naver.com/oauth2.0/token";
    private final String naverUserInfoEndpoint = "https://openapi.naver.com/v1/nid/me";

    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("user/naverLogin")
    public String naverLogin() {
        String naverAuthUrl = "https://nid.naver.com/oauth2.0/authorize?client_id=" + clientId +
                "&redirect_uri=" + redirectUri +
                "&response_type=code";
        return "redirect:" + naverAuthUrl;
    }

    @GetMapping("user/naverCallBack")
    public String naverCallback(@RequestParam String code) {
        // 네이버에서 받은 인증 코드로 토큰을 요청
        String tokenUrl = naverTokenEndpoint + "?grant_type=authorization_code" +
                "&client_id=" + clientId +
                "&client_secret=" + clientSecret +
                "&redirect_uri=" + redirectUri +
                "&code=" + code;

        // RestTemplate을 사용하여 토큰 요청
        NaverTokenResponse tokenResponse = restTemplate.postForObject(tokenUrl, null, NaverTokenResponse.class);

        // 토큰을 이용하여 사용자 정보 요청
        String userInfoUrl = naverUserInfoEndpoint;

        // 헤더에 토큰 추가
        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + tokenResponse.getAccess_token());
        HttpEntity<String> entity = new HttpEntity<>(headers);

        // RestTemplate을 사용하여 사용자 정보 요청
        ResponseEntity<String> response = restTemplate.exchange(userInfoUrl, HttpMethod.GET, entity, String.class);

        // 사용자 정보 처리
        String userInfoResponse = response.getBody();
        // 여기에서 userInfoResponse를 파싱하여 필요한 정보를 추출하고 처리

        return "redirect:/";
    }
}

