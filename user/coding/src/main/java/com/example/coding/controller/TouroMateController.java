package com.example.coding.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.coding.domain.ImgDetailVO;
import com.example.coding.domain.ImgVO;
import com.example.coding.domain.TouroMateVO;
import com.example.coding.domain.UserProfileVO;
import com.example.coding.domain.UserVO;
import com.example.coding.service.ImgService;
import com.example.coding.service.TouroMateService;
import com.example.coding.util.MD5Generator;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/touromate")
public class TouroMateController {

    // 'MateService'타입의 'mateService'필드 선언
    private final TouroMateService mateService;

    // 'MateController'의 생성자 정의
    public TouroMateController(TouroMateService mateService){
        this.mateService = mateService;
    }
    
    @Autowired
    public ImgService imgService;


    // 노드 서버
    private final int nodeServerPort = 8081;

    @RequestMapping("/touromate_list")
    // '@RequestParam'를 사용하여, URL에서 파라미터를 읽어옴. name = "searchKeyword" 파라미터의 이름 정의, 'required = false' 이 파라미터는 필수가 아님 -> 검색어가 없는 경우에도 메서드 실행 가능
    public String list(@RequestParam(name = "searchKeyword", required = false) String searchKeyword,
                       @RequestParam(name = "page", defaultValue = "1") int page, Model m, HttpServletRequest request) {
        // 세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
        
         // 노드 서버와 통신할 때 사용할 URL
        String nodeServerUrl = "http://localhost:" + nodeServerPort + "/chat";

        
        // 전체 페이지 수를 가져오는 메서드
        int getTotalPages = mateService.getTotalPages();

        // 검색어에 해당하는 게시글 리스트 메서드
        List<TouroMateVO> selectedMateList;

        if (StringUtils.hasText(searchKeyword)) {
            // 검색어가 있을 경우 실행 -> 조건에 맞는 게시글을 가져옴
            selectedMateList = mateService.searchMateList(searchKeyword, page);
        } else {
            // 검색어가 없는 경우 -> 전체 게시글을 가져옴
            selectedMateList = mateService.getSelectedMateList(page);
        }

        System.out.println("Search keyword: " + searchKeyword);

        m.addAttribute("touromates", selectedMateList);
        m.addAttribute("totalPages", getTotalPages);
        m.addAttribute("currentPage", page);
        m.addAttribute("loggedInUserId", loggedInUser != null ? loggedInUser.getUser_id() : null);

        return "touromate/touromate_list";
    }

    // insert 페이지
    @PostMapping("/register-course")
    public String registerCourse(@ModelAttribute TouroMateVO touroMateVO, 
                                HttpServletRequest request, @RequestParam(name="files", required = false) MultipartFile[] files){
        //세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        System.out.println("=========" + session);
        UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
        System.out.println("userId:" + loggedInUser);
        touroMateVO.setUser_id(loggedInUser.getUser_id());
        mateService.registerTouroMateAndChat(touroMateVO);
        mateService.joinChat(touroMateVO.getUser_id(), touroMateVO.getTouro_mate_num(), null);

        int touro_mate_num = mateService.selectMateNum();

        // 파일 업로드 처리
        try {
        if (files != null && files.length > 0) {
            try{
                for (MultipartFile file : files) {
                    // 각 파일에 대한 처리 로직 추가
                    // 예를 들어, 파일을 저장하거나 다른 작업을 수행할 수 있습니다.
                    String img_name = file.getOriginalFilename();
                    System.out.println("originFilename : " + img_name);
                    String img_real_name = new MD5Generator(img_name).toString();

                    // 시스템으로 자동으로 잡아주는 경로 설정
                    // 생성되는 폴더의 위치를 확인 후 추후 변경
                    // => static 폴더 밑으로 이동해야 사용자가 그 파일에 접근 가능
                    String save_path = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\assets\\images\\touromateImg";
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
                    // idvo.setUser_id(vo.getUser_id());
                    idvo.setImg_num(imgService.selectNum());
                    idvo.setTouro_mate_num(touro_mate_num);
                    System.out.println(idvo.getTouro_mate_num());
                    mateService.insertFileMate(idvo);
                    System.out.println("아이디 : "+idvo.getTouro_mate_num()+"이미지번호 : " + idvo.getImg_num());

                }
            }catch(Exception e) {
                System.out.println("file error" + e);
            }
        }
    } catch (Exception e) {
            System.out.println("file2 error");
                    
    }

        return "redirect:/touromate/touromate_list";

    }

    //detail 페이지
    @RequestMapping("/touromate_detail")
    public void showDetailPage(@RequestParam int touro_mate_num, Model m){

        // 해당 게시글의 정보 가져옴
        TouroMateVO touroMate = mateService.getTouroMateById(touro_mate_num);

        // 해당 게시글의 여행지 정보를 가져옴
        List<TouroMateVO> travelPlaces = mateService.getTravelPlaces(touro_mate_num);

        // 해당 게시글의 작성자 정보를 가져옴
        UserVO authorInfo = mateService.getAuthorInfo(touroMate.getUser_id());

        List<ImgVO> imgList = mateService.getImages(touro_mate_num);
        System.out.println(imgList);

        int remainingUsers = mateService.getRemainingChatUsers(touro_mate_num);

        m.addAttribute("touroMate", touroMate);
        m.addAttribute("travelPlaces", travelPlaces);
        m.addAttribute("authorInfo", authorInfo);
        m.addAttribute("mateimgList", imgList);
        m.addAttribute("remainingUsers", remainingUsers);
    }

    // 채팅 버튼 클릭 시 tour_mate_chat_user 테이블 저장
    @PostMapping("/joinChat")
    @ResponseBody
    public String joinChat(@RequestParam int touro_mate_num, HttpServletRequest request ) {
        // 세션에서 user_id 가져오기
        HttpSession session = request.getSession();
        UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");

        System.out.println("MATE "+touro_mate_num);


        try {
            if (loggedInUser != null) {
                System.out.println("Joining chat for user: " + loggedInUser.getUser_id() + ", touro_mate_num: " + touro_mate_num);
                // 채팅 참가하기 서비스 호출
                String result = mateService.joinChat(loggedInUser.getUser_id(), touro_mate_num, null);
                System.out.println("joinCHAT : " + result);
                return result;
            } else {
                return "로그인이 필요합니다.";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "채팅 참가 중 오류 발생";
        }
    }

    // 사용자 프로필 가져와서 채팅에 붙이기
    @RequestMapping(value = "/getprofileImg", method={RequestMethod.POST})
	@ResponseBody
	public String requestMethodName(UserProfileVO vo) {
		System.out.println("유저아이다>>>>>" + vo.getUser_id());
		vo = mateService.getProfile(vo);
        System.out.println("vo : " + vo.getImg_real_name());
		// null 값 경우 default_profile.png 반환
        String img_real_name = vo.getImg_real_name();
		try {
            if (vo.getImg_real_name() != null && vo.getImg_real_name() != "" && !img_real_name.equals("5ee25b671da2a46f118d0a4454d822a5")){
                System.out.println("vo1213>>>>>>> : " + vo.getImg_real_name());
                return img_real_name;
                
            }else return "NO";	
		} catch (Exception e) {
			return "default_profile.png";
		}
	}

    // 게시글 삭제
    @PostMapping("/deleteTouroMate")
    public ResponseEntity<String> deleteTouroMate(@RequestParam int touro_mate_num, HttpServletRequest request, HttpSession session) {
        // 세션에서 user_id 가져오기
        UserVO loggedInUser = (UserVO) request.getSession().getAttribute("loggedInUser");
        System.out.println("loggedInUser >>>  "+ loggedInUser.getUser_id());
        String loggedInUserId = loggedInUser.getUser_id();

        try {
            // 세션에서 현재 로그인한 사용자 아이디 가져오기
            // String loggedInUserId = (String) session.getAttribute("loggedInUserId");
            System.out.println("loggedInUserId >>>>>>>>>> " + loggedInUserId);

            // 값이 null이 아닌 경우에만 비교
            if (loggedInUserId != null && loggedInUserId.equals("원하는 비교 대상")) {
                // 여러 테이블에서 해당 게시물 정보 삭제 및 관련 작업 수행
                mateService.deleteTouroMate(touro_mate_num, loggedInUserId);

                return ResponseEntity.ok("게시물이 성공적으로 삭제되었습니다.");
            } else {
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("게시물 삭제 권한이 없거나 로그인 되어 있지 않습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("게시물 삭제 중 오류가 발생했습니다.");
        }
    }






}