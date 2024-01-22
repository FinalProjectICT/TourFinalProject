package com.example.coding.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.example.coding.domain.TourVO;
import com.example.coding.domain.TouroviewReviewVO;
import com.example.coding.domain.TouroviewVO;
import com.example.coding.domain.UserVO;
import com.example.coding.service.TouroviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;



@RequestMapping("/touroview")
@Controller
public class HSKController {

    @Autowired
    private TouroviewService touroviewService;

    
    // -------------------------- touroview_insert
    // 로그인 id 가져오기
    @GetMapping("/touroview_insert")
    public String showTouroviewForm(HttpServletRequest request, Model model) {
        
        // 세션에서 로그인 정보 가져오기
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("loggedId");
        System.out.println("아이디: " + userId); // 로그 출력
        
        // 로그인 여부 확인
        if (userId == null){
            // 로그인 안 된 경우 로그인 페이지 이동
            return "redirect:/user/login";
        } 

        // TouroviewVO 객체에 설정
        TouroviewVO touroviewVO = new TouroviewVO();
        touroviewVO.setUser_id(userId);
        
        // 모델에 추가
        model.addAttribute("touroviewVO", touroviewVO);

        // 로그인 된 경우 게시글 작성 폼 이동
        session.setAttribute("userId", userId);
        return "touroview/touroview_insert";
        }


    // 여행지 검색
    @GetMapping("/search")
    @ResponseBody
    public List<TourVO> findByKeyword(TourVO vo) {
        try {
            // 여행지 검색 로직을 수행 결과
            // System.out.println("keyword: " + vo.getKeyword());
            return touroviewService.findByKeyword(vo);
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리를 적절히 수행
            return Collections.emptyList();
        }
    }

    // 후기 게시물 등록
    @PostMapping("/saveTouroview")
    public String saveTouroview(@ModelAttribute("touroviewVO") TouroviewVO touroviewVO, HttpServletRequest request, Model model) {
            try{
                // 여행 후기 데이터를 저장하는 서비스 메소드 호출
                System.out.println("여행지:" + touroviewVO.getTouroview_title()); // 콘솔 찍어보기 여행지
                System.out.println("유저 아이디:" + touroviewVO.getUser_id()); // 콘솔 찍어보기 아이디
                System.out.println(touroviewVO);

                // 세션에서 로그인 정보 가져오기
                HttpSession session = request.getSession();
                String userId = (String) session.getAttribute("loggedId");

                // 사용자 아이디 설정
                touroviewVO.setUser_id(userId);
                
                // 여행 후기 데이터 저장하는 서비스 메소드 호출
                touroviewService.saveTouroview(touroviewVO);

                // 성공 시 리다이렉트
                return "redirect:/touroview/touroview_detail/" + touroviewVO.getTouroview_num(); // 저장 후 목록 페이지로 리다이렉트
            } catch (Exception e){
                // 저장 중 오류 발생
                e.printStackTrace();
                return "touroview/touroview_insert";
            }
        }



        
        
    // ---------------------------------------------- touroivew_list
    
    // 페이징 및 list 목록 조회
    @GetMapping("/touroview_list")
    public String showTouroviewList(Model model,
                                    @RequestParam(name = "searchKeyword", required = false) String searchKeyword,
                                    @RequestParam(name = "page", defaultValue = "0") Integer page,
                                    @RequestParam(name = "size", defaultValue = "10") Integer size) {
        // Touroview 목록 가져오기
        List<TouroviewVO> touroviewList = touroviewService.getTouroviewList(searchKeyword, page, size);
        System.out.println("touroview 목록: " + touroviewList);

        // 전체 페이지 수 계산
        int totalPages = touroviewService.getTotalPages(size);

        // 모델에 데이터 추가
        model.addAttribute("touroviewList", touroviewList);
        model.addAttribute("touroviewPage", totalPages);
        model.addAttribute("currentPage", page);
        model.addAttribute("searchKeyword", searchKeyword);

        return "touroview/touroview_list";
    }

        
        
    // ---------------------------------------------- touroview_detail
    // 해당 사용자가 작성한 게시글 불러오기 (detail 페이지)
    @GetMapping("/touroview_detail")
    public String showTouroviewDetail(@RequestParam(name = "touroview_num") int touroview_num, Model model, HttpSession session) {
        
        try{
            // 로그인 된 사용자 아이디 확인
            String loggedInUserId = (String) session.getAttribute("loggedId");

            // touroviewNum에 해당하는 후기를 서비스를 통해 불러와서 모델에 추가
            TouroviewVO touroviewVO = touroviewService.getTouroviewById(touroview_num);

            // 후기 정보가 없을 경우 목록 페이지로 리다이렉트
            if (touroviewVO == null){
                return "redirect:/touroview/touroview_list";
            }

            // 후기 정보와 연결된 여행지 정보를 가져오기
            int tourNum = Integer.parseInt(touroviewVO.getTour_num()); 
            TourVO tourVO = touroviewService.getTourByTouroviewId(tourNum);
            String postNum = tourVO.getTour_postnum().replaceAll("\\.0$", ""); // 우편번호 000000 처리
            tourVO.setTour_postnum(postNum); // tourVO에 postNum 넣기

            // UserVO userVO = touroviewService.getUserByTouroviewId(touroview_num); // UserVO
            // TouroviewReviewVO touroviewReviewVO = touroviewService.getTouroviewReviewByTouroviewId(touroview_num); //touroviewReview
            UserVO userVO = (UserVO) model.getAttribute("userVO"); // UserVO
            TouroviewReviewVO touroviewReviewVO = (TouroviewReviewVO) model.getAttribute("touroviewReviewVO"); //touroviewReview

            // 모델에 데이터 추가
            model.addAttribute("touroviewVO", touroviewVO);
            model.addAttribute("tourVO", tourVO);

            // model.addAttribute("userVO", userVO); //UserVO
            // model.addAttribute("touroviewReviewVO", touroviewReviewVO); //touroviewReview

            // 찍어보기
            System.out.println("게시물 후기 번호: " + touroview_num);
            System.out.println("Touroview 정보 : " + touroviewVO);
            System.out.println("Tour 정보 : " + tourVO);
            System.out.println("Tour 번호: " + tourNum);

            // 자신이 작성한 게시글인 경우 모델에 플래그 추가
            boolean isAuthor = loggedInUserId != null && loggedInUserId.equals(touroviewVO.getUser_id());
            model.addAttribute("isAuthor", isAuthor);

            return "touroview/touroview_detail";
            
        }catch (Exception e){
            // 오류 처리
            e.printStackTrace();
            return "redirect:/touroview/touroview_list";
        }
    }
        




        
        
    // ---------------------------------------------- touroview_update_delete
    
    // 후기 게시물 수정
    @GetMapping("/touroview_update_delete")
    public String updateTouroview(@RequestParam(name = "touroview_num") int touroviewNum, Model model) {
        
        try{
            // 수정 삭제 페이지에 필요한 데이터 가져오기
            TouroviewVO touroviewVO = touroviewService.getTouroviewById(touroviewNum);
            model.addAttribute("touroviewVO", touroviewVO);
            
            return "touroview/touroview_update_delete";

        }catch (Exception e){
            // 오류 처리
            e.printStackTrace();
            return "redirect:/touroview/touroview_list";
        }
        
    }

    @PostMapping("/touroview_update_delete")
    public String handleUpdateDeleteAction(@ModelAttribute TouroviewVO touroviewVO,
                                            @RequestParam(name = "action", required = false) String action){
            try {
                if ("update".equals(action)) {
                    // 업데이트 로직을 처리하고 목록 페이지로 리다이렉트
                    touroviewService.updateTouroview(touroviewVO);
                    return "redirect:/touroview/touroview_list";
                } else if ("delete".equals(action)) {
                    // 삭제 로직을 처리하고 목록 페이지로 리다이렉트
                    touroviewService.deleteTouroview(touroviewVO.getTouroview_num());
                    return "redirect:/touroview/touroview_list";
                } else {
                    // 유효하지 않은 동작일 경우 필요한 대로 처리
                    return "redirect:/touroview/touroview_list";
                }
            } catch (Exception e) {
                // 필요한 대로 예외 처리
                e.printStackTrace();
                return "redirect:/touroview/touroview_list";
            }

    }



    // 후기 게시물 삭제
    @PostMapping("/deleteTouroview")
    public ResponseEntity<String> deleteTouroview(@RequestParam(name = "touroviewNum") int touroviewNum) {
        try {
            // 여기에서 삭제 여부를 확인하는 로직을 추가할 수도 있습니다.
            // 예를 들어, 특정 조건에 맞지 않으면 삭제를 거부하고 오류 응답을 보낼 수 있습니다.

            // 삭제 로직을 처리하고 성공 응답을 반환
            touroviewService.deleteTouroview(touroviewNum);
            return ResponseEntity.ok("삭제가 완료되었습니다.");
        } catch (Exception e) {
            // 삭제 실패 시 예외 처리와 함께 오류 응답을 반환
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("삭제 중 오류가 발생했습니다.");
        }
    }
  
}