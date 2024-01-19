<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">
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

      <!-- latest jquery-->
      <script src="../assets/js/jquery-3.5.1.min.js"></script>

      <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=0f448b5fdd2891d21a8357bbb07210aa&libraries=services,clusterer"></script>
  </head>

  <body>
    <!-- pre-loader start -->
    <!-- <div class="skeleton_loader">
      <header class="light_header">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="menu">
                <div class="brand-logo">
                  <a href="/touro">
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
                        <li class="nav-submenu">
                          <a href="/user/img_change" class="nav-link"
                            >ImgChange</a
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
      <div class="order-food-section"></div>
      <section class="single-section small-section bg-inner">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="hotel_title_section">
                <div class="hotel-name">
                  <div class="left-part">
                    <div class="top">
                      <h2></h2>
                      <div class="rating"></div>
                      <div class="share-buttons">
                        <div class="ldr-btn"></div>
                        <div class="ldr-btn"></div>
                      </div>
                    </div>
                    <p></p>
                    <div class="facility-detail">
                      <div></div>
                      <div></div>
                    </div>
                  </div>
                  <div class="right-part">
                    <h2 class="price"></h2>
                    <div class="ldr-btn d-none d-sm-block"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-9 col-lg-8">
              <div class="image_section">
                <div class="row">
                  <div class="col-sm-8 left">
                    <div class="ldr-img"></div>
                  </div>
                  <div class="col-sm-4 right d-none d-sm-block">
                    <div class="row">
                      <div class="col-12">
                        <div class="ldr-img"></div>
                        <div class="ldr-img"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="description-section tab-section">
                <div class="menu-top">
                  <ul class="nav nav-tabs">
                    <li>
                      <a class=""></a>
                    </li>
                    <li>
                      <a class=""></a>
                    </li>
                    <li>
                      <a class=""></a>
                    </li>
                    <li>
                      <a class=""></a>
                    </li>
                    <li>
                      <a class=""></a>
                    </li>
                    <li>
                      <a class=""></a>
                    </li>
                  </ul>
                  <div class="description-details tab-content">
                    <div class="menu-part tab-pane fade show active">
                      <table class="rooms-box">
                        <tr>
                          <td>
                            <h6 class="room-title"></h6>
                            <div class="zoom-gallery"></div>
                          </td>
                          <td>
                            <div class="room-detail">
                              <div class="row">
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="price-details">
                              <div>
                                <h6></h6>
                                <h5></h5>
                                <div class="ldr-btn"></div>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <h6 class="room-title"></h6>
                            <div class="zoom-gallery"></div>
                          </td>
                          <td>
                            <div class="room-detail">
                              <div class="row">
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="price-details">
                              <div>
                                <h6></h6>
                                <h5></h5>
                                <div class="ldr-btn"></div>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td>
                            <h6 class="room-title"></h6>
                            <div class="zoom-gallery"></div>
                          </td>
                          <td>
                            <div class="room-detail">
                              <div class="row">
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="col-6 p-0">
                                  <h6></h6>
                                  <div class="facility-detail">
                                    <ul>
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </td>
                          <td>
                            <div class="price-details">
                              <div>
                                <h6></h6>
                                <h5></h5>
                                <div class="ldr-btn"></div>
                              </div>
                            </div>
                          </td>
                        </tr>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-4">
              <div class="">
                <div class="single-sidebar">
                  <div class="selection-section">
                    <div class="overlay-map"></div>
                    <div class="price-part">
                      <div class="left-part">
                        <div class="ldr-link"></div>
                        <span class="mt-2"></span>
                        <span></span>
                      </div>
                      <div class="right-part">
                        <span></span>
                        <p></p>
                        <h6></h6>
                      </div>
                    </div>
                    <div class="book-btn-section">
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-btn"></div>
                    </div>
                  </div>
                </div>
                <div class="single-sidebar">
                  <h6 class="contact-title"></h6>
                  <p class="address">
                    <span></span>
                    <span></span>
                  </p>
                  <p class="address">
                    <span></span>
                  </p>
                  <p class="address">
                    <span></span>
                  </p>
                  <div class="social-box"></div>
                  <div class="bottom_sec">
                    <h6></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    pre-loader end -->

    <!-- header start -->
    <!-- <header class="light_header">
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
                        <a href="/jsp/TourList#" class="nav-link">Tour</a>
                      </li>
                      <li class="nav-submenu">
                        <a href="/jsp/TouroMate_list" class="nav-link"
                          >Touromate</a
                        >
                      </li>
                      <li class="nav-submenu">
                        <a href="/jsp/TouroView_list" class="nav-link"
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
                  <a href="/jsp/login-copy">
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
    </header> -->
    <!--  header end -->

    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

    <!-- image section start -->
    <section class="pt-0 ratio2_3 zoom-gallery overlay-hover">
      <div class="container-fluid p-0">
        <div class="row m-0">
          <div class="col-md-6 p-0">
            <a href="../assets/images/single-hotel/slider/10.jpg">
              <img
                src="../assets/images/single-hotel/slider/10.jpg"
                class="img-fluid blur-up lazyload bg-img"
                alt=""
              />
            </a>
          </div>
          <div class="col-md-3 col-6 p-0">
            <a href="../assets/images/single-hotel/slider/11.jpg">
              <img
                src="../assets/images/single-hotel/slider/11.jpg"
                class="img-fluid blur-up lazyload bg-img"
                alt=""
              />
            </a>
            <a href="../assets/images/single-hotel/slider/6.jpg">
              <img
                src="../assets/images/single-hotel/slider/6.jpg"
                class="img-fluid blur-up lazyload bg-img"
                alt=""
              />
            </a>
          </div>
          <div class="col-md-3 col-6 p-0">
            <a href="../assets/images/single-hotel/slider/7.jpg">
              <img
                src="../assets/images/single-hotel/slider/7.jpg"
                class="img-fluid blur-up lazyload bg-img"
                alt=""
              />
            </a>
            <a href="../assets/images/single-hotel/slider/8.jpg">
              <img
                src="../assets/images/single-hotel/slider/8.jpg"
                class="img-fluid blur-up lazyload bg-img"
                alt=""
              />
            </a>
          </div>
        </div>
      </div>
    </section>
    <!-- image section end -->

    <!-- section start -->
    <section class="single-section small-section bg-inner">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="hotel_title_section">
              <div class="hotel-name">
                <div class="left-part">
                  <div class="top">
                    <h2>${touroMate.touro_mate_title}</h2>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                    <div class="share-buttons">
                      <a href="#" class="btn btn-solids"
                        ><i class="far fa-heart"></i>좋아요</a
                      >
                    </div>
                  </div>
                  <div class="facility-detail">
                    <span>작성자: ${touroMate.user_id}</span>
                    <span>작성일: ${touroMate.touro_mate_date}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-9 col-lg-8">
            <div class="description-section tab-section">
              <div class="menu-top menu-up">
                <ul class="nav nav-tabs" id="top-tab" role="tablist">
                  <li class="nav-item">
                    <a
                      data-bs-toggle="tab"
                      class="nav-link active"
                      href="#rooms"
                      >여행지</a
                    >
                  </li>
                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#about"
                      >여행일정</a
                    >
                  </li>

                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#location"
                      >전체 코스</a
                    >
                  </li>
                </ul>
                <div
                  class="description-details tab-content"
                  id="top-tabContent"
                >
                  <div class="menu-part tab-pane fade show active" id="rooms">
                    <table class="rooms-box">
                      <tr>
                        <td>
                          <h6 class="room-title">여행지 지역</h6>
                          <a href="#">
                            <img
                              src="../assets/images/hotel/room/4.jpg"
                              class="img-fluid blur-up lazyload"
                              alt=""
                            />
                          </a>
                        </td>
                        <td>
                          <div class="room-detail">
                            <div class="row">
                              <div class="col-6 p-0">
                                <h6>${touroMate.touro_mate_name1}</h6>
                                <div class="facility-detail">
                                  <ul>
                                    <li>${touroMate.touro_mate_addr1}</li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <h6 class="room-title">여행지 지역</h6>
                          <a href="#">
                            <img
                              src="../assets/images/hotel/room/5.jpg"
                              class="img-fluid blur-up lazyload"
                              alt=""
                            />
                          </a>
                        </td>
                        <td>
                          <div class="room-detail">
                            <div class="row">
                              <div class="col-6 p-0">
                                <h6>${touroMate.touro_mate_name2}</h6>
                                <div class="facility-detail">
                                  <ul>
                                    <li>${touroMate.touro_mate_addr2}</li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <h6 class="room-title">여행지 지역</h6>
                          <a href="#">
                            <img
                              src="../assets/images/hotel/room/6.jpg"
                              class="img-fluid blur-up lazyload"
                              alt=""
                            />
                          </a>
                        </td>
                        <td>
                          <div class="room-detail">
                            <div class="row">
                              <div class="col-6 p-0">
                                <h6>${touroMate.touro_mate_name3}</h6>
                                <div class="facility-detail">
                                  <ul>
                                    <li>${touroMate.touro_mate_addr3}</li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                          </div>
                        </td>
                      </tr>
                    </table>
                  </div>
                  <div class="about menu-part tab-pane fade" id="about">
                    <h6>${touroMate.touro_mate_content}</h6>
                    <p>
                     
                    </p>
                  </div>
                  <div class="menu-part tab-pane fade map" id="location">
                    <div id="map" style="width: 100%; height: 420px; margin-bottom: -5px;">
                      <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=0f448b5fdd2891d21a8357bbb07210aa&libraries=services,clusterer"></script>
                      <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                                mapOption = {
                                  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                                  level: 3 // 지도의 확대 레벨
                                };
                      
                        // 지도를 생성합니다
                        var map = new kakao.maps.Map(mapContainer, mapOption);
                      
                        // 주소-좌표 변환 객체를 생성합니다
                        var geocoder = new kakao.maps.services.Geocoder();

                        // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
                        var bounds = new kakao.maps.LatLngBounds();
                      
                        var positions = [
                            {
                                title: '${touroMate.touro_mate_name1}',
                                address: '${touroMate.touro_mate_addr1}'
                            },
                            {
                                title: '${touroMate.touro_mate_name2}',
                                address: '${touroMate.touro_mate_addr2}'
                            },
                            {
                                title: '${touroMate.touro_mate_name3}',
                                address: '${touroMate.touro_mate_addr3}'
                            },

                        ];
                      
                        
                      
                        positions.forEach(function (position) {
                          // 주소로 좌표를 검색합니다
                          geocoder.addressSearch(position.address, function(result, status) {
                      
                            // 정상적으로 검색이 완료됐으면
                            if (status === kakao.maps.services.Status.OK) {
                      
                              var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
                      
                              // 결과값으로 받은 위치를 마커로 표시합니다
                              var marker = new kakao.maps.Marker({
                                map: map,
                                position: coords
                              });
                              marker.setMap(map); //추가한 코드
                      
                              // LatLngBounds 객체에 좌표를 추가합니다
                              bounds.extend(coords); //추가한 코드, 현재 코드에서 좌표정보는 point[i]가 아닌 coords이다.
                      
                              // 인포윈도우로 장소에 대한 설명을 표시합니다
                              var infowindow = new kakao.maps.InfoWindow({
                                content: '<div style="width:150px;text-align:center;padding:6px 0;">' + position.title + '</div>'
                              });
                              infowindow.open(map, marker);
                      
                              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                              // map.setCenter(coords); //제거한 코드
                              setBounds(); //추가한 코드
                            }
                          });
                        });
                        function setBounds() { //추가한 함수
                          // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
                          // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
                          map.setBounds(bounds);
                        }
                      </script>

                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="special-section related-box ratio3_2 grid-box">
              <div class="slider-3 no-arrow">
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/hotel/room/14.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="top-icon">
                        <a
                          href="#"
                          class=""
                          data-bs-toggle="tooltip"
                          data-placement="top"
                          title=""
                          data-original-title="Add to Wishlist"
                        >
                          <i class="far fa-heart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="special-content">
                      <a href="#">
                        <h5>
                          the venetian
                          <span
                            ><i class="fas fa-map-marker-alt"></i> Newyork</span
                          >
                        </h5>
                      </a>
                      <p>
                        Lorem Ipsum is simply dummy text the printing Ipsum is
                        simply Lorem Ipsum is simply dummy text of the
                        ..............
                      </p>
                      <div class="bottom-section">
                        <div class="rating">
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="far fa-star"></i>
                          <span>26412 review</span>
                        </div>
                        <div class="price">
                          <del>$1300</del>
                          <span>$1245</span>
                          <div class="facility-detail">
                            <span>swimming</span>
                            <span>parking</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/hotel/room/13.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="top-icon">
                        <a
                          href="#"
                          class=""
                          data-bs-toggle="tooltip"
                          data-placement="top"
                          title=""
                          data-original-title="Add to Wishlist"
                        >
                          <i class="far fa-heart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="special-content">
                      <a href="#">
                        <h5>
                          the venetian
                          <span
                            ><i class="fas fa-map-marker-alt"></i> Newyork</span
                          >
                        </h5>
                      </a>
                      <p>
                        Lorem Ipsum is simply dummy text the printing Ipsum is
                        simply Lorem Ipsum is simply dummy text of the
                        ..............
                      </p>
                      <div class="bottom-section">
                        <div class="rating">
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="far fa-star"></i>
                          <span>26412 review</span>
                        </div>
                        <div class="price">
                          <del>$1300</del>
                          <span>$1245</span>
                          <div class="facility-detail">
                            <span>swimming</span>
                            <span>parking</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/hotel/room/10.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="top-icon">
                        <a
                          href="#"
                          class=""
                          data-bs-toggle="tooltip"
                          data-placement="top"
                          title=""
                          data-original-title="Add to Wishlist"
                        >
                          <i class="far fa-heart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="special-content">
                      <a href="#">
                        <h5>
                          the venetian
                          <span
                            ><i class="fas fa-map-marker-alt"></i> Newyork</span
                          >
                        </h5>
                      </a>
                      <p>
                        Lorem Ipsum is simply dummy text the printing Ipsum is
                        simply Lorem Ipsum is simply dummy text of the
                        ..............
                      </p>
                      <div class="bottom-section">
                        <div class="rating">
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="far fa-star"></i>
                          <span>26412 review</span>
                        </div>
                        <div class="price">
                          <del>$1300</del>
                          <span>$1245</span>
                          <div class="facility-detail">
                            <span>swimming</span>
                            <span>parking</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/hotel/room/15.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="top-icon">
                        <a
                          href="#"
                          class=""
                          data-bs-toggle="tooltip"
                          data-placement="top"
                          title=""
                          data-original-title="Add to Wishlist"
                        >
                          <i class="far fa-heart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="special-content">
                      <a href="#">
                        <h5>
                          the venetian
                          <span
                            ><i class="fas fa-map-marker-alt"></i> Newyork</span
                          >
                        </h5>
                      </a>
                      <p>
                        Lorem Ipsum is simply dummy text the printing Ipsum is
                        simply Lorem Ipsum is simply dummy text of the
                        ..............
                      </p>
                      <div class="bottom-section">
                        <div class="rating">
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="fas fa-star"></i>
                          <i class="far fa-star"></i>
                          <span>26412 review</span>
                        </div>
                        <div class="price">
                          <del>$1300</del>
                          <span>$1245</span>
                          <div class="facility-detail">
                            <span>swimming</span>
                            <span>parking</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-3 col-lg-4" id="booking">
            <div class="sticky-cls-top">
              <div class="single-sidebar">
                <h6 class="contact-title">작성자 정보</h6>
                <p class="address">
                  <i class="fas fa-map-marker-alt"></i>아이디: ${authorInfo.user_id}
                </p>
                <p><i class="fas fa-phone-alt"></i>전화번호:  ${authorInfo.user_tel}</p>
                <a href="#">
                  <p><i class="fas fa-envelope"></i>메일: ${authorInfo.user_email}</p>
                </a>
                <div class="social-box">
                  <p>나이: ${authorInfo.user_age} </p>
                  <p>여행유형1: ${authorInfo.user_prefer_type1}</p>
                  <p>여행유형2: ${authorInfo.user_prefer_type2}</p>
                  <p>여행유형3: ${authorInfo.user_prefer_type3}</p>
                </div>
              </div>
              <div class="single-sidebar">
                <div class="selection-section">
                  <div class="price-part">   
                    <div class="left-part">
                      <span class="mt-2"
                        ><i class="fas fa-check"></i>채팅 참여 인원: ${touroMate.touro_mate_count}</span
                      >
                      <span><i class="fas fa-check"></i>[남은 인원 수]</span>
                    </div>
                  </div>
                  <div class="book-btn-section">
                    <a
                      id="chat-circle"
                      class="btn btn-raised"
                      data-bs-toggle="modal"
                      data-bs-target="#chatLive"
                      href="#"
                      class="btn btn-rounded btn-sm color1"
                      >채팅 참가하기</a
                    >
                  </div>
                </div>
              </div>
              <div class="single-sidebar">
                <h6 class="contact-title">Touro</h6>
                <p class="address">
                  <i class="fas fa-map-marker-alt"></i> 서울특별시 마포구 백범로
                  23
                </p>
                <p><i class="fas fa-phone-alt"></i> 123 254 121</p>
                <a href="#">
                  <p><i class="fas fa-envelope"></i> Touro@gmail.com</p>
                </a>
                <div class="social-box">
                  <ul>
                    <li>
                      <a href="#"><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fab fa-instagram"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fab fa-google"></i></a>
                    </li>
                  </ul>
                </div>
                <div class="bottom_sec">
                  <h6>** : 2:00 PM</h6>
                  <h6>** : 12:00 PM</h6>
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

    <!-- book now section start -->
    <div class="book-panel">
      <button
        onclick="window.location.href='hotel-booking.html';"
        type="button"
        class="btn bottom-btn theme-color"
      >
        book now
      </button>
      <button
        data-bs-toggle="modal"
        data-bs-target="#enquiryModal"
        type="button"
        class="btn bottom-btn"
      >
        enquiry
      </button>
    </div>
    <!-- book now section end -->

    <!-- enquiry modal start-->
    <div
      class="modal fade enquiry-modal"
      id="enquiryModal"
      tabindex="-1"
      role="dialog"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <div>
              <h5 class="modal-title">Quick Enquiry</h5>
              <p>
                if you have any queries kindly take a moment to fill this form,
                our representative will contact you shortly..
              </p>
            </div>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <input type="text" class="form-control" placeholder="Full Name" />
              <input
                type="email"
                class="form-control"
                placeholder="Enter email"
              />
              <input
                type="number"
                class="form-control"
                placeholder="Phone no:"
              />
              <textarea
                class="form-control"
                rows="3"
                placeholder="Your Query"
              ></textarea>
              <div class="text-end">
                <button type="submit" class="btn btn-solid">submit</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- enquiry modal end -->

    <!-- 채팅 양식 (Modal) 구성 시작-->
    <div
      class="modal fade edit-profile-modal"
      id="chatLive"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">${touroMate.touro_mate_num}번 채팅방</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body dashboard-section">
            <div class="chat-box-overlay"></div>
            <div class="chat-logs"></div>
          </div>
          <div class="modal-footer">
            <input
              type="text"
              id="chat-input"
              placeholder="Send a message..."
            />
            <button type="button" class="chat-submit" id="chat-submit">
              <i class="material-icons">send</i>
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- 채팅 양식 끝 -->
    <!-- 채팅 스크립트 코드 -->
    <!-- 채팅 스크립트 코드 -->
    <script>
      let ws;

        $(document).ready(function () {
            function openWebSocket() {
                ws = new WebSocket('ws://localhost:8081/chat');

                ws.onopen = function () {
                    console.log('WebSocket Client Connected');
                };

                ws.onmessage = function (event) {
                    const message = JSON.parse(event.data);
                    // 받은 메시지를 모달에 표시하는 코드 추가
                    $('.chat-logs').append(`<p>${message.userId} - ${message.message} - ${message.timestamp}</p>`);
                };

                ws.onclose = function (event) {
                    console.log('WebSocket connection closed:', event);
                };
            }

            // 클릭 이벤트에 직접 메시지 전송 함수 연결
            $('#chat-submit').click(function () {
                sendMessage();
            });

            // 폼의 submit 기본 동작 중지
            $('#chatForm').submit(function (event) {
                event.preventDefault();
            });

            function sendMessage() {
              const inputMessage = $('#chat-input').val();
              ws.send(JSON.stringify({ message: inputMessage }));
              // 입력한 메시지를 모달에 표시하는 코드 추가
              $('.chat-logs').append('<p>' + inputMessage + '</p>');
              // 입력창 비우기
              $('#chat-input').val('');
          }

            // 모달이 열릴 때 WebSocket 연결 시작
            $('#chatLive').on('shown.bs.modal', function () {
                openWebSocket();
            });

            // 모달이 닫힐 때 WebSocket 연결 종료
            $('#chatLive').on('hidden.bs.modal', function () {
                if (ws && (ws.readyState === WebSocket.OPEN || ws.readyState === WebSocket.CONNECTING)) {
                    ws.close();
                }
            });
        });
  </script>
  

  

    <!-- portfolio js -->
    <script src="../assets/js/jquery.magnific-popup.js"></script>
    <script src="../assets/js/zoom-gallery.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

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
