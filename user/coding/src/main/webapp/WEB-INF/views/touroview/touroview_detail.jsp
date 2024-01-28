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
  </head>

  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

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
                    <div class="review-box">
                      <div class="rating">
                        <span>해당 리뷰 아이디 </span>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                      </div>
                      <h6>여행지</h6>
                      <h6>해당 리뷰 번호</h6>
                      <p>해당 리뷰 내용</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- 다른 게시물 추천 테이블 -->
            <div class="special-section related-box ratio3_2 grid-box">
              <div class="slider-3 no-arrow">
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/hotel/gallery/4.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                    </div>
                    <div class="special-content">
                      <a href="#">
                        <h5>다른 게시물 제목</h5>
                      </a>
                      <p>게시물 내용</p>
                      <div class="bottom-section">
                        <div class="rating">
                          <span>조회수 review</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
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
