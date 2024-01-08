<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="rica">
    <meta name="keywords" content="rica">
    <meta name="author" content="rica">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>Rica</title>

    <!--Google font-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- Date-time picker css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/datepicker.min.css">

    <!-- magnific css -->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css">

    <!-- 추가한 css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/fileupload.css">

</head>

<body>

    <!-- header start -->
    <header class="light_header">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="menu">
                <div class="brand-logo">
                  <a href="/jsp/main">
                    <img
                      src="../assets/images/icon/footer-logo.png"
                      alt=""
                      class="img-fluid blur-up lazyload"
                    />
                  </a>
                </div>
                <nav>
                  <div class="main-navbar">
                    <div id="mainnav">
                      <div class="toggle-nav">
                        <i class="fa fa-bars sidebar-bar"></i>
                      </div>
                      <div class="menu-overlay"></div>
                      <ul class="nav-menu">
                        <li class="back-btn">
                          <div class="mobile-back text-end">
                            <span>Back</span>
                            <i
                              aria-hidden="true"
                              class="fa fa-angle-right ps-2"
                            ></i>
                          </div>
                        </li>
                        <li class="nav-submenu">
                          <a href="/tour/tour_list" class="nav-link">Tour</a>
                        </li>
                        <li class="nav-submenu">
                          <a href="/touromate/touromate_list" class="nav-link"
                            >Touromate</a
                          >
                        </li>
                        <li class="nav-submenu">
                          <a href="/touroview/touroview_list" class="nav-link"
                            >Touroview</a
                          >
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
                <ul class="header-right">
                  <li class="front-setting rounded5">
                    <select>
                      <option value="volvo">한국어</option>
                      <option value="saab">영어</option>
                    </select>
                  </li>
                  <li class="user user-light rounded5">
                    <a href="/user/login">
                      <i class="fas fa-user"> 로그인</i>
                    </a>
                  </li>
                  <li class="setting">
                    <a href="#">
                      <i class="fas fa-cog"></i>
                    </a>
                    <ul class="setting-open">
                      <li class="front-setting">
                        <select>
                          <option value="volvo">USD</option>
                          <option value="saab">EUR</option>
                          <option value="opel">INR</option>
                          <option value="audi">AUD</option>
                        </select>
                      </li>
                      <li class="front-setting">
                        <select>
                          <option value="volvo">ENG</option>
                          <option value="saab">FRE</option>
                          <option value="opel">SPA</option>
                          <option value="audi">DUT</option>
                        </select>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </header>
    <!--  header end -->


    <!-- 각 게시물 이름 및 각 게시물 이미지  -->
    <section class="hotel-single-section pt-0">
        <img src="../assets/images/single-hotel/bg-2.jpg" class="bg-img bg-bottom img-fluid blur-up lazyload" alt="">
        <div class="hotel-title-section">
            <div class="container ">
                <div class="row">
                    <div class="col-12">
                        <div class="hotel-name">
                            <div class="left-part">
                                <div class="top">
                                    <h2>게시글 제목 </h2>
                                </div>
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
                <div class="col-xl-12 col-lg-12">
                    <form action="abc" method="post">
                    
                                <!-- 이미지만 보여주는 테이블-->
                                <div class="image_section ">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="slide-1 arrow-dark zoom-gallery ratio2_3">
                                                <div>
                                                    <a href="../assets/images/hotel/room/11.jpg">
                                                        <img src="../assets/images/hotel/room/11.jpg"
                                                            class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                        <h6 class="view-all">view all images</h6>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="center-content">
                                                <input class="upload-name1" value="파일선택" disabled="disabled">
                                                <label for="input-file1" class="upload1">업로드</label>
                                                <input type="file" id="input-file1" class="upload-hidden1">
                                            </div>
                                        </div>
                                        <div class="col-sm-4 d-none d-sm-block">
                                            <div class="row">
                                                <div class="col-12 ratio_59">
                                                    <div class="slide-1 zoom-gallery no-arrow">
                                                        <div>
                                                            <a href="../assets/images/hotel/room/4.jpg">
                                                                <img src="../assets/images/hotel/room/4.jpg"
                                                                    class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                                <h6 class="view-all">room images</h6>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="center-content">
                                                        <input class="upload-name2" value="파일선택" disabled="disabled">
                                                        <label for="input-file2" class="upload1">업로드</label>
                                                        <input type="file" id="input-file2" class="upload-hidden2">
                                                    </div>

                                                    <div class="slide-1 zoom-gallery no-arrow m-cls">
                                                        <div>
                                                            <a href="../assets/images/hotel/room/13.jpg">
                                                                <img src="../assets/images/hotel/room/13.jpg"
                                                                    class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                                <h6 class="view-all">poll images</h6>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="center-content">
                                                        <input class="upload-name3" value="파일선택" disabled="disabled">
                                                        <label for="input-file3" class="upload3">업로드</label>
                                                        <input type="file" id="input-file3" class="upload-hidden3">
                                                    </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <!-- 게시글  -->
                                <div class="description-section">
                                    <div class="description-details">
                                        <div class="desc-box">
                                            
                                            <div class="col-xl-3 col-lg-4" id="booking">
                                                <div class="sticky-cls">
                                                    <div class="abcddessadsa">
                                                        <div class="single-sidebar">
                                                            <div class="selection-section"> 
                                                                <div class="price-part">
                                                                    <div class="left-part">
                                                                    작성 날짜<input type="date" class="writerDate-insert" id ="writerinsert">
                                                                    </div>
                                                                </div>  
                                                                <br/>
                                                                <div class="price-part">
                                                                    작성자<input type="text" class="writer-insert" id ="writerNumber" placeholder="작성자(세션값)">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>  

                                            <div class="about page-section menu-part" id="about">
                                                <input type="text" id="destinationInput" placeholder="search 후 선택 된 여행지 이름 띄워">
                                                <br/>
                                                <br/>
                                                <input type="text" class="form-control" id="exampleFormControlInput1"
                                                placeholder="게시글 제목 ">
                                                <br/>
                                                <textarea  class="form-control" id="exampleFormControlInput111"
                                                placeholder="게시글 상세정보 " ></textarea>
                                                <br/>
                                                <div>
                                                    <input type="submit" id = "info_btn" value=" 등록 " style="background-color: #3e5eef;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <div class="description-section">
                                <div class="description-details">
                                    <div class="col-12">
                                        <div class="filter-panel right-filter open-cls">
                                            <div class="left-filter">
                                            </div>
                                            <div class="right-panel">
                                                <a href="javascript:void(0)" class="view-map me-0"><i class="fas fa-search"></i> 여행지 찾기</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-12 onclick-map">
                                        <div class="book-table single-table bg-inner">
                                            <div class="table-form classic-form">
                                                <form>
                                                    <div class="row w-100">
                                                        <div class="form-group col p-0">
                                                            <input type="text" class="form-control" id="exampleFormControlInput1"
                                                                placeholder="여행지 검색 ">
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-rounded color1">search</a>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="menu-part page-section">search 버튼 누르면 떠야 되는 곳 </div>
                                    </div> 
                                    
                                    <br/>
                                    <!-- 여행지  -->
                                    <div class="desc-box">
                                        <h4 class="content-title">여행지</h4>
                                        <div class="menu-part page-section" id="rooms">
                                            <table class="rooms-box">
                                                <tr>
                                                    <td>
                                                        <h6 class="room-title">여행지 이름</h6>
                                                        <a href="#">
                                                            <img src="../assets/images/hotel/room/4.jpg"
                                                                class="img-fluid blur-up lazyload" alt="">
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <h5>여행지 주소aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa </h5>
                                                        <h6>우편번호 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</h6>  
                                                        <p>여행지 내용 </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
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
            <input class="tgl tgl-skewed" id="dark" type="checkbox">
            <label class="tgl-btn" data-tg-off="Dark" data-tg-on="Light" for="dark"></label>
        </div>
        <div class="rtl">
            <input class="tgl tgl-skewed" id="rtl" type="checkbox">
            <label class="tgl-btn" data-tg-off="RTL" data-tg-on="LTR" for="rtl"></label>
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

    <!-- fileupload js-->
    <script src="../assets/js/fileupload.js"></script>

    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4',
            format: 'dd mmmm'
        });
        $('#datepicker1').datepicker({
            uiLibrary: 'bootstrap4',
            format: 'dd mmmm'
        });
    </script>

</body>

</html>
