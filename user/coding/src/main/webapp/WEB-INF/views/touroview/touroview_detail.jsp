<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="rica" />
    <meta name="keywords" content="rica" />
    <meta name="author" content="rica" />
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>Rica</title>

    <!--Google font-->
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://code.jquery.com/jquery-3.7.1.min.js"
      integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
      crossorigin="anonymous"
    ></script>

    <link
      href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
      rel="stylesheet"
    />

    <!-- Icons -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/font-awesome.css"
    />

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />

    <!-- Date-time picker css -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/datepicker.min.css"
    />

    <!-- magnific css -->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css" />

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/slick-theme.css"
    />

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" />

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" />

    <style>
      #reviewBOX {
       display: none;
     }
    
   </style>

   <!-- 리뷰 달기 -->
   <script>
     $(function(){
       let stars = ''
       var review_div = $('#tour_review');
       var user_id = $('#sessionId').val();
       var touroview_num = $('#touroviewNum').val();
       var tour_num = $('#tourNum').val();
       console.log(tour_num)
       review_div.html('');
       // 초기 불러오기
       getReviewList();
       // 페이지의 모든 리소스가 로드 되었을 때.
      
       $('.dropdown-item').click(function (e) {
         e.preventDefault();
         
         var stars = $(this).data('stars');
         // 리뷰 삽입
         
         // $('#tourReviewBtn').trigger('click', stars);

         $('#tourReviewBtn').data('selectedStars', stars);

       
       }) // end 별점 등록
       
       // 리뷰 등록
       $('#tourReviewBtn').click((e, stars) => {
           e.preventDefault();
           console.log(user_id)
           if(user_id == " " || user_id == null) {
             console.log(1)
             alert("로그인 후 이용해주세요")
             window.location.href = '/user/login'; // 수정된 부분
           }
           else {
             var stars = $('#tourReviewBtn').data('selectedStars');
             var reviewText = $('.review_content').val();
             
             // 리뷰 등록 ajax
             $.ajax({
               type:'post',
               url : '/touroview/touroviewReviewInsert',
               data : { touroview_review_content : reviewText, touroview_review_star : stars, user_id : user_id, touroview_num : touroview_num, tour_num : tour_num },
               success : function(result) {
                 review_div.html('');
                 getReviewList();
                 console.log("리뷰등록" + result);
                 $('.review_content').val(" ");

                 

               },
               error : function(err) {
                 console.log(err)
               }
             }) // end ajax
           }
          
       }); // end 리뷰작성 클릭

     // 리뷰 전체 보이게 하기
     function getReviewList() {
       $.ajax({
         type:'get',
         url : '/touroview/touroviewSelectReview',
         data : {touroview_num : touroview_num},
         dataType : 'json',
         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         success : function(result){
          //  review_div.html('');
          // 별점 수에 따라 별 개수 
          function generateStars(starCount) {
              let starsHtml = '';
              for (let i = 0; i < 5; i++) {
                  if (i < starCount) {
                      starsHtml += '<i class="fas fa-star"></i>';
                  } else {
                      starsHtml += '<i class="far fa-star"></i>';
                  }
              }
              return starsHtml;
          }
          $(result).each(function(){
            const ratingStars = generateStars(this.touroview_review_star);
            console.log(this.touroview_review_content);

            const html = `
                <div class="review-box row" id="reviewBOX">
                    <div class="col-2">
                      <a
                        data-bs-toggle="modal"
                        data-bs-target="#edit-profile"
                        href=""
                        ><img
                          src="../assets/images/profile/${'${this.img_real_name}'}"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>

                    <div class="col-10">
                      <div class="rating">
                        ${'${ratingStars}'}
                      </div>
                      <h6>by ${'${this.user_id}'}, ${'${this.touroview_review_register_date}'}</h6>
                      <p>${'${this.touroview_review_content}'}</p>
                    </div>
                  </div>
                `
                review_div.append(html);

                
              });
              // 별점에 대한 HTML을 생성하는 함수
              $(".review-box:lt(3)").css('display', 'flex'); // 초기갯수

              $("#moreReview").click(function(e){ // 클릭시 more
                e.preventDefault();
                $(".review-box:hidden").slice(0, 3).css('display', 'flex'); // 클릭시 more 갯수 지저정
                if($(".review-box:hidden").length == 0){ // 컨텐츠 남아있는지 확인
                  $("#moreReview").hide(); // 컨텐츠 없을시 alert 창 띄우기 
                }
           });

         },
         error : function(err) {
           console.log(err);
         }

       }) // end ajax
     }


     // moreReview 클릭 시 5개씩 리뷰 보이게 하기
     }) // end script
   </script>
   <!--   -->


  </head>

  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

    <!-- 세션 로그인 값 -->
    <input type="hidden" value="${sessionScope.loggedId}" id="sessionId"/>
    <input type="hidden" value="${touroviewVO.touroview_num}" id="touroviewNum"/>
    <input type="hidden" value="${tourVO.tour_num}" id="tourNum"/>

    <!-- 각 게시물 이름 및 각 게시물 이미지  -->
    <section class="hotel-single-section pt-0">
      <img
        src="../assets/images/single-hotel/bg-2.jpg"
        class="bg-img bg-bottom img-fluid blur-up lazyload"
        alt=""
      />
      <div class="hotel-title-section">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="hotel-name">
                <div class="left-part">
                  <div class="top">
                    <h2>${touroviewVO.touroview_title}</h2>
                    <div class="share-buttons">
                      <href="#" class="btn btn-solid"
                        ><i class="far fa-heart"></i> 하트</a
                      >
                    </div>
                  </div>
                </div>
                <div class="right-part">
                <!-- 신고 버튼 -->
                  <a
                    href="hotel-booking.html"
                    class="btn btn-rounded btn-sm color1"
                    >신고
                  </a>
                  <!-- 수정 버튼 -->
                  <c:if test="${isAuthor}">
                  <a href="${pageContext.request.contextPath}/touroview/touroview_update_delete?touroview_num=${touroviewVO.touroview_num}&action=update"
                    class="btn btn-rounded btn-sm color1">수정</a>
                  </c:if>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 각 게시물 이름 및 각 게시물 이미지  -->

    <!-- section start -->
    <section class="single-section xs-section bg-inner">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 col-lg-8">
            <!-- 이미지만 보여주는 테이블-->
            <div class="image_section">
              <div class="row">
                <div class="col-sm-8">
                  <div class="slide-1 arrow-dark zoom-gallery ratio2_3">
                    <div>
                      <a href="../assets/images/hotel/room/11.jpg">
                        <img
                          src="../assets/images/hotel/room/11.jpg"
                          class="img-fluid blur-up lazyload bg-img w-100"
                          alt=""
                        />
                        <h6 class="view-all">view all images</h6>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 d-none d-sm-block">
                  <div class="row">
                    <div class="col-12 ratio_59">
                      <div class="slide-1 zoom-gallery no-arrow">
                        <div>
                          <a href="../assets/images/hotel/room/4.jpg">
                            <img
                              src="../assets/images/hotel/room/4.jpg"
                              class="img-fluid blur-up lazyload bg-img w-100"
                              alt=""
                            />
                            <h6 class="view-all">room images</h6>
                          </a>
                        </div>
                      </div>
                      <div class="slide-1 zoom-gallery no-arrow m-cls">
                        <div>
                          <a href="../assets/images/hotel/room/13.jpg">
                            <img
                              src="../assets/images/hotel/room/13.jpg"
                              class="img-fluid blur-up lazyload bg-img w-100"
                              alt=""
                            />
                            <h6 class="view-all">poll images</h6>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="description-section">
              <!-- 큰 제목들 -->
              <div class="menu-top" id="searchBar">
                <div class="container">
                  <ul class="nav">
                    <li><a class="" href="#writerreview">게시글</a></li>
                    <li><a class="" href="#rooms">여행지</a></li>
                    <li><a class="" href="#review">리뷰</a></li>
                  </ul>
                </div>
              </div>
              <div class="description-details">
                <!-- 게시글  -->
                <div class="desc-box">
                  <div class="about page-section menu-part" id="about">
                    <p>${touroviewVO.touroview_content}</p>
                  </div>
                </div>
                <!-- 여행지  -->
                <div class="desc-box">
                  <h4 class="content-title">여행지</h4>
                  <div class="menu-part page-section" id="rooms">
                    <table class="rooms-box">
                      <tr>
                        <td>
                          <h6 class="room-title">${tourVO.tour_name}</h6>
                          <a href="#">
                            <img
                              src="../assets/${tourVO.tour_img1_path}"
                              class="img-fluid blur-up lazyload"
                              alt=""
                            />
                          </a>
                        </td>
                        <td>
                          <h5>${tourVO.tour_addr}</h5>
                          <h6>${tourVO.tour_postnum}</h6>
                          <p>${tourVO.tour_content}</p>
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>

                <!-- 리뷰 테이블  -->
               

                

                
                <div class="desc-box">
                  <h4 class="content-title">리뷰</h4>
                  <div class="menu-part page-section review" id="review">
                    <form>
                      <div class="row">
                        <div class="form-group col-10">
                          <label for="exampleFormControlTextarea1">
                            리뷰 작성
                          </label>
                          <textarea
                            class="form-control review_content"
                            id="exampleFormControlTextarea1"
                            rows="2"
                            placeholder=""
                          ></textarea>
                        </div>
                        <div class="col-2 row">
                          <div class="dropdown">
                            <button
                              class="btn btn-warning btn-rounded dropdown-toggle"
                              type="button"
                              id="dropdownStarCount"
                              data-bs-toggle="dropdown"
                              aria-expanded="false"
                            >
                              별점 선택
                            </button>
                            <ul
                              class="dropdown-menu"
                              aria-labelledby="dropdownStarCount"
                            >
                              <li>
                                <a class="dropdown-item" href="#" data-stars="5"
                                  ><i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i
                                ></a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="#" data-stars="4"
                                  ><i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="far fa-star"></i
                                ></a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="#" data-stars="3"
                                  ><i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i
                                ></a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="#" data-stars="2"
                                  ><i class="fas fa-star"></i>
                                  <i class="fas fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i
                                ></a>
                              </li>
                              <li>
                                <a class="dropdown-item" href="#" data-stars="1"
                                  ><i class="fas fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i>
                                  <i class="far fa-star"></i
                                ></a>
                              </li>
                            </ul>
                          </div>
                          <div class="submit-btn">
                            <button
                              type="button"
                              id="tourReviewBtn"
                              class="btn btn-rounded color1">
                              리뷰 작성
                            </button>
                          </div>
                        </div>
                      </div>
                    </form>
                    <!-- 댓글 추가하는 부분 -->
                  <div id="tour_review">
                    
                  </div>
                   
                    <button
                      type="button"
                      class="btn btn-secondary col-2 offset-xl-5"
                      id="moreReview"
                    >
                      리뷰 더보기
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <!-- 다른 게시물 추천 테이블 -->
            
          </div>
          <div class="col-xl-3 col-lg-4" id="booking">
            <div class="sticky-cls">
              <div class="single-sidebar">
                <div class="selection-section">
                  <div class="price-part">
                    <div class="left-part">
                      <span>${touroviewVO.touroview_regdate}</span>
                    </div>
                    <div class="right-part">
                      <h6>${touroviewVO.user_id}</h6>
                    </div>
                  </div>
                </div>
              </div>
              <div class="single-sidebar">
                <h6 class="contact-title">작성자 정보</h6>
                <p><i class="fas fa-phone-alt"></i>${userVO.user_tel}</p>
                <a href="#">
                  <p><i class="fas fa-envelope"></i>${userVO.user_email}</p>
                </a>
                <div class="social-box"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section end -->

    <!-- footer start -->
    <footer>
      <img
        src="../assets/images/tour/background/13.jpg"
        class="img-fluid blur-up lazyload bg-img"
        alt=""
      />
      <div class="footer section-b-space section-t-space">
        <div class="container">
          <div class="row order-row">
            <div class="col-xl-2 col-md-2 order-cls">
              <div class="footer-title mobile-title">
                <h5>Touro</h5>
              </div>
              <div class="footer-content">
                <div class="contact-detail">
                  <div class="footer-logo">
                    <img
                      src="../assets/images/icon/footer-logo.png"
                      alt=""
                      class="img-fluid blur-up lazyload"
                    />
                  </div>
                  <p>사이트 소개</p>
                  <ul class="contact-list">
                    <li>
                      <i class="fas fa-map-marker-alt"></i> A-32, Albany,
                      Newyork.
                    </li>
                    <li><i class="fas fa-phone-alt"></i> 518 - 457 - 5181</li>
                    <li><i class="fas fa-envelope"></i> contact@gmail.com</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-md-4">
              <div class="footer-title">
                <h5>인기 여행지</h5>
              </div>
              <div class="footer-content">
                <div class="footer-place">
                  <div class="row">
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/background/12.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>여행지 명</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-6 col-md-6">
              <div class="footer-title">
                <h5>인기 게시물</h5>
              </div>
              <div class="footer-content">
                <div class="footer-blog row">
                  <div class="media"></div>
                  <div class="media col-6">
                    <div class="img-part rounded5">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>일반 게시물</h5>
                      <p>간략한 내용</p>
                    </div>
                  </div>

                  <div class="media col-6">
                    <div class="img-part rounded5">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>일반 게시물</h5>
                      <p>간략한 내용</p>
                    </div>
                  </div>

                  <div class="media col-6">
                    <div class="img-part rounded5">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>일반 게시물</h5>
                      <p>간략한 내용</p>
                    </div>
                  </div>

                  <div class="media col-6">
                    <div class="img-part rounded5">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>일반 게시물</h5>
                      <p>간략한 내용</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- footer end -->

    <!-- tap to top -->
    <div class="tap-top">
      <div>
        <i class="fas fa-angle-up"></i>
      </div>
    </div>
    <!-- tap to top end -->

    <!-- setting start 화면 검정 + 왼쪽 정렬 , 오른쪽 정렬 -->
    <div class="theme-setting">
      <div class="dark">
        <input class="tgl tgl-skewed" id="dark" type="checkbox" />
        <label
          class="tgl-btn"
          data-tg-off="Dark"
          data-tg-on="Light"
          for="dark"
        ></label>
      </div>
      <div class="rtl">
        <input class="tgl tgl-skewed" id="rtl" type="checkbox" />
        <label
          class="tgl-btn"
          data-tg-off="RTL"
          data-tg-on="LTR"
          for="rtl"
        ></label>
      </div>
    </div>
    <!-- setting end -->

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- portfolio js -->
    <script src="../assets/js/jquery.magnific-popup.js"></script>
    <script src="../assets/js/zoom-gallery.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- smooth scroll js -->
    <script src="../assets/js/smooth-scroll.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <script>
      $("#datepicker").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm",
      });
      $("#datepicker1").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm",
      });
    </script>
  </body>
</html>
