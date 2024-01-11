<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<html lang="UTF-8">
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
    <!-- pre-loader start -->
    <!-- <div class="skeleton_loader">
      <div class="breadcrumb-section dark-bg"></div>
      <section class="small-section bg-inner">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="filter-panel">
                <div class="left-filter">
                  <div class="respon-filter-btn">
                    <h6></h6>
                    <span class="according-menu"></span>
                  </div>
                  <div
                    class="filters respon-filter-content filter-button-group"
                  >
                    <ul>
                      <li></li>
                      <li></li>
                      <li></li>
                      <li></li>
                    </ul>
                  </div>
                </div>
                <div class="right-panel search_filter">
                  <a
                    href="javascript:void(0)"
                    class="filter_button filter-bottom-title"
                  >
                    <img
                      src="../assets/images/icon/adjust.png"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                    <h5></h5>
                  </a>
                  <div class="collection-grid-view">
                    <ul>
                      <li>
                        <a
                          href="javascript:void(0)"
                          class="product-2-layout-view"
                        >
                          <ul class="filter-select">
                            <li></li>
                            <li></li>
                          </ul>
                        </a>
                      </li>
                      <li>
                        <a
                          href="javascript:void(0)"
                          class="product-3-layout-view"
                        >
                          <ul class="filter-select">
                            <li></li>
                            <li></li>
                            <li></li>
                          </ul>
                        </a>
                      </li>
                      <li>
                        <a
                          href="javascript:void(0)"
                          class="product-4-layout-view"
                        >
                          <ul class="filter-select">
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                          </ul>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 ratio3_2">
              <div class="product-wrapper-grid special-section grid-box">
                <div class="row content grid">
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 col-lg-4 col-sm-6 grid-item">
                    <div class="special-box p-0">
                      <div class="special-img"></div>
                      <div class="special-content">
                        <h5></h5>
                        <div class="tour-detail">
                          <span></span>
                          <h6></h6>
                          <div class="include-sec">
                            <span></span>
                            <ul class="include">
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                              <li>
                                <div class="ldr-img"></div>
                              </li>
                            </ul>
                          </div>
                          <div class="bottom-section">
                            <div class="price">
                              <h6></h6>
                              <span></span>
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
      </section>
    </div>
    pre-loader end -->

    <!-- header start -->
    <!-- <header class="inner-page overlay-black">
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

    <!-- breadcrumb start -->
    <section class="breadcrumb-section parallax-img pt-0">
      <img
        src="../assets/images/inner-pages/breadcrumb1.jpg"
        class="bg-img img-fluid blur-up lazyload"
        alt=""
      />
      <div class="breadcrumb-content overlay-black">
        <div>
          <h2>Tour</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Tour</li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="bird-animation">
        <div class="bird-container bird-container--one">
          <div class="bird bird--one"></div>
        </div>
        <div class="bird-container bird-container--two">
          <div class="bird bird--two"></div>
        </div>
        <div class="bird-container bird-container--three">
          <div class="bird bird--three"></div>
        </div>
        <div class="bird-container bird-container--four">
          <div class="bird bird--four"></div>
        </div>
      </div>
    </section>
    <!-- breadcrumb end -->

    <!-- section start -->
    <section class="small-section bg-inner">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <form>
            <div class="filter-panel">
              <div class="left-filter">
                <div class="respon-filter-btn">
                  <h6>filter <i class="fas fa-sort-down"></i></h6>
                  <span class="according-menu"></span>
                </div>
                <div class="filters respon-filter-content filter-button-group">
                  <ul class="cate_list" >
                    <li class="active" data-filter="*">전체</li>
                    <li data-filter=".a12">#관광</li>
                    <li data-filter=".a32">#숙박</li>
                    <li data-filter=".a39">#음식</li>
                  </ul>
                </div>
              </div>
              <div class="right-panel search_filter">
                <a href="javascript:void(0)" class="view-map"
                  ><i class="fas fa-search"></i> 검색
                </a>
                <a
                  href="javascript:void(0)"
                  class="filter_button filter-bottom-title"
                >
                  <img
                    src="../assets/images/icon/adjust.png"
                    class="img-fluid blur-up lazyload"
                    alt=""
                  />
                  <h5>검색 필터</h5>
                </a>
                <div class="left-sidebar filter-bottom-content">
                  <div id="fbox" class="middle-part collection-collapse-block open">
                    <div class="collection-collapse-block-content row">
                      <div class="filter-block col">
                        <div class="collection-collapse-block open">
                          <h6 class="collapse-block-title">지역별 분류</h6>
                          <div class="collection-collapse-block-content row">
                            <div name="Loc_cates" class="collection-brand-filter col-4">
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="1.0"
                                  value="1.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="1.0"
                                  >서울</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="2.0"
                                  value="2.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="2.0"
                                  >인천</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="3.0"
                                  value="3.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="3.0"
                                  >대전</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="31.0"
                                  value="31.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="31.0"
                                  >경기도</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="32.0"
                                  value="32.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="32.0"
                                  >강원도</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="33.0"
                                  value="33.0"
                                  name="Loc"
                                />
                                <label class="form-check-label" for="33.0"
                                  >충청북도</label>
                              </div>
                            </div>
                            <div name="Loc_cates" class="collection-brand-filter col-4">
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="34.0"
                                />
                                <label class="form-check-label" for="34.0"
                                  >충청남도</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="35.0"
                                />
                                <label class="form-check-label" for="35.0"
                                  >경상북도</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="36.0"
                                />
                                <label class="form-check-label" for="36.0"
                                  >경상남도</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="37.0"
                                />
                                <label class="form-check-label" for="37.0"
                                  >전라북도</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="38.0"
                                />
                                <label class="form-check-label" for="38.0"
                                  >전라남도</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="39.0"
                                />
                                <label class="form-check-label" for="39.0"
                                  >제주도</label
                                >
                              </div>
                            </div>
                            <div name="Loc_cates" class="collection-brand-filter col-4">
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="4.0"
                                />
                                <label class="form-check-label" for="4.0"
                                  >대구</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="5.0"
                                />
                                <label class="form-check-label" for="5.0"
                                  >광주</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="6.0"
                                />
                                <label class="form-check-label" for="6.0"
                                  >부산</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="7.0"
                                />
                                <label class="form-check-label" for="7.0"
                                  >울산</label>
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="8.0"
                                />
                                <label class="form-check-label" for="8.0"
                                  >세종</label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="filter-block col">
                        <div class="collection-collapse-block open">
                          <h6 class="collapse-block-title">태그별 분류</h6>
                          <div class="collection-collapse-block-content">
                            <div class="collection-brand-filter">
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="p-1"
                                />
                                <label class="form-check-label" for="p-1"
                                  >태그</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="p-2"
                                />
                                <label class="form-check-label" for="p-2"
                                  >별로</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="p-3"
                                />
                                <label class="form-check-label" for="p-3"
                                  >보이도록</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="p-4"
                                />
                                <label class="form-check-label" for="p-4"
                                  >설정</label
                                >
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="text-end button_bottom">
                        <a
                          href="javascript:void(0)"
                          class="btn btn-solid color1 me-2"
                          id="btnSearch"
                          >필터 적용</a
                        >
                        <a
                          href="javascript:void(0)"
                          class="btn btn-solid color1 close-filter-bottom"
                          >닫기</a
                        >
                      </div>
                    </div>
                  </div>
                </div>
                <div class="collection-grid-view">
                  <ul>
                    <li>
                      <a
                        href="javascript:void(0)"
                        class="product-2-layout-view"
                      >
                        <ul class="filter-select">
                          <li></li>
                          <li></li>
                        </ul>
                      </a>
                    </li>
                    <li>
                      <a
                        href="javascript:void(0)"
                        class="product-3-layout-view"
                      >
                        <ul class="filter-select">
                          <li></li>
                          <li></li>
                          <li></li>
                        </ul>
                      </a>
                    </li>
                    <li>
                      <a
                        href="javascript:void(0)"
                        class="product-4-layout-view"
                      >
                        <ul class="filter-select">
                          <li></li>
                          <li></li>
                          <li></li>
                          <li></li>
                        </ul>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </form>
          </div>
          <div class="col-xl-12 onclick-map " >
            <div class="book-table single-table bg-inner">
              <div class="table-form classic-form">
                <form action="./tour">
                  <div class="row w-100">
                    <div class="form-group col-2">
                      <select id="tour_cate_code" class="btn btn-rounded color1">
                        <option value="" >전체</option>
                        <option value="12">관광</option>
                        <option value="32">숙박</option>
                        <option value="39">음식</option>
                      </select>
                    </div>
                    <div class="form-group col-8">
                      <input
                        type="text"
                        class="form-control"
                        id="keyword"
                        placeholder="검색어 입력"
                        value="${search.keyword}"
                      />
                      <img
                        src="../assets/images/icon/table-no.png"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                    </div>
                    <input type="hidden" value="${search.tour_cate_code}" id="tour_cate_code"/>
                  <button id="btnSearch" class="btn btn-rounded col-1 color1">검색</button>
                </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-12 ratio3_2">
            <div class="product-wrapper-grid special-section grid-box">
              <div class="row content grid">
                <!-- 여행지 리스트 객체 반복 시작 -->
                <c:forEach items="${TourList }" var="TourData">
                  <div
                    class="col-xl-3 col-lg-4 col-sm-6 a${TourData.tour_cate_code} grid-item wow fadeInUp"
                    data-class="a${TourData.tour_cate_code}"
                  >
                    <div class="special-box p-0">
                      <div class="special-img">
                        <!-- tour_num으로 상세 페이지 구분 -->
                        <a href="/touro/${TourData.tour_num}">
                          <img
                            src="../${TourData.tour_img1_path}"
                            class="img-fluid blur-up lazyload"
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
                        <a href="tour-single-6.html">
                          <h5>
                            ${TourData.tour_name}<span
                              >${TourData.tour_addr}</span
                            >
                          </h5>
                        </a>
                        <div class="tour-detail">
                          <h6 class="nowrap-cls">${TourData.tour_content }</h6>
                          <div class="include-sec">
                            <span>별점 ${TourData.tour_star}</span>
                            <ul class="include">
                              <c:choose>
                                <c:when test="${0 eq TourData.tour_star
                                }">
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                </c:when>
                                <c:when test="${TourData.tour_star > 0 and 1 > TourData.tour_star}">
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                </c:when>
                                <c:when test="${TourData.tour_star > 1 and 2 > TourData.tour_star}">
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                </c:when>
                                <c:when test="${TourData.tour_star > 3 and 4 > TourData.tour_star}">
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li class="not-include">
                                    <i class="far fa-star"></i>
                                  </li>
                                </c:when>
                                <c:when test="${TourData.tour_star > 4}">
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                  <li>
                                    <i class="fas fa-star"></i>
                                  </li>
                                </c:when>
                                <c:otherwise>
                                  <li>
                                    <i class="far fa-star">?</i>
                                  </li>
                                </c:otherwise>
                              </c:choose>
                            </ul>
                          </div>

                          <!--<div class="bottom-section">
                            <div class="price">
                              <h6>0000명</h6>
                              <span>조회수</span>
                            </div>
                          </div>-->
                        </div>
                      </div>
                      <div class="label-offer">
                        <c:choose>
                          <c:when test="${TourData.tour_cate_code eq 12}">관광지</c:when>
                          <c:when test="${TourData.tour_cate_code eq 32}">숙박업</c:when>
                          <c:when test="${TourData.tour_cate_code eq 39}">음식점</c:when>
                          <c:otherwise>?</c:otherwise>
                        </c:choose>
                      </div>
                    </div>
                  </div>
                </c:forEach>
                <!-- 여행지 리스트 객체 반복 끝 -->
              </div>
            </div>

            <nav
              aria-label="Page navigation example"
              class="pagination-section mt-0"
            >
              <ul class="pagination">
                <c:if test="${paging.prev}">
                  <li class="page-item">
                    <a
                      class="page-link"
                      href="#"
                      aria-label="Previous"
                      onClick="fn_prev('${paging.page}', '${paging.range}', '${paging.rangeSize}', '${paging.listSize}'
                    ,'${search.tour_cate_code}', '${search.keyword}')"
                    >
                      <span aria-hidden="true">&laquo;</span>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                </c:if>

                <c:forEach
                  begin="${paging.startPage}"
                  end="${paging.endPage}"
                  var="testId"
                >
                  <li class="page-item <c:out value="${paging.page == testId ? 'active' : ''}"/> ">
                    <a class="page-link" 
                    href="#" 
                    onClick="fn_pagination('${testId}','${paging.range}', '${paging.rangeSize}', '${paging.listSize}' ,'${search.tour_cate_code}', '${search.keyword}')">
                    ${testId}</a>
                  </li>
                </c:forEach>
                <c:if test="${paging.next}">
                  <li class="page-item">
                    <a
                      class="page-link"
                      href="#"
                      aria-label="Next"
                      onClick="fn_next('${paging.page}', '${paging.range}', '${paging.rangeSize}', '${paging.listSize}' ,'${search.tour_cate_code}', '${search.keyword}')">
                      <span aria-hidden="true">&raquo;</span>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </c:if>
              </ul>
            </nav>
            <p>${paging.listCnt}개의 여행지 데이터</p> 
          </div>
        </div>
      </div>
    </section>
    <!-- section End -->

    <!-- footer start -->
    <!-- <footer>
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
    </footer> -->
    <!-- footer end -->

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

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- filter js -->
    <script src="../assets/js/filter.js"></script>
    <script src="../assets/js/isotope.min.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- wow js-->
    <script src="../assets/js/wow.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <!-- 리스트 용 js -->
    <script src="../assets/js/tourListNav.js"></script>

    <script>
      $("#datepicker").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm",
      });
      $("#datepicker1").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm",
      });
      new WOW().init();
    </script>
  </body>
</html>
