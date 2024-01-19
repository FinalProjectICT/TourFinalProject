package com.example.coding.controller;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.coding.domain.UserVO;
import com.example.coding.domain.ImgDetailVO;
import com.example.coding.domain.ImgVO;
import com.example.coding.service.ImgService;
import com.example.coding.service.UserService;
import com.example.coding.util.MD5Generator;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("user")
public class UserController {
    
	@Autowired
	private UserService userService;

    @Autowired
	private ImgService imgService;

	// 회원가입
	@RequestMapping("/insertUser") 
	public String insertUser(@RequestParam(name = "file", required = false) MultipartFile file, UserVO vo) {
		try {
            String defaultProfileImagePath = "static/assets/images/profile/default_profile.png";
        
            // 파일첨부가 있는 경우
            if( file != null && !file.isEmpty() ){
                String img_name = file.getOriginalFilename();
                System.out.println("originFilename : " + img_name);
                String img_real_name = new MD5Generator(img_name).toString();

                // 시스템으로 자동으로 잡아주는 경로 설정
                // 생성되는 폴더의 위치를 확인 후 추후 변경
                // => static 폴더 밑으로 이동해야 사용자가 그 파일에 접근 가능
                String save_path = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\assets\\images\\profile";
                if( !new File(save_path).exists() ){
                    new File(save_path).mkdir();
                } 
                String img_path = save_path + "\\" + img_real_name;
                System.out.println("filepath : " + img_path);

                // 파일저장
                file.transferTo(new File(img_path));
                
                // 디비저장을 위해서 파일정보 덩어리 만들기
                ImgVO ivo = new ImgVO();
				ivo.setImg_name(img_name);
                ivo.setImg_real_name(img_real_name);
                ivo.setImg_path(img_path);
                System.out.println("<<<<< 파일정보 덩어리 만들기 성공 >>>>>");

                imgService.insertFile(ivo);
                System.out.println("insertFile() 요청");

                // 파일정보 img_detail에 담기
                ImgDetailVO idvo = new ImgDetailVO();
                idvo.setUser_id(vo.getUser_id());
                idvo.setImg_num(imgService.selectNum());
                System.out.println("아이디 : "+idvo.getUser_id()+"이미지번호 : "+idvo.getImg_num());

                // 디비저장 시 파일정보 덩어리 추가
				userService.insertUser(vo, ivo, idvo);
				System.out.println("insertUser() 요청");
            }else {
                // 파일첨부가 없는 경우
                // 기본 이미지를 업로드할 수 있도록 경로 설정
                String defaultImg_real_name = new MD5Generator(defaultProfileImagePath).toString();
                String save_path = System.getProperty("user.dir") + "\\src\\main\\resources\\";
                String img_path = save_path + defaultProfileImagePath;
                System.out.println("img_path : " + img_path);

                // 기본 이미지 저장
                InputStream defaultImageStream = getClass().getClassLoader().getResourceAsStream(defaultProfileImagePath);
                Files.copy(defaultImageStream, Paths.get(img_path), StandardCopyOption.REPLACE_EXISTING);

                // 디비저장을 위해서 파일정보 덩어리 만들기
                ImgVO ivo = new ImgVO();
                ivo.setImg_name("default_profile.png");
                ivo.setImg_real_name(defaultImg_real_name);
                ivo.setImg_path(img_path);
                imgService.insertFile(ivo);
    
                // 파일정보 img_detail에 담기
                ImgDetailVO idvo = new ImgDetailVO();
                idvo.setUser_id(vo.getUser_id());
                idvo.setImg_num(imgService.selectNum());
    
                // 디비저장 시 파일정보 덩어리 추가
                userService.insertUser(vo, ivo, idvo);
            }
			return "redirect:login";
        }catch(Exception ex){
            ex.printStackTrace();
            System.out.println("파일업로드 실패 : " + ex.getMessage());
            return "redirect:/errorPage"; // 실패 시 처리할 페이지로 리다이렉트
        }
		
	}

	// id 중복체크
	@RequestMapping("/idCheck") 
	@ResponseBody
	public String idCheck(String user_id) {
		int result = userService.idCheck(user_id);
		return "" + result;
	}

    @RequestMapping("/loginCheck")
    public String loginCheck(UserVO vo, HttpSession s){
        
        // DB에서 사용자 정보 대조
        vo = userService.loginCheck(vo);
        System.out.println("login() 호출 =====> vo: "+vo);

        // 사용자 정보 확인 시 (로그인 성공 시)
        if( vo != null ){
            // 사용자 정보를 세션에 저장
            s.setAttribute("loggedInUser", vo);
            // 아이디 세션이 필요해서 추가합니다 - 이지연
            s.setAttribute("loggedId", vo.getUser_id());
            // 사용자 정보 중 관리자 권한 여부 확인
            int role = vo.getAdmin_authority();
            // 관리자 권한 여부가 1이면 사용자 페이지(메인페이지)로 이동
            if( role == 1 ){
                return "redirect:/touro";
            }else if( role == 0 ){
                // 관리자 권한 여부가 0이면 관리자 페이지로 이동
                return "redirect:http://localhost:5173/";
            }
        }
        // 로그인 실패 시 알림페이지로 이동
        return "user/login_failed";
    }

    @RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 세션을 제거하여 로그아웃 처리
		session.invalidate();

		// 로그아웃 후 리다이렉트
		return "redirect:/touro";
	}

}
