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
                      src="../assets/images/profile/${profileImage}"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                  </div>
                  <div class="profile-detail">
                    <h5>${userVO.user_name}</h5>
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
                        <div class="col-xl-4 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h3>${touroMateCount}</h3>
                            <h5>여행친구</h5>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h3>${touroviewCount}</h3>
                            <h5>여행 후기</h5>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h3>${receiptCount}</h3>
                            <h5>나의 발자취</h5>
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
                        src="../assets/images/profile/${profileImage}"
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
                          <span>나이</span>
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
                        <!-- 여행 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>선호 여행 유형</span>
                          <span>${userVO.user_prefer_type1}</span>
                          <span>${userVO.user_prefer_type2}</span>
                          <span>${userVO.user_prefer_type3}</span>
                        </li>
                        <!-- 여행지 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>선호 여행지</span>
                          <span><c:choose>
                            <c:when test="${userVO.user_prefer_loc1 == '1.0'}">서울</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '2.0'}">인천</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '3.0'}">대전</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '4.0'}">대구</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '5.0'}">광주</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '6.0'}">부산</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '7.0'}">울산</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '8.0'}">세종특별자치시</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '31.0'}">경기도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '32.0'}">강원특별자치도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '33.0'}">충청북도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '34.0'}">충청남도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '35.0'}">경상북도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '36.0'}">경상남도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '37.0'}">전라북도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '38.0'}">전라남도</c:when>
                              <c:when test="${userVO.user_prefer_loc1 == '39.0'}">제주도</c:when>
                              <c:otherwise>${userVO.user_prefer_loc1}</c:otherwise>
                          </c:choose></span>
                          <span><c:choose>
                            <c:when test="${userVO.user_prefer_loc2 == '1.0'}">서울</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '2.0'}">인천</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '3.0'}">대전</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '4.0'}">대구</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '5.0'}">광주</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '6.0'}">부산</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '7.0'}">울산</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '8.0'}">세종특별자치시</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '31.0'}">경기도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '32.0'}">강원특별자치도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '33.0'}">충청북도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '34.0'}">충청남도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '35.0'}">경상북도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '36.0'}">경상남도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '37.0'}">전라북도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '38.0'}">전라남도</c:when>
                              <c:when test="${userVO.user_prefer_loc2 == '39.0'}">제주도</c:when>
                              <c:otherwise>${userVO.user_prefer_loc2}</c:otherwise>
                          </c:choose></span>
                          <span><c:choose>
                            <c:when test="${userVO.user_prefer_loc3 == '1.0'}">서울</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '2.0'}">인천</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '3.0'}">대전</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '4.0'}">대구</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '5.0'}">광주</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '6.0'}">부산</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '7.0'}">울산</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '8.0'}">세종특별자치시</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '31.0'}">경기도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '32.0'}">강원특별자치도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '33.0'}">충청북도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '34.0'}">충청남도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '35.0'}">경상북도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '36.0'}">경상남도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '37.0'}">전라북도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '38.0'}">전라남도</c:when>
                              <c:when test="${userVO.user_prefer_loc3 == '39.0'}">제주도</c:when>
                              <c:otherwise>${userVO.user_prefer_loc3}</c:otherwise>
                          </c:choose></span>

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
                    <c:forEach var="touroview" items="${touroviewVO}">
                      <div class="booking-box">
                        <!-- 게시물 정보 표시 -->
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
                  <div class="pagination">
                    <c:forEach begin="1" end="${totalPages}" var="pageNum">
                        <c:choose>
                            <c:when test="${pageNum == page}">
                                <span class="current">${pageNum}</span>
                            </c:when>
                            <c:otherwise>
                              <a href="${pageContext.request.contextPath}/mypage?page=${pageNum}">${pageNum}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
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

                    <!-- 지도 --> 
                    <div class="menu-part tab-pane fade map" id="location" style="width: 100%; height: 400px;">
                      <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.9147718689!2d-74.11976358820196!3d40.69740344169578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sin!4v1568001991098!5m2!1sen!2sin"
                        style="border: 0"
                        allowfullscreen=""
                      ></iframe>
                    </div>


                    <div
                      class="product-wrapper-grid ratio3_2 special-section grid-box">
                      <div class="row content grid">
                        <!-- 여기에 receipt 목록 -->
                      <c:forEach var="receipt" items="${receiptVO}" varStatus="status">
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="/tourDetail/${receipt.tour_num}">
                                <!-- 이미지 -->
                                <img
                                  src=""
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <!-- 여행지 제목-->
                                <a href="/tourDetail/${receipt.tour_num}"">
                                  <h5>${receipt.receipt_name}</h5>
                                </a>
                                <h6>${receipt.receipt_date}</h6>
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
                        <!-- 2행 3열 레이아웃을 위한 조건문 -->
                        <c:if test="${status.index % 3 == 0}">
                        </div><div class="row">
                        </c:if>
                      </c:forEach>
                    </div>
                  </div> 
                  <!-- 페이징 -->
                      <div class="row">
                        <div class="col-md-12">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <c:forEach begin="1" end="${totalPages}" var="pageNum">
                                        <li class="page-item <c:if test="${pageNum == currentPage}">active</c:if>">
                                            <a class="page-link" href="?page=${pageNum}">${pageNum}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </nav>
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
                      id="wishListContainer" class="product-wrapper-grid ratio3_2 special-section grid-box" >
                      <div class="row content grid">
                      <!-- 여기에 WishlistVO 목록 표시 --> 
                       <c:forEach var="wishList" items="${wishListVO}" varStatus="status">
                        <!--<div class="col-xl-4 col-sm-6 grid-item">
                              <div class="special-box">
                                  <div class="special-img">
                                      <a href="/tourDetail/${wishList.tour_num}">
                                        <img src="../assets/${wishList.tour_img1_path}" class="img-fluid blur-up lazyload bg-img"
                                        alt="" />
                                      </a>
                                      <div class="content_inner">
                                          <a href="/tourDetail/${wishList.tour_num}">
                                              <h5>${wishList.wishlist_num}</h5>
                                          </a>
                                          <h6>${wishList.tour_num}</h6>
                                      </div> -->
                                      <!-- 삭제 아이콘 -->
                                      <!-- <div class="top-icon">
                                          <a href="#" class=""
                                            data-bs-toggle="tooltip"
                                            data-placement="top"
                                            title="Remove from Wishlist">
                                              <i class="fas fa-times"></i>
                                          </a>
                                      </div>
                                  </div>
                              </div>
                          </div>-->
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
                                              <p>답변 내용: ${inquiry.inquiry_review_content}</p>
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
                  <label>나이</label>
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
                  <label for="inputEmail">메일주소</label>
                  <input type="text" class="form-control" id="inputCity" value="${userVO.user_email}"/>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState1">선호 여행 유형1</label>
                  <select id="input" class="form-control">
                      <option value="관광지" ${userVO.user_prefer_type1 == '관광지' ? 'selected' : ''}>관광지</option>
                      <option value="음식점" ${userVO.user_prefer_type1 == '음식점' ? 'selected' : ''}>음식점</option>
                      <option value="숙박" ${userVO.user_prefer_type1 == '숙박' ? 'selected' : ''}>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">선호 여행지1</label>
                  <select id="inputarea1" class="form-control">
                    <option value="1.0" ${userVO.user_prefer_loc1 == '1.0' ? 'selected' : ''}>서울</option>
                    <option value="2.0" ${userVO.user_prefer_loc1 == '2.0' ? 'selected' : ''}>인천</option>
                    <option value="3.0" ${userVO.user_prefer_loc1 == '3.0' ? 'selected' : ''}>대전</option>
                    <option value="4.0" ${userVO.user_prefer_loc1 == '4.0' ? 'selected' : ''}>대구</option>
                    <option value="5.0" ${userVO.user_prefer_loc1 == '5.0' ? 'selected' : ''}>광주</option>
                    <option value="6.0" ${userVO.user_prefer_loc1 == '6.0' ? 'selected' : ''}>부산</option>
                    <option value="7.0" ${userVO.user_prefer_loc1 == '7.0' ? 'selected' : ''}>울산</option>
                    <option value="8.0" ${userVO.user_prefer_loc1 == '8.0' ? 'selected' : ''}>세종특별자치시</option>
                    <option value="31.0" ${userVO.user_prefer_loc1 == '31.0' ? 'selected' : ''}>경기도</option>
                    <option value="32.0" ${userVO.user_prefer_loc1 == '32.0' ? 'selected' : ''}>강원도</option>
                    <option value="33.0" ${userVO.user_prefer_loc1 == '33.0' ? 'selected' : ''}>충청북도</option>
                    <option value="34.0" ${userVO.user_prefer_loc1 == '34.0' ? 'selected' : ''}>충청남도</option>
                    <option value="35.0" ${userVO.user_prefer_loc1 == '35.0' ? 'selected' : ''}>경상북도</option>
                    <option value="36.0" ${userVO.user_prefer_loc1 == '36.0' ? 'selected' : ''}>경상남도</option>
                    <option value="37.0" ${userVO.user_prefer_loc1 == '37.0' ? 'selected' : ''}>전라북도</option>
                    <option value="38.0" ${userVO.user_prefer_loc1 == '38.0' ? 'selected' : ''}>전라남도</option>
                    <option value="39.0" ${userVO.user_prefer_loc1 == '39.0' ? 'selected' : ''}>제주도</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState">선호 여행 유형2</label>
                  <select id="inputState2" class="form-control">
                    <option value="관광지" ${userVO.user_prefer_type2 == '관광지' ? 'selected' : ''}>관광지</option>
                    <option value="음식점" ${userVO.user_prefer_type2 == '음식점' ? 'selected' : ''}>음식점</option>
                    <option value="숙박" ${userVO.user_prefer_type2 == '숙박' ? 'selected' : ''}>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">선호 여행지2</label>
                  <select id="inputarea2" class="form-control">
                    <option value="1.0" ${userVO.user_prefer_loc2 == '1.0' ? 'selected' : ''}>서울</option>
                    <option value="2.0" ${userVO.user_prefer_loc2 == '2.0' ? 'selected' : ''}>인천</option>
                    <option value="3.0" ${userVO.user_prefer_loc2 == '3.0' ? 'selected' : ''}>대전</option>
                    <option value="4.0" ${userVO.user_prefer_loc2 == '4.0' ? 'selected' : ''}>대구</option>
                    <option value="5.0" ${userVO.user_prefer_loc2 == '5.0' ? 'selected' : ''}>광주</option>
                    <option value="6.0" ${userVO.user_prefer_loc2 == '6.0' ? 'selected' : ''}>부산</option>
                    <option value="7.0" ${userVO.user_prefer_loc2 == '7.0' ? 'selected' : ''}>울산</option>
                    <option value="8.0" ${userVO.user_prefer_loc2 == '8.0' ? 'selected' : ''}>세종특별자치시</option>
                    <option value="31.0" ${userVO.user_prefer_loc2 == '31.0' ? 'selected' : ''}>경기도</option>
                    <option value="32.0" ${userVO.user_prefer_loc2 == '32.0' ? 'selected' : ''}>강원도</option>
                    <option value="33.0" ${userVO.user_prefer_loc2 == '33.0' ? 'selected' : ''}>충청북도</option>
                    <option value="34.0" ${userVO.user_prefer_loc2 == '34.0' ? 'selected' : ''}>충청남도</option>
                    <option value="35.0" ${userVO.user_prefer_loc2 == '35.0' ? 'selected' : ''}>경상북도</option>
                    <option value="36.0" ${userVO.user_prefer_loc2 == '36.0' ? 'selected' : ''}>경상남도</option>
                    <option value="37.0" ${userVO.user_prefer_loc2 == '37.0' ? 'selected' : ''}>전라북도</option>
                    <option value="38.0" ${userVO.user_prefer_loc2 == '38.0' ? 'selected' : ''}>전라남도</option>
                    <option value="39.0" ${userVO.user_prefer_loc2 == '39.0' ? 'selected' : ''}>제주도</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState">선호 여행 유형3</label>
                  <select id="inputState3" class="form-control">
                    <option value="관광지" ${userVO.user_prefer_type3 == '관광지' ? 'selected' : ''}>관광지</option>
                    <option value="음식점" ${userVO.user_prefer_type3 == '음식점' ? 'selected' : ''}>음식점</option>
                    <option value="숙박" ${userVO.user_prefer_type3 == '숙박' ? 'selected' : ''}>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">선호 여행지3</label>
                  <select id="inputarea3" class="form-control">
                    <option value="1.0" ${userVO.user_prefer_loc3 == '1.0' ? 'selected' : ''}>서울</option>
                    <option value="2.0" ${userVO.user_prefer_loc3 == '2.0' ? 'selected' : ''}>인천</option>
                    <option value="3.0" ${userVO.user_prefer_loc3 == '3.0' ? 'selected' : ''}>대전</option>
                    <option value="4.0" ${userVO.user_prefer_loc3 == '4.0' ? 'selected' : ''}>대구</option>
                    <option value="5.0" ${userVO.user_prefer_loc3 == '5.0' ? 'selected' : ''}>광주</option>
                    <option value="6.0" ${userVO.user_prefer_loc3 == '6.0' ? 'selected' : ''}>부산</option>
                    <option value="7.0" ${userVO.user_prefer_loc3 == '7.0' ? 'selected' : ''}>울산</option>
                    <option value="8.0" ${userVO.user_prefer_loc3 == '8.0' ? 'selected' : ''}>세종특별자치시</option>
                    <option value="31.0" ${userVO.user_prefer_loc3 == '31.0' ? 'selected' : ''}>경기도</option>
                    <option value="32.0" ${userVO.user_prefer_loc3 == '32.0' ? 'selected' : ''}>강원도</option>
                    <option value="33.0" ${userVO.user_prefer_loc3 == '33.0' ? 'selected' : ''}>충청북도</option>
                    <option value="34.0" ${userVO.user_prefer_loc3 == '34.0' ? 'selected' : ''}>충청남도</option>
                    <option value="35.0" ${userVO.user_prefer_loc3 == '35.0' ? 'selected' : ''}>경상북도</option>
                    <option value="36.0" ${userVO.user_prefer_loc3 == '36.0' ? 'selected' : ''}>경상남도</option>
                    <option value="37.0" ${userVO.user_prefer_loc3 == '37.0' ? 'selected' : ''}>전라북도</option>
                    <option value="38.0" ${userVO.user_prefer_loc3 == '38.0' ? 'selected' : ''}>전라남도</option>
                    <option value="39.0" ${userVO.user_prefer_loc3 == '39.0' ? 'selected' : ''}>제주도</option>
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
    var userId = "${userId}";
    console.log(userId);
    var userTel = document.getElementById('last').value;
    console.log(last);
    var userGender = document.getElementById('gender').value;
    var userAge = document.getElementById('datepicker').value;
    var userAddr = document.getElementById('inputAddress').value;
    var userEmail = document.getElementById('inputEmail').value;
    var userPreferType1 = document.getElementById('inputState1').value;
    var userPreferArea1 = document.getElementById('inputarea1').value;
    var userPreferType2 = document.getElementById('inputState2').value;
    var userPreferArea2 = document.getElementById('inputarea2').value;
    var userPreferType3 = document.getElementById('inputState3').value;
    var userPreferArea3 = document.getElementById('inputarea3').value;


    // 구성된 데이터 객체
    var userData = {
      userId: userId,
        userTel: userTel,
        userGender: userGender,
        userAge: userAge,
        userAddr: userAddr,
        userEmail: userEmail,
        userPreferType1: userPreferType1,
        userPreferArea1: userPreferArea1,
        userPreferType2: userPreferType2,
        userPreferArea2: userPreferArea2,
        userPreferType3: userPreferType3,
        userPreferArea3: userPreferArea3
    };

    // AJAX 요청
    $.ajax({
        url: '/profile', // 프로필 업데이트를 처리하는 서버 URL
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify(userData),
        success: function(response) {
            // 성공 처리
            alert('프로필이 업데이트되었습니다.');
            window.location.href = '/mypage'; // 프로필 페이지로 리다이렉트
        },
        error: function(xhr, status, error) {
            // 에러 처리
            alert('프로필 업데이트에 실패했습니다.');
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


 <!-- 카카오 지도 api 관련-->
 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c24da0b739365422264a4d30230c887c"></script>


<!-- 페이징 -->
 <!-- <script>
  // 페이지네이션 클릭 이벤트
  $(".pagination a").click(function(e) {
    e.preventDefault(); // 기본 링크 동작 방지
    var page = $(this).attr("href").split("page=")[1]; // 페이지 번호 추출

    $.ajax({
        url: '/mypage', // 요청할 URL
        type: 'GET',
        data: { page: page, size: 6 },
        success: function(response) {
            // 목록을 담을 부분을 비웁니다.
        var container = $(".product-wrapper-grid .grid");
        container.empty();

        // 서버로부터 받은 데이터를 이용해 새로운 목록을 구성합니다.
        $.each(response, function(index, receipt) {
          var itemHtml = '<div class="col-xl-4 col-sm-6 grid-item">' +
                           '<div class="special-box">' +
                             '<div class="special-img">' +
                               '<a href="/tourDetail/' + receipt.tour_num + '">' +
                                 '<img src="'+ receipt.imageUrl +'" class="img-fluid blur-up lazyload bg-img" alt=""/>' +
                               '</a>' +
                               '<div class="content_inner">' +
                                 '<a href="/tourDetail/' + receipt.tour_num + '">' +
                                   '<h5>' + receipt.receipt_name + '</h5>' +
                                 '</a>' +
                                 '<h6>' + receipt.receipt_date + '</h6>' +
                               '</div>' +
                             '</div>' +
                           '</div>' +
                         '</div>';
          // 목록에 새로운 항목을 추가합니다.
          container.append(itemHtml);
        });
      },
      error: function(error) {
        console.log(error);
      }
    });
  });
</script> -->



</body>
</html>
