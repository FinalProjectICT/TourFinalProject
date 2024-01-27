<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
<!-- 수정 -->
    <!--Google font-->
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
      rel="stylesheet"
    />
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

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/slick-theme.css"
    />

    <!-- Date-time picker css -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/datepicker.min.css"
    />

    <!--Drop zon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/dropzone.css" />

    <!-- 파일 업로드 : dropzone -->
    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" />

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" />
  </head>

  <style>
    /* 사용자 메시지 스타일 */
    .chat-bubble.chat-user {
        max-width: 70%;
        background-color: #DCF8C6;
        border-radius: 10px;
        padding: 10px;
        margin-bottom: 10px;
        float: right;
        clear: both;
    }

    /* 관리자 메시지 스타일 */
    .chat-bubble.chat-admin {
        max-width: 70%;
        background-color: #EAEAEA;
        border-radius: 10px;
        padding: 10px;
        margin-bottom: 10px;
        float: left;
        clear: both;
    }

    /* 채팅 입력창 스타일 */
    #inquiryInput {
        width: 80%;
        resize: none;
        margin-right: 10px;
    }

    /* 제출 버튼 스타일 */
    #submitButton {
        width: 20%;
    }
</style>


  <body>
    <!-- header start -->
    <%@ include file='../header/header.jsp' %>
    <!--  header end -->

    <!-- breadcrumb start -->
    <section class="breadcrumb-section pt-0">
      <img
        src="../assets/images/inner-bg.jpg"
        class="bg-img img-fluid blur-up lazyload"
        alt=""
      />
      <div class="breadcrumb-content">
        <div>
          <h2>마이페이지</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/touro">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                마이페이지
              </li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="title-breadcrumb">TOURO</div>
    </section>
    <!-- breadcrumb end -->

    <!-- section start-->
    <section
      class="small-section dashboard-section bg-inner"
      data-sticky_parent
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <div class="pro_sticky_info" data-sticky_column>
              <div class="dashboard-sidebar">
                <div class="profile-top">
                  <div class="profile-image">
                    <img
                      src="../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                  </div>
                  <div class="profile-detail">
                    <h5>${sessionScope.loggedId}</h5>
                    <h5>${userVO.user_addr}</h5>
                    <h6>${userVO.user_email}</h6>
                  </div>
                </div>
                <!-- 왼쪽 카테고리 메뉴 -->
                <div class="faq-tab">
                  <ul class="nav nav-tabs" id="top-tab" role="tablist">
                    <li class="nav-item">
                      <a
                        data-bs-toggle="tab"
                        class="nav-link"
                        href="#dashboard"
                        >메인페이지</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#profile"
                        >프로필수정</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#write"
                        >작성한 글</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#trace"
                        >나의 발자취</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#wishlist"
                        >여행지 담기</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#inquiry"
                        >작성한 문의 내역</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-9">
            <div class="product_img_scroll" data-sticky_column>
              <div class="faq-content tab-content" id="top-tabContent">
                <div class="tab-pane fade show active" id="dashboard">
                  <div class="dashboard-main">
                    <div class="dashboard-intro">
                    <h5>어서오세요! ${userVO.user_name} 님</h5>

                      <p>인사말</p>
                      <div class="complete-profile">
                        <div class="row">
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>작성한 리뷰 개수 </br> ${touroviewCount} </h6>
                            </div>
                          </div>
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>작성한 댓글 개수 </br> ${tourReviewCount}</h6>
                            </div>
                          </div>
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>여행지 담은 개수 </br> ${touroWishCount}</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="counter-section">
                      <div class="row">
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 발자취</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 발자취</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 여행지 담기 보기</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 여행지 담기 보기</h5>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 프로필 수정 페이지 -->
                <div class="tab-pane fade" id="profile">
                  <div class="dashboard-box">
                    <div
                      class="dashboard-title d-flex justify-content-between align-items-center"
                    >
                      <h4>프로필</h4>
                      <span
                        data-bs-toggle="modal"
                        data-bs-target="#edit-profile"
                        >수정</span
                      >
                    </div>
                    <div class="profile-image mb-4">
                      <img
                        src="../assets/images/avtar/1.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                    </div>
                    <div class="dashboard-detail">
                      <ul class="list-unstyled">
                        <!-- 아이디 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>아이디</span>
                          <span>${sessionScope.loggedId}</span>
                        </li>
                        <!-- 생년월일 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>생년월일</span>
                          <span>${userVO.user_age}</span>
                        </li>
                        <!-- 성별 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>성별</span>
                          <span>${userVO.user_gender}</span>
                        </li>
                        <!-- 전화번호 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>전화번호</span>
                          <span>${userVO.user_tel}</span>
                        </li>
                        <!-- 메일주소 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>메일 주소</span>
                          <span>${userVO.user_email}</span>
                        </li>
                        <!-- 주소 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>주소</span>
                          <span>${userVO.user_addr}</span>
                        </li>
                        <!-- 전화번호 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>전화번호</span>
                          <span>${userVO.user_tel}</span>
                        </li>
                        <!-- 여행지 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>선호 여행지</span>
                          <span>${userVO.user_prefer_loc1}</span>
                          <span>${userVO.user_prefer_loc2}</span>
                          <span>${userVO.user_prefer_loc3}</span>
                        </li>
                        <!-- 여행 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>선호 여행 유형</span>
                          <span>${userVO.user_prefer_type1}</span>
                          <span>${userVO.user_prefer_type2}</span>
                          <span>${userVO.user_prefer_type3}</span>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>

                <!-- 작성한 글 -->
                <div class="tab-pane fade" id="write">
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 게시물</h4>
                    </div>
                    <div class="dashboard-detail">
                    <c:forEach var="touroview" items="${touroviewVO}" varStatus="status">
                      <div class="booking-box">
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">${touroview.touroview_title}</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">${touroview.user_id}</h6>
                              <p>${touroview.touroview_regdate}</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-info">게시물 보기</span>
                        </div>
                      </div>
                    </c:forEach>
                    </div>
                  </div>

                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 리뷰</h4>
                    </div>
                    <div class="dashboard-detail">
                    <c:forEach var="touroviewreview" items="${touroviewReviewVO}" varStatus="status">
                      <div class="booking-box">
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">${touroviewreview.touroview_review_content}</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">${touroviewreview.user_id}</h6>
                              <p>${touroviewreview.touroview_review_register_date}</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-success">리뷰 보기</span>
                        </div>
                      </div>
                      </c:forEach>
                    </div>
                  </div>


                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 댓글</h4>
                    </div>
                    <div class="dashboard-detail">
                    <c:forEach var="tourreview" items="${tourReviewVO}" varStatus="status">
                      <div class="booking-box">
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">${tourreview.tour_review_content}</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">${tourreview.user_id}</h6>
                              <p>${tourreview.tour_review_star}</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-secondary">댓글보기</span>
                        </div>
                      </div>
                    </div>
                   </c:forEach>
                  </div>
                </div>
              </div>
                <!-- 나의 발자취 페이지 -->
                <div class="tab-pane fade" id="trace">
                  <div class="dashboard-box">
                    <div class="row">
                      <div class="dashboard-title col-6">
                        <h4>나의 발자취</h4>
                      </div>
                      <div
                        class="dashboard-title col"
                        style="justify-content: right"
                      >
                        <a href="user/appReview">영수증 앱 리뷰</a>
                      </div>
                      <div
                        class="dashboard-title col"
                        style="justify-content: right"
                      >
                        <span
                          data-bs-toggle="modal"
                          data-bs-target="#edit-address"
                          >영수증 리뷰 작성
                        </span>
                      </div>
                    </div>


                    <div
                      class="product-wrapper-grid ratio3_2 special-section grid-box"
                    >
                      <div class="row content grid">
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 여행지 담기 페이지 -->
                <div class="tab-pane fade" id="wishlist">
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>내가 담은 여행지</h4>
                    </div>

                    <div
                      id="wishListContainer" class="product-wrapper-grid ratio3_2 special-section grid-box" 
                    >
                      <div class="row content grid">
                      <!-- 여기에 WishlistVO 목록 표시 --> 
                      <c:forEach var="wishList" items="${wishListVO}" varStatus="status">
                        <div class="col-xl-4 col-sm-6 grid-item">
                              <div class="special-box">
                                  <div class="special-img">
                                      <a href="/tourDetail/${wishList.tour_num}">
                                        <img src="../assets/${WishList.tour_num.tour_img1_path}" class="img-fluid blur-up lazyload bg-img"
                                        alt="" />
                                      </a>
                                      <div class="content_inner">
                                          <a href="/tourDetail/${wishList.tour_num}">
                                              <h5>${WishList.wishlist_num}</h5>
                                          </a>
                                          <h6>${WishList.tour_num}</h6>
                                      </div>
                                      <!-- 삭제 아이콘 -->
                                      <div class="top-icon">
                                          <a href="#" class=""
                                            data-bs-toggle="tooltip"
                                            data-placement="top"
                                            title="Remove from Wishlist">
                                              <i class="fas fa-times"></i>
                                          </a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                </div>

                <!--작성한 문의 내역 -->
                <div class="tab-pane fade" id="inquiry">
    <div class="dashboard-main">
        <div class="dashboard-intro" style="width: 270px; background-color: #ebebeb">
            <h5>문의내역</h5>
        </div>
        <div class="row">
            <c:forEach var="inquiry" items="${inquiryVO}" varStatus="status">
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">제목: ${inquiry.inquiry_title}</h5>
                            <p class="card-text">답변 여부: 
                                <span th:class="${inquiry.inquiry_process == 1} ? 'text-success' : 'text-warning'">
                                    ${inquiry.inquiry_process == 1 ? '답변 완료' : '답변 대기'}
                                </span>
                            </p>
                            <p class="card-text">문의 내용: ${inquiry.inquiry_content}</p>

                            <!-- 기타 필요한 정보 추가 -->

                            <!-- 토글 버튼 -->
                            <button class="btn btn-link" onclick="toggleDetails(${inquiry.inquiry_num})">답변</button>
                            
                            <!-- 자세한 내용 -->
                            <div id="details-${inquiry.inquiry_num}" style="display: none;">
                                <p>답변 내용: ${inquiry.inquiryReviewVO.inquiry_review_content}</p>
                                <!-- 기타 자세한 내용 추가 -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 한 행에 3개씩 나누기 위해 추가한 조건문 -->
                <c:if test="${status.index % 3 == 2}">
                    </div><div class="row">
                </c:if>
            </c:forEach>
        </div>
    </div>
</div>





                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section end-->

    <!-- footer start -->
    <%@ include file='../footer/footer.jsp' %>
 <!-- footer end -->

    <!-- tap to top -->
    <div class="tap-top">
      <div>
        <i class="fas fa-angle-up"></i>
      </div>
    </div>
    <!-- tap to top end -->

    <!-- setting start -->
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

    <!-- edit profile modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-profile"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">프로필 수정</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="profileImage">프로필 사진</label>
                  <input type="file" class="form-control" id="profileImage" accept="image/*" onchange="previewImage()" />
                  <img id="imagePreview" src="#" alt="프로필 미리보기" style="display: none; max-width: 100%; margin-top: 10px;">
                </div>

              <div class="row">
                <div class="form-group col-md-6">
                  <label for="first">아이디</label>
                  <input
                    type="text"
                    class="form-control"
                    id="first"
                    placeholder="아이디"
                    value="${userVO.user_id}" readonly
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="last">전화번호</label>
                  <input
                    type="text"
                    class="form-control"
                    id="last"
                    placeholder="전화번호"
                    value="${userVO.user_tel}"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="gender">성별</label>
                  <select id="gender" class="form-control">
                    <option selected>선택</option>
                    <option ${userVO.user_gender == '여성' ? 'selected' : ''}>여성</option>
                    <option ${userVO.user_gender == '남성' ? 'selected' : ''}>남성</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>생년월일</label>
                  <input
                    class="form-control"
                    placeholder="18 april"
                    id="datepicker"
                    value="${userVO.user_age}"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="inputAddress">주소</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputAddress"
                    placeholder="주소"
                    value="${userVO.user_addr}"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="inputCity">메일주소</label>
                  <input type="text" class="form-control" id="inputCity" value="${userVO.user_email}"/>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState1">여행 취향1</label>
                  <select id="input" class="form-control">
                      <option selected>선택</option>
                      <option ${userVO.user_prefer_loc1 == '관광지' ? 'selected' : ''}>관광지</option>
                      <option ${userVO.user_prefer_loc1 == '음식점' ? 'selected' : ''}>음식점</option>
                      <option ${userVO.user_prefer_loc1 == '숙박' ? 'selected' : ''}>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">여행지 취향1</label>
                  <select id="inputarea1" class="form-control">
                    <option>선택</option>
                    <option>서울</option>
                    <option>인천</option>
                    <option>대전</option>
                    <option>대구</option>
                    <option>광주</option>
                    <option>부산</option>
                    <option>울산</option>
                    <option>세종특별자치시</option>
                    <option>경기도</option>
                    <option>강원특별자치도</option>
                    <option>충청북도</option>
                    <option>충청남도</option>
                    <option>경상북도</option>
                    <option>전라북도</option>
                    <option>전라남도</option>
                    <option>제주도</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState">여행 취향2</label>
                  <select id="inputState2" class="form-control">
                    <option selected>선택</option>
                    <option>관광지</option>
                    <option>음식점</option>
                    <option>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">여행지 취향2</label>
                  <select id="inputarea2" class="form-control">
                    <option>선택</option>
                    <option>서울</option>
                    <option>인천</option>
                    <option>대전</option>
                    <option>대구</option>
                    <option>광주</option>
                    <option>부산</option>
                    <option>울산</option>
                    <option>세종특별자치시</option>
                    <option>경기도</option>
                    <option>강원특별자치도</option>
                    <option>충청북도</option>
                    <option>충청남도</option>
                    <option>경상북도</option>
                    <option>전라북도</option>
                    <option>전라남도</option>
                    <option>제주도</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState">여행지 취향3</label>
                  <select id="inputState3" class="form-control">
                    <option selected>선택</option>
                    <option>관광지</option>
                    <option>음식점</option>
                    <option>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">여행 취향3</label>
                  <select id="inputarea3" class="form-control">
                    <option>선택</option>
                    <option>서울</option>
                    <option>인천</option>
                    <option>대전</option>
                    <option>대구</option>
                    <option>광주</option>
                    <option>부산</option>
                    <option>울산</option>
                    <option>세종특별자치시</option>
                    <option>경기도</option>
                    <option>강원특별자치도</option>
                    <option>충청북도</option>
                    <option>충청남도</option>
                    <option>경상북도</option>
                    <option>전라북도</option>
                    <option>전라남도</option>
                    <option>제주도</option>
                  </select>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              닫기
            </button>
            <button type="button" class="btn btn-solid" onclick="updateProfile()">변경하기</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit profile modal start -->

    <!-- 영수증 리뷰 모달 -->
    <!-- edit address modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-address"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">영수증 리뷰 등록</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="old">영수증 이미지 파일 업로드</label>
                </div>
                <div
                  class="dropzone"
                  id="singleFileUpload"
                  style="margin-bottom: 10px"
                >
                  <div class="dz-message needsclick">
                    <i class="icon-cloud-up"></i>
                    <h6>Drop files here or click to upload.</h6>
                  </div>
                </div>
                <div class="form-group col-12">
                  <label for="old">사업자번호</label>
                  <input type="text" class="form-control" id="old" />
                </div>
                <div class="form-group col-12">
                  <label for="new">주소</label>
                  <input type="text" class="form-control" id="new" />
                </div>
                <div class="form-group col-12">
                  <label for="comfirm">리뷰 내용</label>
                  <input type="text" class="form-control" id="comfirm" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              취소
            </button>
            <button type="button" class="btn btn-solid">등록하기</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit address modal start -->

    <!-- edit phone no modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-phone"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">change phone no</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="ph-o">old phone no</label>
                  <input type="number" class="form-control" id="ph-o" />
                </div>
                <div class="form-group col-12">
                  <label for="ph-n">enter new phone no</label>
                  <input type="number" class="form-control" id="ph-n" />
                </div>
                <div class="form-group col-12">
                  <label for="ph-c">confirm your phone no</label>
                  <input type="number" class="form-control" id="ph-c" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit phone no modal start -->

    <!-- edit password modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-password"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">change email address</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="p-o">old password</label>
                  <input type="email" class="form-control" id="p-o" />
                </div>
                <div class="form-group col-12">
                  <label for="p-n">enter new password</label>
                  <input type="email" class="form-control" id="p-n" />
                </div>
                <div class="form-group col-12">
                  <label for="p-c">confirm your password</label>
                  <input type="email" class="form-control" id="p-c" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- edit password modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-card"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">edit your card</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="name">name on card</label>
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  placeholder="Mark jecno"
                />
              </div>
              <div class="form-group">
                <label for="number">card number</label>
                <input
                  type="text"
                  class="form-control"
                  id="number"
                  placeholder="7451 2154 2115 2510"
                />
              </div>
              <div class="row">
                <div class="form-group col-md-8">
                  <label for="expiry">expiry date</label>
                  <input
                    type="text"
                    class="form-control"
                    id="expiry"
                    placeholder="12/23"
                  />
                </div>
                <div class="form-group col-md-4">
                  <label for="cvv">cvv</label>
                  <input
                    type="password"
                    maxlength="3"
                    class="form-control"
                    id="cvv"
                    placeholder="&#9679;&#9679;&#9679;"
                  />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">update card</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- add card modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="add-card"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">add new card</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="a-month">card type</label>
                <select id="a-month" class="form-control">
                  <option selected>add new card...</option>
                  <option>credit card</option>
                  <option>debit card</option>
                  <option>debit card with ATM pin</option>
                </select>
              </div>
              <div class="form-group">
                <label for="a-na">name on card</label>
                <input type="text" class="form-control" id="a-na" />
              </div>
              <div class="form-group">
                <label for="a-n">card number</label>
                <input type="text" class="form-control" id="a-n" />
              </div>
              <div class="row">
                <div class="form-group col-md-8">
                  <label for="a-e">expiry date</label>
                  <input type="text" class="form-control" id="a-e" />
                </div>
                <div class="form-group col-md-4">
                  <label for="a-c">cvv</label>
                  <input
                    type="password"
                    maxlength="3"
                    class="form-control"
                    id="a-c"
                  />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">add card</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- add card modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="delete-account"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Account deletion request</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <p class="text-dark">
              Before you leave, please tell us why you'd like to delete your
              Rica account. This information will help us improve. (optional)
            </p>
            <form>
              <textarea
                class="form-control"
                id="exampleFormControlTextarea1"
                rows="3"
              ></textarea>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">
              delete my account
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- stick section js -->
    <script src="../assets/js/sticky-kit.js"></script>

    <!-- stick section js -->
    <script src="../assets/js/apexcharts.js"></script>
    <script src="../assets/js/chart.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>
    
        <!-- 휴대폰 영수증 리뷰 앱 관련 js-->
    <script src="../assets/js/moblieApp.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <!-- Dropzone | 영수증 리뷰 사진 올리기 --> 
    <script>
      Dropzone.autoDiscover = false; // deprecated 된 옵션. false로 해놓는걸 공식문서에서 명시

      const dropzone = new Dropzone("div.dropzone", {
        url: "https://httpbin.org/post",
      });
    </script>

    <script>
      $("#datepicker").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm yy",
      });

      $(document).ready(function () {
        if ($(window).width() > 991) {
          $(".product_img_scroll, .pro_sticky_info").stick_in_parent();
        }
      });
    </script>

    <script>
      function previewImage() {
        var input = document.getElementById('profileImage');
        var preview = document.getElementById('imagePreview');

        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            preview.src = e.target.result;
            preview.style.display = 'block';
          };

          reader.readAsDataURL(input.files[0]);
        }
      }
    </script>





<script>
  function updateProfile() {
    var user_id = document.getElementById('first').value;
    var user_tel = document.getElementById('last').value;
    var user_gender = document.getElementById('gender').value;
    var user_age = document.getElementById('datepicker').value;
    var user_email = document.getElementById('inputCity').value;
    var user_addr = document.getElementById('inputAddress').value;
    var userTravelPreference = document.getElementById('inputState1').value;
    var userTravelLocation = document.getElementById('inputState2').value;

    // 서버로 전송할 데이터 생성
    var data = {
      user_id: user_id,
      user_tel: user_tel,
      user_gender: user_gender,
      user_age: user_age,
      user_email: user_email,
      user_addr: user_addr,
      user_prefer_type1: userTravelPreference, 
      user_prefer_loc1: userTravelLocation 
    };

    // ajax를 사용하여 서버에 데이터 전송
    $.ajax({
      type: 'POST',
      url: '/updateUserProfile',
      contentType: 'application/json',
      data: JSON.stringify(data),
      success: function (response) {
        // 성공 시 응답
        console.log(response);
        alert('프로필이 성공적으로 업데이트되었습니다.');
      },
      error: function (error) {
        // 오류 처리
        console.error('프로필 업데이트 중 오류 발생:', error);
        alert('프로필 업데이트 중 오류 발생');
      }
    });
  }
</script>

<!-- 문의 답변 토글 -->
<script>
        function toggleDetails(inquiryNum) {
            var detailsDiv = document.getElementById("details-" + inquiryNum);
            if (detailsDiv.style.display === "none") {
                detailsDiv.style.display = "block";
            } else {
                detailsDiv.style.display = "none";
            }
        }
    </script>
</div>





<script th:inline="javascript">
    /*<![CDATA[*/
    function submitInquiry() {
        var chatInput = $("#inquiryInput").val();

        if (chatInput) {
            // 사용자가 입력한 채팅을 채팅창에 추가
            $("#chatMessages").append('<div class="chat-bubble chat-user"><p>' + chatInput + '</p></div>');

            // 서버에 문의 제출
            $.ajax({
                type: "POST",
                url: "/submitInquiry",
                data: { inquiryContent: chatInput },
                success: function () {
                    // 성공적으로 제출되었을 때 처리
                    console.log("Inquiry submitted successfully.");
                },
                error: function () {
                    // 오류가 발생했을 때 처리
                    console.error("Failed to submit inquiry.");
                }
            });

            // 입력 필드 초기화
            $("#inquiryInput").val('');

            // 맨 아래로 스크롤
            var chatMessages = $("#chatMessages");
            chatMessages.scrollTop(chatMessages[0].scrollHeight);
        }
    }
    /*]]>*/
</script>







  </body>
</html>
