<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head lang="ko">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="rica" />
    <meta name="keywords" content="rica" />
    <meta name="author" content="rica" />
    <link rel="icon" href="../../assets/images/favicon.png" type="image/x-icon" />
    <title>Rica</title>

    <!--Google font-->
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Vampiro+One&display=swap"
      rel="stylesheet"
    />

    <!-- Icons -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/font-awesome.css"
    />

    <!-- Themify icon -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/themify-icons.css"
    />

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../../assets/css/animate.css" />

    <!-- Date-time picker css -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/datepicker.min.css"
    />

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../../assets/css/slick.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/slick-theme.css"
    />

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.css" />

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../../assets/css/color5.css" />
  </head>

  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

    <!-- 로고, 배경 설정 (home_effect)-->
    <section class="home_effect effect-cls pt-0">
      <div class="snow" count="30"></div>
      <div class="effect_image">
        <img src="" alt="" />
        <div class="effect_content">
          <div>
            <h1>TOURO</h1>
          </div>
        </div>
      </div>
    </section>
    <!-- 로고, 배경 설정 끝 -->

    <!-- 검색창 설정 -->
    <section class="section-b-space pt-5">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="search_section">
              <div class="book-table single-table input-radius-cls">
                <div class="table-form classic-form p-0">
                  <form>
                    <div class="row w-100">
                      <div class="form-group col-3 p-0">
                        <select
                          type=""
                          class="btn-rounded form-control"
                          id="exampleFormControlInput1"
                        >
                          <option value="1">구분</option>
                          <option value="2">설정</option>
                        </select>
                      </div>
                      <div class="form-group col-7 p-0">
                        <input
                          type="text"
                          class="form-control"
                          placeholder="검색어 입력"
                        />
                        <img
                          src="../../assets/images/icon/table-no.png"
                          class="img-fluid blur-up lazyload"
                          alt=""
                        />
                      </div>
                    </div>
                    <a href="#" class="btn btn-rounded col-2 color1">검색</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 검색창 설정 끝 -->

    <!-- 회원 맞춤 여행지 설정 -->
    <section
      class="effect-cls effect-cls-up padding-cls full-banner parallax-img"
    >
      <img
        src="../../assets/images/tour/background/3.jpg"
        class="img-fluid blur-up lazyload bg-img"
        alt=""
      />
      <div class="menu-section">
        <div class="container">
          <div class="title-3">
            <span class="title-label">touro</span>
            <h2>회원 맞춤 여행지 <span>Touro</span></h2>
          </div>
          <div class="row">
            <div class="col">
              <div class="slide-3 no-arrow">
                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <img
                        src="../../assets/images/tour/category/3.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div class="bottom-bar">
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <a href="#"
                        ><img
                          src="../../assets/images/tour/category/4.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div class="bottom-bar">
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <a href="#"
                        ><img
                          src="../../assets/images/tour/category/5.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div class="bottom-bar">
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
                      </div>
                      <div class="menu-bar">
                        <a href="#"
                          ><img
                            src="../../assets/images/flights/offer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                        /></a>
                        <div class="content">
                          <a href="#">
                            <h5>여행지 이름</h5>
                          </a>
                          <p>여행지 주소</p>
                        </div>
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
    <!-- 회원 맞춤 여행지 끝 -->

    <!-- 연령대별 추천 설정 -->
    <section class="small-section">
      <div class="title-3">
        <span class="title-label">Touro</span>
        <h2>연령대별 추천 여행지 <span>touro</span></h2>
      </div>
      <div class="container ratio_59">
        <div class="row">
          <div class="col-md-12">
            <div
              class="cab-slider center-slider-cab arrow-classic topTour mt-0"
            >
              <a href="#"
                ><div>
                  <div class="topTour_box mt-0">
                    <div class="image-section">
                      <img
                        src="../../assets/images/tour/background/10.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="content">
                      <h5>여행지 이름</h5>
                      <h6>주소</h6>
                      <h6>정보</h6>
                    </div>
                  </div>
                </div></a
              >

              <a href="#"
                ><div>
                  <div class="topTour_box mt-0">
                    <div class="image-section">
                      <img
                        src="../../assets/images/tour/background/9.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="content">
                      <h5>여행지 이름</h5>
                      <h6>주소</h6>
                      <h6>정보</h6>
                    </div>
                  </div>
                </div></a
              >
              <div>
                <div class="topTour_box mt-0">
                  <div class="image-section">
                    <img
                      src="../../assets/images/tour/background/11.jpg"
                      class="img-fluid blur-up lazyload bg-img"
                      alt=""
                    />
                  </div>
                  <div class="content">
                    <h5>여행지 이름</h5>
                    <h6>주소</h6>
                    <h6>정보</h6>
                  </div>
                </div>
              </div>
              <div>
                <div class="topTour_box mt-0">
                  <div class="image-section">
                    <img
                      src="../../assets/images/tour/background/12.jpg"
                      class="img-fluid blur-up lazyload bg-img"
                      alt=""
                    />
                  </div>
                  <div class="content">
                    <h5>여행지 이름</h5>
                    <h6>주소</h6>
                    <h6>정보</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 연령대별 추천 끝 -->

    <!-- 계절에 따른 추천 설정 -->
    <section
      class="effect-cls effect-cls-up padding-cls full-banner parallax-img"
    >
      <img
        src="../../assets/images/tour/background/3.jpg"
        class="img-fluid blur-up lazyload bg-img"
        alt=""
      />
      <div class="tourSection ratio_90">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="title-3">
                <span class="title-label">Touro</span>
                <h2>계절에 따른 추천 여행지<span>touro</span></h2>
              </div>
              <div class="slider-4 no-arrow">
                <div>
                  <div class="tourBox">
                    <div class="tourImg">
                      <img
                        src="../../assets/images/tour/background/4.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="tourContent">
                      <h3>이름 표시</h3>
                      <h6>설명</h6>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="tourBox">
                    <div class="tourImg">
                      <img
                        src="../../assets/images/tour/background/8.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="tourContent">
                      <h3>이름 표시</h3>
                      <h6>설명</h6>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="tourBox">
                    <div class="tourImg">
                      <img
                        src="../../assets/images/tour/background/6.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="tourContent">
                      <h3>이름 표시</h3>
                      <h6>설명</h6>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="tourBox">
                    <div class="tourImg">
                      <img
                        src="../../assets/images/tour/background/5.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="tourContent">
                      <h3>이름 표시</h3>
                      <h6>설명</h6>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="tourBox">
                    <div class="tourImg">
                      <img
                        src="../../assets/images/tour/background/7.jpg"
                        class="img-fluid blur-up lazyload bg-img"
                        alt=""
                      />
                    </div>
                    <div class="tourContent">
                      <h3>이름 표시</h3>
                      <h6>설명</h6>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 계절에 따른 추천 끝 -->

    <!-- 회원 선호 지역 여행지 설정 -->
    <section
      class="effect-cls effect-cls-up padding-cls full-banner parallax-img"
    >
      <img
        src="../../assets/images/tour/background/3.jpg"
        class="img-fluid blur-up lazyload bg-img"
        alt=""
      />

      <div class="menu-section">
        <div class="container">
          <div class="title-3">
            <span class="title-label">touro</span>
            <h2>회원 맞춤 여행지 <span>Touro</span></h2>
          </div>
          <div class="row">
            <div class="col">
              <div class="slide-3 no-arrow">
                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <img
                        src="../../assets/images/tour/category/3.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div
                      class="product-wrapper-grid special-section grid-box ratio3_2"
                    >
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                          <div class="label-offer">추천 라벨</div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>
                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <a href="#"
                        ><img
                          src="../../assets/images/tour/category/4.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div
                      class="product-wrapper-grid special-section grid-box ratio3_2"
                    >
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                          <div class="label-offer">추천 라벨</div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>
                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div>
                  <div class="menu-box">
                    <div class="top-bar">
                      <a href="#"
                        ><img
                          src="../../assets/images/tour/category/5.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                      <h2>여행지 추천</h2>
                      <div class="decorate">추천명</div>
                    </div>
                    <div
                      class="product-wrapper-grid special-section grid-box ratio3_2"
                    >
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                          <div class="label-offer">추천 라벨</div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>

                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="grid-item">
                        <div class="special-box p-0">
                          <div class="special-img">
                            <a href="flight-right-sidebar.html">
                              <img
                                src="../../assets/images/tour/slider/1.jpg"
                                class="img-fluid blur-up lazyload bg-img"
                                alt=""
                              />
                            </a>
                            <div class="content-inner">
                              <a href="#">
                                <h5>여행지 이름</h5>
                              </a>
                              <h6>여행지 주소</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="special-section p-0">
        <div class="special-box"></div>
      </div>
    </section>
    <!-- 회원 선호 지역 여행지 끝 -->

    <!-- 리뷰어 설정 -->
    <section class="testimonial-section">
      <div class="container">
        <div class="title-3">
          <span class="title-label"> Touro Recommend </span>
          <h2>베스트 리뷰어<span>customer</span></h2>
        </div>

        <div>
          <div class="row">
            <div class="testimonial_section offset-xl-2">
              <div class="testimonial">
                <div class="left-part col-2">
                  <a
                    data-bs-toggle="modal"
                    data-bs-target="#edit-profile"
                    href=""
                  >
                    <img
                      src="../../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                    <div class="bottom-part"><h3>사용자 아이디</h3></div>
                  </a>
                </div>
                <div class="left-part col-2">
                  <a
                    data-bs-toggle="modal"
                    data-bs-target="#edit-profile"
                    href=""
                  >
                    <img
                      src="../../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                    <div class="bottom-part"><h3>사용자 아이디</h3></div>
                  </a>
                </div>
                <div class="left-part col-2">
                  <a
                    data-bs-toggle="modal"
                    data-bs-target="#edit-profile"
                    href=""
                  >
                    <img
                      src="../../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                    <div class="bottom-part"><h3>사용자 아이디</h3></div>
                  </a>
                </div>
                <div class="left-part col-2">
                  <a
                    data-bs-toggle="modal"
                    data-bs-target="#edit-profile"
                    href=""
                  >
                    <img
                      src="../../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                    <div class="bottom-part"><h3>사용자 아이디</h3></div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 리뷰어 설정 끝 -->
    <div
      id="chat-circle"
      class="btn btn-raised"
      data-bs-toggle="modal"
      data-bs-target="#chatLive"
    >
      <div id="chat-overlay"></div>
      <i class="fas fa-user"></i>
    </div>

    <!-- 사용자 페이지(Modal) 창 구성 시작 -->
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
            <h5 class="modal-title" id="exampleModalLabel">사용자 페이지</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body dashboard-section">
            <div class="pro_sticky_info" data-sticky_column="">
              <div class="dashboard-sidebar">
                <div class="profile-top">
                  <div class="profile-image">
                    <img
                      src="../../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyloaded"
                      alt=""
                    />
                  </div>
                  <div class="profile-detail">
                    <h5>사용자 연령대</h5>
                    <h6>mark.enderess@mail.com</h6>
                  </div>
                </div>
                <div class="dashboard-box">
                  <div class="dashboard-detail">
                    <div class="booking-box">
                      <div class="date-box">
                        <span class="date">ID</span>
                      </div>
                      <div class="detail-middle">
                        <div class="media">
                          <div class="media-body">
                            <h6 class="media-heading">사용자 아이디</h6>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="dashboard-box">
                  <div class="dashboard-detail">
                    <div class="booking-box">
                      <div class="date-box">
                        <span class="date">선호 여행 유형</span>
                      </div>
                      <div class="detail-middle">
                        <div class="media">
                          <div class="media-body">
                            <h6 class="media-heading">유형</h6>
                            <p>1 순위</p>
                          </div>
                          <div class="media-body">
                            <h6 class="media-heading">유형</h6>
                            <p>2 순위</p>
                          </div>
                          <div class="media-body">
                            <h6 class="media-heading">유형</h6>
                            <p>3 순위</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="dashboard-box">
                  <div class="dashboard-detail">
                    <div class="booking-box">
                      <div class="date-box">
                        <span class="date">선호 지역</span>
                      </div>
                      <div class="detail-middle">
                        <div class="media">
                          <div class="media-body">
                            <h6 class="media-heading">지역</h6>
                            <p>1 순위</p>
                          </div>
                          <div class="media-body">
                            <h6 class="media-heading">지역</h6>
                            <p>2 순위</p>
                          </div>
                          <div class="media-body">
                            <h6 class="media-heading">지역</h6>
                            <p>3 순위</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 사용자 페이지 창 구성 끝 -->

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
            <h5 class="modal-title" id="exampleModalLabel">채팅 테스트</h5>
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
          <form>
            <div class="modal-footer">
              <input
                type="text"
                id="chat-input"
                placeholder="Send a message..."
              />
              <button type="submit" class="chat-submit" id="chat-submit">
                <i class="material-icons">send</i>
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- 채팅 양식 끝 -->

    <!-- footer start -->
    <footer class="effect-cls-up footer-bg">
      <img
        src="../../assets/images/tour/background/13.jpg"
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
                      src="../../assets/images/icon/footer-logo.png"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                            src="../../assets/images/tour/background/12.jpg"
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
                          src="../../assets/images/cab/blog-footer/2.jpg"
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
                          src="../../assets/images/cab/blog-footer/2.jpg"
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
                          src="../../assets/images/cab/blog-footer/2.jpg"
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
                          src="../../assets/images/cab/blog-footer/2.jpg"
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

    <!-- latest jquery-->
    <script src="../../assets/js/jquery-3.5.1.min.js"></script>

    <!-- slick js-->
    <script src="../../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../../assets/js/bootstrap.bundle.min.js"></script>

    <!-- date-time picker js -->
    <script src="../../assets/js/date-picker.js"></script>

    <!-- lazyload js-->
    <script src="../../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../../assets/js/script.js"></script>
    <script src="../../assets/js/snow.js"></script>

    <script>
      $(function () {
        var INDEX = 0;
        $("#chat-submit").click(function (e) {
          e.preventDefault();
          var msg = $("#chat-input").val();
          if (msg.trim() == "") {
            return false;
          }
          generate_message(msg, "self");
          var buttons = [
            {
              name: "Existing User",
              value: "existing",
            },
            {
              name: "New User",
              value: "new",
            },
          ];
          setTimeout(function () {
            generate_message(msg, "user");
          }, 1000);
        });

        function generate_message(msg, type) {
          INDEX++;
          var str = "";
          str +=
            "<div id='cm-msg-" + INDEX + "' class=\"chat-msg " + type + '">';
          str += '          <span class="msg-avatar">';
          str +=
            '            <img src="https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745">';
          str += "          <\/span>";
          str += '          <div class="cm-msg-text">';
          str += msg;
          str += "          <\/div>";
          str += "        <\/div>";
          $(".chat-logs").append(str);
          $("#cm-msg-" + INDEX)
            .hide()
            .fadeIn(300);
          if (type == "self") {
            $("#chat-input").val("");
          }
          $(".chat-logs")
            .stop()
            .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
        }

        function generate_button_message(msg, buttons) {
          /* Buttons should be object array 
      [
        {
          name: 'Existing User',
          value: 'existing'
        },
        {
          name: 'New User',
          value: 'new'
        }
      ]
    */
          INDEX++;
          var btn_obj = buttons
            .map(function (button) {
              return (
                '              <li class="button"><a href="javascript:;" class="btn btn-primary chat-btn" chat-value="' +
                button.value +
                '">' +
                button.name +
                "<\/a><\/li>"
              );
            })
            .join("");
          var str = "";
          str += "<div id='cm-msg-" + INDEX + '\' class="chat-msg user">';
          str += '          <span class="msg-avatar">';
          str +=
            '            <img src="https:\/\/image.crisp.im\/avatar\/operator\/196af8cc-f6ad-4ef7-afd1-c45d5231387c\/240\/?1483361727745">';
          str += "          <\/span>";
          str += '          <div class="cm-msg-text">';
          str += msg;
          str += "          <\/div>";
          str += '          <div class="cm-msg-button">';
          str += "            <ul>";
          str += btn_obj;
          str += "            <\/ul>";
          str += "          <\/div>";
          str += "        <\/div>";
          $(".chat-logs").append(str);
          $("#cm-msg-" + INDEX)
            .hide()
            .fadeIn(300);
          $(".chat-logs")
            .stop()
            .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
          $("#chat-input").attr("disabled", true);
        }

        $(document).delegate(".chat-btn", "click", function () {
          var value = $(this).attr("chat-value");
          var name = $(this).html();
          $("#chat-input").attr("disabled", false);
          generate_message(name, "self");
        });

        $("#chat-circle").click(function () {
          $("#chat-circle").toggle("scale");
          $(".chat-box").toggle("scale");
        });

        $(".chat-box-toggle").click(function () {
          $("#chat-circle").toggle("scale");
          $(".chat-box").toggle("scale");
        });
      });

      var scrollPos;
      $(window).on("scroll", function () {
        scrollPos = $(window).scrollTop();
        $(".effect_image").css(
          "background-size",
          100 + parseInt(scrollPos / 10, 0) + "% "
        );
        $(".effect_content h1").css(
          "font-size",
          580 - parseInt(scrollPos / 1.5, 0) + "% "
        );
        $(".effect_content").css(
          "top",
          14 + parseInt(scrollPos / 10, 0) + "% "
        );
      });

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
