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
    <!-- 세션 로그인 값 -->
    <input type="hidden" value="${sessionScope.loggedId}" id="loggedInUser" />

    <!-- pre-loader start -->
    <div class="skeleton_loader">
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
      <div class="home_section">
        <div class="home home-60"></div>
      </div>
      <section class="single-section small-section bg-inner">
        <div class="container">
          <div class="row">
            <div class="">
              <div class="description-section tab-section">
                <div class="menu-top menu-up">
                  <ul class="nav nav-tabs">
                    <li><a></a></li>
                    <li><a></a></li>
                    <li><a></a></li>
                    <li><a></a></li>
                    <li><a></a></li>
                    <li><a></a></li>
                  </ul>
                </div>
                <div class="description-details tab-content">
                  <div class="menu-part about tab-pane fade show active">
                    <div class="about-sec">
                      <p class="top-space">
                        <span></span>
                        <span></span>
                        <span></span>
                      </p>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="about-sec">
                          <h4></h4>
                          <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                          </ul>
                        </div>
                      </div>
                      <div class="col-md-6 margin-up">
                        <div class="about-sec">
                          <h4></h4>
                          <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="detail-img">
                      <div class="ldr-img"></div>
                    </div>
                    <div class="about-sec">
                      <h6></h6>
                      <p>
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                      </p>
                      <h6></h6>
                      <p>
                        <span></span>
                        <span></span>
                      </p>
                      <h6></h6>
                      <p class="bottom-space">
                        <span></span>
                        <span></span>
                        <span></span>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--
            <div class="col-xl-3 col-lg-4">
              <div class="">
                <div class="single-sidebar">
                  <div class="selection-section">
                    <h4 class="title"></h4>
                    <div class="book-btn-section border-top-0">
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-input"></div>
                      <div class="ldr-btn"></div>
                    </div>
                  </div>
                </div>
                <div class="single-sidebar p-0">
                  <div class="newsletter-sec">
                    <div>
                      <h4 class="title"></h4>
                      <p>
                        <span></span>
                        <span></span>
                        <span></span>
                      </p>
                      <form>
                        <div class="ldr-input"></div>
                        <div class="ldr-btn"></div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>-->
          </div>
        </div>
      </section>
    </div>
    <!-- pre-loader end -->

    <!-- header start -->
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
                        <a href="/touro/tour" class="nav-link">Tour</a>
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
    <!--  header end -->

    <!-- breadcrumb start -->
    <section class="home_section p-0">
      <div>
        <div class="home home-60">
          <img
            src="../assets/images/tour/spain4.jpg"
            class="img-fluid blur-up lazyload bg-img"
            alt=""
          />
          <div class="container">
            <div class="row">
              <div class="col-md-8 offset-md-2">
                <div class="home-content pt-0 mix-layout mrg-cls">
                  <div>
                    <h1>여행지 이름</h1>
                    <ul class="package-detail">
                      <li>주소</li>
                      <li>(상세 주소)</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- breadcrumb end -->

    <!-- section start -->
    <section class="single-section small-section bg-inner">
      <div class="container">
        <div class="row">
          <div class="">
            <div class="description-section tab-section">
              <!-- 메뉴 -->
              <div class="menu-top menu-up">
                <ul class="nav nav-tabs" id="top-tab" role="tablist">
                  <li class="nav-item">
                    <a
                      data-bs-toggle="tab"
                      class="nav-link active"
                      href="#highlight"
                      >여행지 소개</a
                    >
                  </li>
                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#itinerary"
                      >상세 정보</a
                    >
                  </li>
                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#gallery"
                      >사진</a
                    >
                  </li>
                  <li class="nav-item">
                    <a
                      data-bs-toggle="tab"
                      class="nav-link"
                      href="#accommodations"
                    >
                      주변 여행지 정보
                    </a>
                  </li>
                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#location">
                      지도
                    </a>
                  </li>
                  <li class="nav-item">
                    <a data-bs-toggle="tab" class="nav-link" href="#review">
                      댓글 리뷰
                    </a>
                  </li>
                </ul>
              </div>

              <div class="description-details tab-content" id="top-tabContent">
                <!-- 여행지 소개 -->
                <div
                  class="menu-part about tab-pane fade show active"
                  id="highlight"
                >
                  <div class="row">
                    <div class="about-sec col-lg-6">
                      <div>
                        <br />
                        <h2>
                          ${TourData.tour_name} - ${TourData.tour_cate_code}
                        </h2>
                      </div>
                      <div class="row"><br /></div>
                      <div class="about-sec">
                        <h4>${TourData.tour_addr}</h4>
                      </div>
                    </div>

                    <div class="detail-img card col-lg-6">
                      <img
                        src="../${TourData.tour_img1_path}"
                        class="card-body img-fluid blur-up lazyload"
                        alt=""
                      />
                    </div>
                  </div>
                  <div class="row">
                    <div class="about-sec col-lg-6">
                      <h6>소개문</h6>
                      <p>${TourData.tour_content}</p>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-lg-5 row">
                      <div class="row"></div>
                      <div class="btn-group-showcase offset-xl-1">
                        <a
                          href="#"
                          class="btn btn-rounded btn-secondary col-2"
                          data-bs-toggle=""
                          data-placement=""
                          title="${TourData.tour_num}"
                          data-original-title="Add_to_Wishlist"
                        >
                          <i class="far fa-heart"></i
                        ></a>
                        <!--<a
                    href="#"
                    class="btn btn-rounded color1 col-2"
                    data-bs-toggle=""
                    data-placement=""
                    title=""
                  >
                    <i class="fas fa-heart"></i
                  ></a>
                  -->
                        <a
                          href="#"
                          class="btn btn-rounded color2 col-4"
                          data-bs-toggle="modal"
                          data-bs-target="#tour-q"
                          title=""
                        >
                          문의하기
                        </a>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 상세 정보 -->
                <div class="menu-part accordion tab-pane fade" id="itinerary">
                  <div id="accordion" class="row">
                    <div class="card col-lg-6">
                      <div class="card-header" id="headingOne">
                        <h5 class="mb-0">
                          <button
                            class="btn btn-link disabled"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseOne"
                            aria-expanded="true"
                            aria-controls="collapseOne"
                          >
                            해당 여행지의 정보
                          </button>
                        </h5>
                      </div>
                      <div
                        id="collapseOne"
                        class="collapse show"
                        aria-labelledby="headingOne"
                        data-bs-parent="#accordion"
                      >
                        <div class="card-body">
                          <div class="highlight"></div>
                        </div>
                      </div>
                    </div>
                    <div class="card col-lg-3">
                      <div class="card-header" id="headingTwo">
                        <h5 class="mb-0">
                          <button
                            class="btn btn-link collapsed disabled"
                            data-bs-toggle="collapse show"
                            data-bs-target="#collapseTwo"
                            aria-expanded="false"
                            aria-controls="collapseTwo"
                          >
                            분류별 추가 정보
                          </button>
                        </h5>
                      </div>
                      <div
                        id="collapseTwo"
                        class="collapse show"
                        aria-labelledby="headingTwo"
                        data-bs-parent="#accordion"
                      >
                        <div class="card-body">
                          Today we proceed to Toledo - declared as World
                          Heritage Site by UNESCO. On arrival we visit the
                          city's most famous monument Santa Maria la Blanca
                          Synagogue. Then we visit Sword factory. Later we leave
                          for Seville
                          <div class="highlight">
                            <ul>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                breakfast
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                lunch
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                dinner
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/bed.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                night stay in seville
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card col-lg-3">
                      <div class="card-header" id="headingThree">
                        <h5 class="mb-0">
                          <button
                            class="btn btn-link collapsed disabled"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseThree"
                            aria-expanded="false"
                            aria-controls="collapseThree"
                          >
                            여행지 현재 별점
                          </button>
                        </h5>
                      </div>
                      <div
                        id="collapseThree"
                        class="collapse show"
                        aria-labelledby="headingThree"
                        data-bs-parent="#accordion"
                      >
                        <div class="card-body">
                          <div class="highlight"></div>
                        </div>
                      </div>
                    </div>

                    <div class="card col-lg-6">
                      <div class="card-header" id="headingFour">
                        <h5 class="mb-0">
                          <button
                            class="btn btn-link disabled"
                            data-bs-toggle="collapse"
                            data-bs-target="#collapseFour"
                            aria-expanded="true"
                            aria-controls="collapseFour"
                          >
                            날씨 정보
                          </button>
                        </h5>
                      </div>

                      <div
                        id="collapseFour"
                        class="collapse show"
                        aria-labelledby="headingFour"
                        data-bs-parent="#accordion"
                      >
                        <div class="card-body">
                          <div class="single-sidebar">
                            <ul class="weather-sec">
                              <li>
                                <h5>09 Sep</h5>
                                <svg
                                  viewBox="0 0 512.00722 512"
                                  xmlns="http://www.w3.org/2000/svg"
                                >
                                  <path
                                    d="m256.003906 429.480469c-95.65625 0-173.480468-77.820313-173.480468-173.476563s77.824218-173.476562 173.480468-173.476562c48.648438 0 95.363282 20.621094 128.175782 56.574218 2.832031 3.101563 2.609374 7.910157-.492188 10.742188s-7.910156 2.609375-10.742188-.492188c-29.9375-32.804687-72.558593-51.621093-116.941406-51.621093-87.273437 0-158.269531 71-158.269531 158.273437 0 87.269532 70.996094 158.269532 158.269531 158.269532 87.269532 0 158.269532-71 158.269532-158.269532 0-29.417968-8.125-58.128906-23.5-83.027344-2.207032-3.574218-1.097657-8.261718 2.476562-10.464843 3.574219-2.207031 8.257812-1.097657 10.464844 2.472656 16.855468 27.300781 25.765625 58.777344 25.765625 91.019531 0 95.65625-77.820313 173.476563-173.476563 173.476563zm0 0"
                                  ></path>
                                  <path
                                    d="m318.605469 512.003906c-11.945313 0-23.792969-9.179687-35.300781-18.097656-9.335938-7.234375-19.917969-15.433594-27.300782-15.433594-7.382812 0-17.964844 8.199219-27.300781 15.433594-13.363281 10.351562-27.183594 21.058594-41.078125 17.34375-14.441406-3.859375-21.1875-20.433594-27.710938-36.457031-4.320312-10.617188-9.21875-22.652344-15.152343-26.085938-6.121094-3.539062-19.164063-1.765625-30.667969-.203125-4.058594.554688-8.257812 1.125-12.320312 1.511719-4.179688.398437-7.890626-2.671875-8.289063-6.851563-.398437-4.179687 2.667969-7.890624 6.847656-8.289062 3.761719-.355469 7.800781-.90625 11.710938-1.4375 14.605469-1.984375 29.707031-4.039062 40.335937 2.109375 10.441406 6.039063 16.125 20.007813 21.621094 33.511719 4.882812 12 10.417969 25.59375 17.550781 27.5 6.617188 1.765625 17.890625-6.964844 27.835938-14.671875 11.8125-9.15625 24.03125-18.621094 36.617187-18.621094 12.585938 0 24.800782 9.46875 36.613282 18.621094 9.949218 7.707031 21.222656 16.441406 27.835937 14.671875 7.136719-1.90625 12.667969-15.503906 17.550781-27.5 5.5-13.503906 11.183594-27.472656 21.621094-33.511719 10.628906-6.148437 25.730469-4.09375 40.335938-2.109375 12.675781 1.722656 27.042968 3.675781 32.097656-1.375 5.054687-5.054688 3.101562-19.421875 1.378906-32.097656-1.988281-14.605469-4.042969-29.707032 2.109375-40.335938 6.039063-10.441406 20.003906-16.125 33.511719-21.621094 11.996094-4.882812 25.59375-10.417968 27.5-17.550781 1.765625-6.617187-6.96875-17.890625-14.675782-27.835937-9.152343-11.8125-18.621093-24.03125-18.621093-36.617188 0-12.582031 9.46875-24.800781 18.621093-36.613281 7.707032-9.949219 16.441407-21.222656 14.675782-27.835937-1.90625-7.132813-15.503906-12.667969-27.5-17.550782-13.507813-5.496094-27.472656-11.183594-33.515625-21.621094-6.148438-10.628906-4.09375-25.730468-2.109375-40.335937 1.726562-12.675781 3.679687-27.042969-1.375-32.097656-5.054688-5.054688-19.421875-3.101563-32.097656-1.378907-14.605469 1.988282-29.707032 4.042969-40.335938-2.105468-10.441406-6.042969-16.125-20.007813-21.621094-33.515625-4.882812-11.996094-10.417968-25.59375-17.550781-27.5-6.613281-1.761719-17.890625 6.96875-27.835937 14.675781-11.8125 9.152344-24.03125 18.617188-36.617188 18.617188s-24.800781-9.464844-36.613281-18.617188c-9.949219-7.707031-21.222657-16.441406-27.835938-14.675781-7.136719 1.90625-12.667969 15.503906-17.550781 27.5-5.5 13.507812-11.183594 27.472656-21.625 33.511719-10.625 6.148437-25.726562 4.097656-40.335938 2.109374-12.675781-1.722656-27.042968-3.675781-32.09375 1.378907-5.054687 5.054687-3.101562 19.421875-1.378906 32.097656 1.988282 14.605469 4.039063 29.707031-2.109375 40.335937-6.039062 10.4375-20.007812 16.121094-33.511719 21.621094-11.996093 4.882813-25.59375 10.414063-27.5 17.550782-1.769531 6.613281 6.96875 17.886718 14.675782 27.832031 9.152344 11.816406 18.617187 24.03125 18.617187 36.617187 0 12.585938-9.464843 24.804688-18.617187 36.617188-7.707032 9.945312-16.445313 21.21875-14.675782 27.835937 1.90625 7.136719 15.503907 12.667969 27.5 17.550781 13.503907 5.496094 27.472657 11.183594 33.511719 21.621094 6.148438 10.628906 4.09375 25.730469 2.109375 40.335938-1.722656 12.675781-3.675781 27.042968 1.378906 32.097656 2.96875 2.96875 2.96875 7.785156 0 10.753906-2.972656 2.96875-7.785156 2.96875-10.753906 0-10.386718-10.386718-8-27.933594-5.691406-44.902344 1.5625-11.503906 3.335938-24.546874-.207031-30.671874-3.429688-5.929688-15.464844-10.828126-26.082031-15.148438-16.027344-6.523438-32.597657-13.269531-36.457032-27.710938-3.714844-13.898437 6.992188-27.714843 17.34375-41.078124 7.234375-9.335938 15.433594-19.917969 15.433594-27.300782 0-7.382812-8.199219-17.964844-15.433594-27.300781-10.347656-13.363281-21.054687-27.179687-17.339844-41.078125 3.859376-14.441406 20.433594-21.1875 36.457032-27.707031 10.617187-4.324219 22.648437-9.21875 26.085937-15.152344 3.539063-6.121094 1.765625-19.164063.203125-30.671875-2.308594-16.96875-4.695312-34.511719 5.691406-44.898438 10.386719-10.386718 27.929688-8 44.898438-5.691406 11.507812 1.5625 24.550781 3.335938 30.671875-.207031 5.933594-3.429687 10.832031-15.464844 15.152344-26.082031 6.523437-16.027344 13.265625-32.597656 27.710937-36.457032 13.898438-3.714843 27.714844 6.988282 41.074219 17.34375 9.335937 7.234376 19.917969 15.433594 27.300781 15.433594 7.386719 0 17.96875-8.199218 27.304688-15.433594 13.359375-10.351562 27.171875-21.0625 41.074218-17.34375 14.441407 3.859376 21.1875 20.433594 27.710938 36.457032 4.320312 10.617187 9.21875 22.652344 15.152344 26.085937 6.121094 3.539063 19.164062 1.765625 30.671875.203125 16.96875-2.308594 34.511719-4.695312 44.898437 5.691406 10.386719 10.386719 8 27.929688 5.691406 44.898438-1.5625 11.507812-3.335937 24.550781.203126 30.671875 3.433593 5.933594 15.46875 10.832031 26.085937 15.152344 16.023437 6.523437 32.597656 13.265625 36.457031 27.710937 3.714844 13.898438-6.992187 27.714844-17.34375 41.074219-7.234375 9.335937-15.433594 19.917969-15.433594 27.300781 0 7.382813 8.199219 17.964844 15.433594 27.300782 10.351563 13.363281 21.058594 27.179687 17.34375 41.078124-3.859375 14.441407-20.433594 21.1875-36.457031 27.710938-10.617187 4.320312-22.652344 9.214844-26.085937 15.148438-3.539063 6.125-1.765626 19.167968-.203126 30.671874 2.308594 16.96875 4.695313 34.515626-5.691406 44.898438-10.386718 10.386719-27.933594 8-44.898437 5.695312-11.507813-1.566406-24.550781-3.339843-30.671875.203126-5.933594 3.433593-10.832032 15.464843-15.152344 26.082031-6.523438 16.023437-13.265625 32.597656-27.710938 36.457031-1.929687.515625-3.855468.753906-5.777343.753906zm0 0"
                                  ></path>
                                  <path
                                    d="m158.855469 230.277344c-1.945313 0-3.890625-.742188-5.375-2.226563-2.96875-2.96875-2.96875-7.785156 0-10.753906 17.007812-17.007813 44.683593-17.007813 61.695312 0 2.96875 2.96875 2.96875 7.785156 0 10.753906-2.972656 2.96875-7.785156 2.96875-10.753906 0-11.082031-11.082031-29.105469-11.078125-40.1875 0-1.484375 1.484375-3.433594 2.226563-5.378906 2.226563zm0 0"
                                  ></path>
                                  <path
                                    d="m353.148438 230.277344c-1.945313 0-3.890626-.742188-5.375-2.226563-11.078126-11.078125-29.109376-11.078125-40.1875 0-2.96875 2.96875-7.785157 2.96875-10.753907 0s-2.96875-7.78125 0-10.753906c17.007813-17.007813 44.6875-17.007813 61.695313 0 2.96875 2.972656 2.96875 7.785156 0 10.753906-1.484375 1.484375-3.429688 2.226563-5.378906 2.226563zm0 0"
                                  ></path>
                                  <path
                                    d="m256.003906 308.960938c-16.511718 0-32.035156-6.429688-43.707031-18.105469-2.96875-2.96875-2.96875-7.78125 0-10.75s7.785156-2.96875 10.75 0c8.804687 8.800781 20.507813 13.648437 32.957031 13.648437 12.449219 0 24.152344-4.847656 32.953125-13.648437 2.96875-2.96875 7.785157-2.96875 10.753907 0s2.96875 7.78125 0 10.75c-11.675782 11.675781-27.195313 18.105469-43.707032 18.105469zm0 0"
                                  ></path>
                                </svg>
                                <h6>27 °C</h6>
                              </li>
                              <li>
                                <h5>10 Sep</h5>
                                <svg
                                  viewBox="0 0 512.00119 512"
                                  xmlns="http://www.w3.org/2000/svg"
                                >
                                  <path
                                    d="m494.421875 406.894531c-9.757813-9.96875-22.355469-16.226562-36.003906-17.996093-3.347657-21.449219-13.21875-41.292969-28.296875-57 3.375-1.5625 7.039062-3.054688 10.644531-4.523438 14.984375-6.097656 30.480469-12.402344 34.125-26.054688 3.519531-13.148437-6.492187-26.066406-16.171875-38.558593-6.648438-8.582031-14.1875-18.308594-14.1875-24.960938 0-6.648437 7.535156-16.371093 14.183594-24.949219 9.683594-12.492187 19.695312-25.410156 16.175781-38.5625-3.648437-13.652343-19.136719-19.953124-34.113281-26.050781-9.753906-3.96875-20.8125-8.46875-23.902344-13.804687-3.183594-5.503906-1.554688-17.492188-.117188-28.070313 2.15625-15.859375 4.386719-32.261719-5.433593-42.082031-9.816407-9.820312-26.214844-7.589844-42.074219-5.429688-10.574219 1.441407-22.566406 3.070313-28.070312-.113281-5.335938-3.089843-9.835938-14.144531-13.804688-23.902343-6.09375-14.980469-12.398438-30.46875-26.050781-34.113282-13.148438-3.519531-26.066407 6.488282-38.558594 16.167969-8.582031 6.648437-18.304687 14.179687-24.953125 14.179687-6.652344 0-16.378906-7.535156-24.960938-14.183593-12.492187-9.675781-25.40625-19.683594-38.554687-16.167969-13.652344 3.648438-19.957031 19.136719-26.054687 34.117188-3.972657 9.757812-8.472657 20.8125-13.808594 23.898437-5.511719 3.1875-17.496094 1.558594-28.074219.121094-15.855469-2.160157-32.25-4.390625-42.070313 5.425781-9.824218 9.820312-7.59375 26.222656-5.4375 42.082031 1.4375 10.578125 3.066407 22.5625-.121093 28.074219-3.082031 5.332031-14.140625 9.832031-23.898438 13.800781-14.976562 6.097657-30.464843 12.398438-34.113281 26.054688-3.511719 13.148437 6.496094 26.0625 16.175781 38.554687 6.648438 8.578125 14.183594 18.304688 14.183594 24.953125 0 6.652344-7.535156 16.382813-14.1875 24.964844-9.675781 12.492187-19.683594 25.40625-16.171875 38.550781 3.648438 13.65625 19.140625 19.957032 34.125 26.054688 9.753906 3.972656 20.808594 8.46875 23.890625 13.796875 3.1875 5.515625 1.558594 17.503906.121094 28.078125-2.15625 15.859375-4.386719 32.257812 5.433593 42.078125 9.820313 9.820312 26.21875 7.59375 42.078126 5.4375 10.578124-1.441407 22.566406-3.070313 28.078124.117187 5.324219 3.082032 9.824219 14.136719 13.796876 23.894532 6.097656 14.980468 12.402343 30.472656 26.054687 34.121093 1.773437.476563 3.597656.714844 5.472656.714844 2.511719 0 5.128907-.445313 7.867188-1.300781 14.0625 22.375 38.953125 37.285156 67.277343 37.285156h143.03125c4.199219 0 7.605469-3.402344 7.605469-7.601562 0-4.199219-3.40625-7.605469-7.605469-7.605469h-143.03125c-35.410156 0-64.21875-28.808594-64.21875-64.214844 0-35.410156 28.808594-64.21875 64.21875-64.21875 3.097657 0 6.253907.234375 9.382813.691406 3.238281.472657 6.421875-1.179687 7.890625-4.105469 15.574219-30.921874 46.730469-50.128906 81.316406-50.128906 22.792969 0 44.59375 8.464844 61.394532 23.835938 16.695312 15.277344 27.058593 36.039062 29.179687 58.46875.363281 3.839844 3.542969 6.796875 7.394531 6.886718 12.167969.28125 23.5625 5.226563 32.085938 13.933594 8.535156 8.71875 13.234375 20.238282 13.234375 32.441406 0 25.589844-20.816407 46.410157-46.40625 46.410157h-22.023438c-4.199219 0-7.601562 3.402343-7.601562 7.601562s3.402343 7.605469 7.601562 7.605469h22.023438c33.976562 0 61.613281-27.640625 61.613281-61.617188 0-16.203124-6.242188-31.503906-17.578125-43.082031zm-233.296875-53.902343c-2.078125-.164063-4.15625-.246094-6.210938-.246094-22.917968 0-43.585937 9.765625-58.097656 25.347656-62.128906-18.09375-105.132812-75.128906-105.132812-140.292969 0-31.292969 9.75-61.132812 28.195312-86.292969 2.480469-3.386718 1.75-8.144531-1.636718-10.625-3.390626-2.484374-8.144532-1.753906-10.628907 1.636719-20.367187 27.78125-31.136719 60.730469-31.136719 95.28125 0 69.992188 44.945313 131.496094 110.554688 153.175781-7.320312 12.015626-11.542969 26.121094-11.542969 41.191407 0 9.914062 1.84375 19.402343 5.175781 28.160156-.90625.097656-1.730468.066406-2.441406-.125-6.34375-1.695313-11.417968-14.164063-15.894531-25.164063-5.128906-12.601562-10.433594-25.632812-20.269531-31.324218-10.019532-5.792969-24.109375-3.878906-37.738282-2.023438-11.617187 1.578125-24.789062 3.367188-29.277343-1.121094-4.488281-4.488281-2.699219-17.65625-1.121094-29.273437 1.855469-13.628906 3.769531-27.722656-2.023437-37.742187-5.691407-9.835938-18.722657-15.140626-31.324219-20.269532-11-4.476562-23.46875-9.550781-25.164063-15.894531-1.566406-5.863281 6.441406-16.195313 13.503906-25.3125 8.539063-11.023437 17.371094-22.421875 17.371094-34.277344 0-11.851562-8.828125-23.25-17.371094-34.269531-7.0625-9.117188-15.070312-19.449219-13.503906-25.316406 1.695313-6.34375 14.160156-11.414063 25.15625-15.886719 12.605469-5.132813 25.640625-10.433594 31.332032-20.277344 5.792968-10.011719 3.878906-24.105469 2.023437-37.734375-1.578125-11.621094-3.367187-24.792968 1.117187-29.28125 4.488282-4.484375 17.65625-2.691406 29.269532-1.113281 13.632812 1.855469 27.726562 3.773437 37.742187-2.023437 9.839844-5.695313 15.144531-18.726563 20.277344-31.328126 4.476563-10.996093 9.550781-23.460937 15.898437-25.15625 5.867188-1.570312 16.195313 6.433594 25.3125 13.496094 11.023438 8.539063 22.421876 17.367188 34.273438 17.367188s23.246094-8.828125 34.265625-17.363282c9.117187-7.066406 19.453125-15.070312 25.320313-13.5 6.347656 1.695313 11.417968 14.160157 15.894531 25.15625 5.128906 12.601563 10.429687 25.632813 20.273437 31.332032 10.011719 5.792968 24.109375 3.875 37.738282 2.019531 11.617187-1.582031 24.785156-3.375 29.265624 1.113281 4.492188 4.488282 2.703126 17.660156 1.121094 29.28125-1.851562 13.628906-3.769531 27.722656 2.027344 37.738282 5.695312 9.839843 18.726562 15.144531 31.328125 20.273437 10.996094 4.472656 23.460937 9.546875 25.15625 15.890625 1.570313 5.867188-6.4375 16.203125-13.503906 25.320312-8.539063 11.019532-17.371094 22.414063-17.371094 34.265626 0 11.855468 8.832031 23.253906 17.375 34.273437 7.0625 9.117187 15.070313 19.449219 13.5 25.316406-1.695313 6.347657-14.164063 11.421875-25.167969 15.898438-5.835937 2.375-11.824218 4.8125-17.085937 7.699219-9.960938-7.617188-21.117188-13.363282-32.96875-17.035157 9.28125-20.671875 14.15625-43.351562 14.15625-66.152343 0-88.953126-72.371094-161.320313-161.324219-161.320313-41.5 0-80.929688 15.722656-111.023438 44.277344-3.046874 2.890625-3.175781 7.703125-.285156 10.75 2.890625 3.042969 7.703125 3.171875 10.75.28125 27.257813-25.859375 62.96875-40.101563 100.558594-40.101563 80.570312 0 146.117188 65.546875 146.117188 146.113282 0 22.003906-4.746094 43.050781-14.089844 62.660156-5.367188-.828125-10.824219-1.261719-16.332032-1.261719-38.582031 0-73.507812 20.472656-92.382812 53.789063zm0 0"
                                  ></path>
                                  <path
                                    d="m200.363281 212.292969c2.972657-2.96875 2.972657-7.78125 0-10.753907-7.742187-7.738281-18.03125-12.003906-28.980469-12.003906-10.949218 0-21.242187 4.265625-28.980468 12.003906-2.96875 2.972657-2.96875 7.785157 0 10.753907s7.785156 2.96875 10.75 0c4.871094-4.867188 11.34375-7.550781 18.230468-7.550781 6.886719 0 13.359376 2.683593 18.226563 7.550781 1.484375 1.484375 3.429687 2.226562 5.375 2.226562 1.949219 0 3.894531-.738281 5.378906-2.226562zm0 0"
                                  ></path>
                                  <path
                                    d="m275.253906 201.542969c-2.96875 2.96875-2.96875 7.78125 0 10.75 2.96875 2.972656 7.785156 2.972656 10.753906 0 10.050782-10.050781 26.402344-10.046875 36.457032 0 1.484375 1.484375 3.429687 2.230469 5.375 2.230469 1.945312 0 3.890625-.742188 5.378906-2.230469 2.96875-2.96875 2.96875-7.78125-.003906-10.753907-15.980469-15.976562-41.984375-15.980468-57.960938.003907zm0 0"
                                  ></path>
                                  <path
                                    d="m270.761719 248.917969c-8.800781 8.800781-20.503907 13.648437-32.953125 13.648437-12.449219 0-24.152344-4.847656-32.953125-13.648437-2.972657-2.972657-7.785157-2.972657-10.753907 0-2.96875 2.96875-2.96875 7.78125 0 10.75 11.675782 11.675781 27.195313 18.105469 43.707032 18.105469 16.511718 0 32.035156-6.429688 43.710937-18.105469 2.96875-2.96875 2.96875-7.78125 0-10.75-2.972656-2.972657-7.785156-2.972657-10.757812 0zm0 0"
                                  ></path>
                                </svg>
                                <h6>26 °C</h6>
                              </li>
                              <li>
                                <h5>11 Sep</h5>
                                <svg
                                  viewBox="0 0 512.00038 512"
                                  xmlns="http://www.w3.org/2000/svg"
                                >
                                  <path
                                    d="m488.519531 181.4375c0-4.378906 5.480469-11.453125 10.320313-17.695312 7.589844-9.796876 15.441406-19.921876 12.542968-30.746094-2.996093-11.203125-15.128906-16.140625-26.863281-20.914063-6.738281-2.742187-15.125-6.152343-17.132812-9.617187-2.085938-3.613282-.847657-12.707032.144531-20.015625 1.691406-12.429688 3.4375-25.285157-4.632812-33.355469-8.0625-8.0625-20.90625-6.316406-33.328126-4.628906-7.3125.996094-16.414062 2.230468-20.03125.140625-3.476562-2.011719-6.890624-10.398438-9.632812-17.136719-4.773438-11.734375-9.710938-23.863281-20.910156-26.851562-10.820313-2.898438-20.941406 4.949218-30.730469 12.53125-6.242187 4.839843-13.324219 10.324218-17.710937 10.324218-4.382813 0-11.457032-5.480468-17.699219-10.316406-9.792969-7.589844-19.917969-15.4375-30.738281-12.539062-11.207032 2.988281-16.144532 15.121093-20.917969 26.851562-2.742188 6.738281-6.15625 15.125-9.636719 17.136719-3.609375 2.089843-12.707031.851562-20.019531-.140625-12.417969-1.6875-25.265625-3.433594-33.335938 4.628906-8.0625 8.070312-6.316406 20.914062-4.625 33.335938.992188 7.3125 2.230469 16.414062.136719 20.035156-.535156.925781-1.894531 2.367187-5.257812 4.265625-3.523438-.34375-7.058594-.527344-10.542969-.527344-38.558594 0-73.464844 20.464844-92.335938 53.757813-2.085937-.164063-4.160156-.246094-6.203125-.246094-43.769531 0-79.378906 35.605468-79.378906 79.375 0 43.769531 35.609375 79.378906 79.378906 79.378906h48.398438c1.40625 14.914062 6.921875 28.933594 16.191406 40.917969 2.566406 3.320312 7.339844 3.929687 10.660156 1.359375 3.320313-2.566406 3.929688-7.339844 1.359375-10.660156-8.753906-11.316407-13.382812-24.882813-13.382812-39.230469 0-35.390625 28.792969-64.179688 64.179687-64.179688 3.0625 0 6.222656.230469 9.386719.691407 3.234375.46875 6.410156-1.183594 7.878906-4.105469 15.5625-30.902344 46.703125-50.097657 81.273438-50.097657 20.902343 0 40.550781 6.894532 56.824219 19.9375 15.804687 12.671876 27.054687 30.4375 31.675781 50.027344.945312 4 1.617187 8.089844 2.003906 12.15625.292969 3.863282 3.472656 6.933594 7.40625 7.023438 12.15625.277344 23.542969 5.222656 32.0625 13.921875 8.53125 8.714843 13.230469 20.230469 13.230469 32.425781 0 25.570312-20.808594 46.375-46.386719 46.375h-195.355469c-10.105468 0-19.777344-2.277344-28.738281-6.773438-3.75-1.882812-8.316406-.371093-10.199219 3.382813-1.882812 3.75-.367187 8.316406 3.382813 10.199219 11.097656 5.570312 23.058593 8.390625 35.554687 8.390625h195.355469c33.960937 0 61.585937-27.621094 61.585937-61.574219 0-4.824219-.566406-9.5625-1.640624-14.152344.269531-.238281.554687-.464844.808593-.71875 8.074219-8.066406 6.328125-20.917968 4.636719-33.347656-.992188-7.308594-2.230469-16.40625-.148438-20.007812 2.011719-3.476563 10.398438-6.890626 17.136719-9.632813 11.734375-4.777344 23.871094-9.714844 26.863281-20.914063 2.898438-10.820312-4.949218-20.941406-12.535156-30.734374-4.84375-6.242188-10.328125-13.320313-10.328125-17.710938zm-275.527343 50.289062c-2.085938-.167968-4.160157-.25-6.207032-.25-41.210937 0-75.171875 31.570313-79.003906 71.796876h-48.402344c-35.390625 0-64.179687-28.792969-64.179687-64.179688 0-35.390625 28.789062-64.179688 64.179687-64.179688 3.0625 0 6.222656.230469 9.386719.691407 3.234375.46875 6.40625-1.183594 7.878906-4.105469 15.5625-30.902344 46.703125-50.097656 81.273438-50.097656 3.679687 0 7.429687.226562 11.136719.671875 35.675781 4.359375 65.488281 29.683593 75.863281 63.8125-21.636719 8.863281-39.992188 24.777343-51.925781 45.839843zm283.710937-5.773437c-1.042969 3.902344-10.792969 7.871094-17.914063 10.769531-9.800781 3.988282-19.9375 8.117188-24.5625 16.097656-4.683593 8.113282-3.195312 19.070313-1.753906 29.667969.53125 3.910157 1.160156 8.5625 1.257813 12.523438-2.1875-3.34375-4.71875-6.496094-7.574219-9.410157-7.902344-8.074218-17.667969-13.710937-28.34375-16.5 23.292969-23.128906 36.429688-54.40625 36.429688-87.664062 0-30.027344-10.894532-58.984375-30.679688-81.535156-19.601562-22.335938-46.527344-36.882813-75.808594-40.953125-5.617187-.789063-11.402344-1.1875-17.1875-1.1875-17.792968 0-34.964844 3.695312-51.042968 10.988281-3.820313 1.730469-5.515626 6.234375-3.78125 10.058594 1.734374 3.820312 6.234374 5.515625 10.058593 3.78125 14.09375-6.390625 29.15625-9.628906 44.765625-9.628906 5.082032 0 10.152344.347656 15.085938 1.042968 25.679687 3.570313 49.292968 16.328125 66.488281 35.925782 17.351563 19.773437 26.90625 45.171874 26.90625 71.507812 0 28.71875-11.167969 55.753906-31.011719 75.945312-5.710937-21.976562-18.546875-41.84375-36.375-56.132812-18.726562-15.011719-42.285156-23.28125-66.332031-23.28125-8.898437 0-17.601563 1.105469-25.957031 3.191406-7.125-23.199218-21.972656-42.890625-41.390625-56.261718 6.796875-11.085938 15.648437-21.03125 25.894531-29.027344 3.308594-2.582032 3.894531-7.359375 1.3125-10.667969-2.578125-3.308594-7.355469-3.894531-10.664062-1.3125-11.742188 9.164063-21.875 20.574219-29.644532 33.296875-5.761718-2.855469-11.804687-5.210938-18.078125-6.988281.027344-.042969.054688-.082031.082031-.128907 4.695313-8.113281 3.203126-19.082031 1.761719-29.683593-1.019531-7.515625-2.417969-17.808594.3125-20.539063 2.738281-2.738281 13.03125-1.339844 20.542969-.320312 10.605469 1.441406 21.570312 2.933594 29.675781-1.761719 7.984375-4.613281 12.113281-14.757813 16.105469-24.5625 2.894531-7.117187 6.859375-16.859375 10.761719-17.902344 3.546875-.945312 11.617187 5.308594 17.507812 9.871094 8.566407 6.636719 17.425781 13.5 27.007813 13.5 9.585937 0 18.449218-6.863281 27.019531-13.503906 5.890625-4.5625 13.953125-10.816407 17.5-9.863281 3.894531 1.039062 7.859375 10.78125 10.753906 17.894531 3.992188 9.808593 8.121094 19.949219 16.101563 24.5625 8.117187 4.699219 19.085937 3.207031 29.6875 1.765625 7.515625-1.023438 17.800781-2.417969 20.53125.316406 2.746094 2.742188 1.34375 13.039062.324218 20.558594-1.441406 10.59375-2.929687 21.554687 1.757813 29.671875 4.621094 7.976562 14.757813 12.097656 24.558594 16.089843 7.117187 2.894532 16.867187 6.859376 17.910156 10.761719.949219 3.542969-5.304687 11.613281-9.871094 17.503907-6.640625 8.570312-13.507812 17.425781-13.507812 27.011718 0 9.589844 6.867187 18.453125 13.511719 27.023438 4.5625 5.886718 10.8125 13.953125 9.867187 17.488281zm0 0"
                                  ></path>
                                  <path
                                    d="m32.175781 401.425781c-2.351562-1.363281-5.257812-1.363281-7.613281 0-15.148438 8.769531-24.5625 25.070313-24.5625 42.550781 0 .648438.0117188 1.292969.0390625 1.933594.6835935 17.652344 14.7695315 26.890625 28.3320315 26.890625 13.558594 0 27.648437-9.238281 28.332031-26.890625.027344-.640625.039063-1.285156.039063-1.933594 0-17.480468-9.414063-33.78125-24.566407-42.550781zm9.339844 43.894531c-.351563 9.0625-7.300781 12.28125-13.144531 12.28125s-12.792969-3.21875-13.148438-12.285156c-.015625-.445312-.023437-.890625-.023437-1.339844 0-10.535156 4.953125-20.449218 13.171875-26.832031 8.21875 6.382813 13.171875 16.300781 13.171875 26.832031 0 .449219-.007813.894532-.027344 1.34375zm0 0"
                                  ></path>
                                  <path
                                    d="m125.839844 375.609375c.023437-.640625.035156-1.289063.035156-1.9375 0-17.476563-9.414062-33.777344-24.5625-42.546875-2.355469-1.363281-5.257812-1.363281-7.613281 0-15.152344 8.769531-24.566407 25.070312-24.566407 42.546875 0 .648437.011719 1.292969.039063 1.9375.683594 17.652344 14.769531 26.886719 28.332031 26.886719s27.648438-9.234375 28.335938-26.886719zm-41.480469-.585937c-.019531-.449219-.027344-.898438-.027344-1.351563 0-10.53125 4.953125-20.449219 13.171875-26.832031 8.21875 6.382812 13.171875 16.300781 13.171875 26.832031 0 .449219-.007812.898437-.023437 1.34375-.355469 9.066406-7.304688 12.28125-13.148438 12.28125s-12.792968-3.214844-13.144531-12.273437zm0 0"
                                  ></path>
                                  <path
                                    d="m123.226562 440.265625c-2.355468-1.363281-5.257812-1.363281-7.613281 0-15.152343 8.769531-24.566406 25.074219-24.566406 42.550781 0 .644532.015625 1.289063.039063 1.933594.683593 17.652344 14.773437 26.890625 28.332031 26.890625 13.5625 0 27.648437-9.238281 28.335937-26.894531.023438-.640625.035156-1.285156.035156-1.929688 0-17.476562-9.410156-33.78125-24.5625-42.550781zm9.339844 43.894531c-.351562 9.066406-7.304687 12.28125-13.148437 12.28125s-12.792969-3.214844-13.144531-12.277344c-.019532-.445312-.027344-.894531-.027344-1.347656 0-10.53125 4.953125-20.449218 13.171875-26.832031 8.21875 6.382813 13.171875 16.300781 13.171875 26.832031 0 .453125-.007813.902344-.023438 1.34375zm0 0"
                                  ></path>
                                  <path
                                    d="m214.273438 401.425781c-2.351563-1.363281-5.257813-1.363281-7.613282 0-15.152344 8.769531-24.5625 25.070313-24.5625 42.550781 0 .648438.011719 1.292969.035156 1.933594.6875 17.652344 14.773438 26.890625 28.335938 26.890625 13.558594 0 27.648438-9.238281 28.332031-26.890625.023438-.640625.039063-1.285156.039063-1.933594 0-17.480468-9.414063-33.78125-24.566406-42.550781zm9.339843 43.894531c-.351562 9.0625-7.300781 12.28125-13.144531 12.28125-5.847656 0-12.796875-3.21875-13.148438-12.285156-.015624-.445312-.027343-.890625-.027343-1.339844 0-10.535156 4.953125-20.449218 13.175781-26.832031 8.21875 6.382813 13.171875 16.300781 13.171875 26.832031 0 .449219-.007813.894532-.027344 1.34375zm0 0"
                                  ></path>
                                  <path
                                    d="m305.324219 440.265625c-2.355469-1.359375-5.257813-1.363281-7.613281 0-15.152344 8.769531-24.566407 25.074219-24.566407 42.550781 0 .644532.015625 1.289063.039063 1.933594.6875 17.652344 14.773437 26.890625 28.332031 26.890625 13.5625 0 27.648437-9.238281 28.335937-26.894531.023438-.640625.035157-1.285156.035157-1.929688 0-17.476562-9.410157-33.78125-24.5625-42.550781zm9.339843 43.894531c-.355468 9.066406-7.304687 12.28125-13.148437 12.28125s-12.792969-3.214844-13.148437-12.277344c-.015626-.445312-.023438-.894531-.023438-1.347656 0-10.53125 4.953125-20.449218 13.171875-26.832031 8.21875 6.382813 13.171875 16.300781 13.171875 26.832031 0 .453125-.007812.902344-.023438 1.34375zm0 0"
                                  ></path>
                                  <path
                                    d="m396.371094 401.425781c-2.351563-1.363281-5.257813-1.363281-7.613282 0-15.152343 8.769531-24.5625 25.070313-24.5625 42.550781 0 .644532.011719 1.289063.035157 1.933594.6875 17.652344 14.773437 26.890625 28.335937 26.890625 13.558594 0 27.644532-9.238281 28.332032-26.894531.023437-.640625.039062-1.285156.039062-1.933594 0-17.472656-9.414062-33.777344-24.566406-42.546875zm9.339844 43.894531c-.351563 9.0625-7.300782 12.28125-13.144532 12.28125-5.847656 0-12.796875-3.21875-13.148437-12.277343-.015625-.445313-.027344-.898438-.027344-1.347657 0-10.53125 4.957031-20.449218 13.175781-26.832031 8.21875 6.382813 13.171875 16.300781 13.171875 26.832031 0 .449219-.011719.902344-.027343 1.34375zm0 0"
                                  ></path>
                                  <path
                                    d="m326.753906 125.617188c4.199219 0 7.597656-3.402344 7.597656-7.597657v-6.691406c0-4.195313-3.398437-7.597656-7.597656-7.597656-4.199218 0-7.597656 3.402343-7.597656 7.597656v6.691406c0 4.195313 3.398438 7.597657 7.597656 7.597657zm0 0"
                                  ></path>
                                  <path
                                    d="m373.53125 125.617188c4.199219 0 7.601562-3.402344 7.601562-7.597657v-6.691406c0-4.195313-3.402343-7.597656-7.601562-7.597656s-7.597656 3.402343-7.597656 7.597656v6.691406c0 4.195313 3.398437 7.597657 7.597656 7.597657zm0 0"
                                  ></path>
                                  <path
                                    d="m344.234375 162.410156h16.210937c4.195313 0 7.597657-3.402344 7.597657-7.601562 0-4.195313-3.402344-7.597656-7.597657-7.597656h-16.210937c-4.199219 0-7.601563 3.402343-7.601563 7.597656 0 4.199218 3.402344 7.601562 7.601563 7.601562zm0 0"
                                  ></path>
                                </svg>
                                <h6>25 °C</h6>
                              </li>
                              <li>
                                <h5>12 Sep</h5>
                                <svg
                                  viewBox="0 1 511 511.99899"
                                  xmlns="http://www.w3.org/2000/svg"
                                >
                                  <path
                                    d="m485.980469 165.089844c-15.15625-15.476563-34.9375-24.898438-56.28125-26.929688-.691407-5.074218-1.632813-10.144531-2.808594-15.136718-8.125-34.457032-27.894531-65.695313-55.671875-87.960938-28.207031-22.609375-63.6875-35.0625-99.910156-35.0625-34.070313 0-66.585938 10.566406-94.035156 30.558594-3.390626 2.46875-4.136719 7.222656-1.667969 10.613281s7.21875 4.136719 10.613281 1.667969c24.832031-18.089844 54.257812-27.648438 85.089844-27.648438 33.253906 0 64.515625 10.96875 90.40625 31.722656 25.144531 20.15625 43.039062 48.421876 50.390625 79.59375 1.503906 6.386719 2.582031 12.910157 3.199219 19.390626.269531 3.878906 3.457031 6.96875 7.402343 7.058593 19.875.457031 38.492188 8.539063 52.421875 22.757813 13.949219 14.246094 21.632813 33.074218 21.632813 53.011718 0 41.804688-34.019531 75.816407-75.835938 75.816407h-96.894531l15.148438-17.019531c1.988281-2.234376 2.480468-5.429688 1.253906-8.160157-1.222656-2.730469-3.9375-4.484375-6.929688-4.484375h-38.839844l67.269532-128.378906c1.703125-3.253906.835937-7.265625-2.066406-9.519531-2.902344-2.257813-7.003907-2.113281-9.738282.34375l-186.296875 167.21875h-44.804687c-56.980469 0-103.335938-46.351563-103.335938-103.324219 0-56.976562 46.355469-103.332031 103.335938-103.332031 4.90625 0 9.988281.371093 15.101562 1.105469 3.230469.460937 6.398438-1.1875 7.863282-4.101563 5.914062-11.738281 13.417968-22.640625 22.300781-32.394531 2.824219-3.101563 2.597656-7.90625-.503907-10.730469-3.101562-2.824219-7.90625-2.601563-10.730468.5-8.601563 9.445313-16.03125 19.867187-22.136719 31.035156-4.015625-.402343-8-.605469-11.894531-.605469-65.355469 0-118.527344 53.167969-118.527344 118.523438 0 65.351562 53.171875 118.515625 118.527344 118.515625l77.808594.085937-57.519532 66.378907c-1.949218 2.25-2.402344 5.425781-1.167968 8.128906 1.234374 2.707031 3.933593 4.441406 6.910156 4.441406h34.6875l-69.503906 101.335938c-2.074219 3.027343-1.691407 7.101562.910156 9.6875 1.46875 1.457031 3.402344 2.207031 5.355468 2.207031 1.503907 0 3.023438-.449219 4.335938-1.363281l78.773438-54.808594c3.441406-2.398437 4.289062-7.132813 1.894531-10.574219s-7.128907-4.292968-10.574219-1.898437l-44.671875 31.085937 54.167969-78.972656c1.59375-2.324219 1.769531-5.339844.453125-7.835938-1.3125-2.492187-3.898438-4.054687-6.71875-4.054687h-32.476563l57.519532-66.378906c1.949218-2.246094 2.40625-5.425781 1.167968-8.128907-1.234375-2.707031-3.933594-4.441406-6.90625-4.441406h-26.992187l142.4375-127.851562-53.535157 102.171875c-1.234374 2.355469-1.144531 5.183593.230469 7.457031s3.839844 3.664062 6.5 3.664062h34.464844l-70.976563 79.75c-1.988281 2.234376-2.480468 5.429688-1.257812 8.160157 1.226562 2.730469 3.941406 4.488281 6.933594 4.488281h27.175781l-66.199219 46.0625c-3.441406 2.394531-4.292968 7.128906-1.898437 10.570312 2.398437 3.445313 7.132812 4.292969 10.574219 1.898438l86.078124-59.894531c2.722657-1.894531 3.902344-5.339844 2.910157-8.507813-.992188-3.167968-3.929688-5.320312-7.246094-5.320312h-34.46875l42.3125-47.539063h110.414063c50.191406 0 91.027343-40.828125 91.027343-91.007812-.003906-23.941407-9.226562-46.539063-25.976562-63.640625zm0 0"
                                  ></path>
                                </svg>
                                <h6>24 °C</h6>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card col-lg-6">
                      <div class="card-header" id="headingFive">
                        <h5 class="mb-0">
                          <button
                            class="btn btn-link collapsed disabled"
                            data-bs-toggle="collapse show"
                            data-bs-target="#collapseFive"
                            aria-expanded="false"
                            aria-controls="collapseFive"
                          >
                            태그
                          </button>
                        </h5>
                      </div>
                      <div
                        id="collapseFive"
                        class="collapse show"
                        aria-labelledby="headingFive"
                        data-bs-parent="#accordion"
                      >
                        <div class="card-body">
                          Today we proceed to Cordoba. On arrival we visit
                          Mezquita from inside followed by orientation city tour
                          which includes Roman bridge, Arab waterwheels and
                          Plaza del Potro. Then we leave for Valencia.
                          <div class="highlight">
                            <ul>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                breakfast
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                lunch
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/fork.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                dinner
                              </li>
                              <li>
                                <img
                                  src="../assets/images/icon/tour/bed.png"
                                  class="img-fluid blur-up lazyload"
                                  alt=""
                                />
                                night stay in Valencia
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 사진 -->
                <div class="menu-part tab-pane fade" id="gallery">
                  <div class="container-fluid p-0 ratio3_2">
                    <div class="row zoom-gallery">
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/7.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/7.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/8.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/8.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/9.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/9.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/10.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/10.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/11.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/11.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                      <div class="col-lg-4 col-sm-6">
                        <div class="overlay">
                          <a href="../assets/images/tour/tour/12.jpg">
                            <div class="overlay-background">
                              <i class="fa fa-plus" aria-hidden="true"></i>
                            </div>
                            <img
                              src="../assets/images/tour/tour/12.jpg"
                              alt=""
                              class="img-fluid blur-up lazyload bg-img"
                            />
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 주변 여행지 -->
                <div class="menu-part tab-pane fade" id="accommodations">
                  <div class="col-lg-12 ratio3_2">
                    <div class="product-wrapper-grid special-section grid-box">
                      <div class="row content grid">
                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="/jsp/Tourinfo">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                            <div class="label-offer">라벨 예시</div>
                          </div>
                        </div>
                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="tour-single-6.html">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                            <div class="label-offer">라벨 예시</div>
                          </div>
                        </div>
                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="tour-single-6.html">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="tour-single-6.html">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="tour-single-6.html">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div
                          class="col-xl-4 col-sm-6 popular grid-item wow fadeInUp"
                          data-class="popular"
                        >
                          <div class="special-box p-0">
                            <div class="special-img">
                              <a href="tour-single-6.html">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
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
                              <div class="content-inner">
                                <h5>여행지 명</h5>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--<div class="list-view">
                    <div class="list-box">
                      <div class="list-img">
                        <a href="#">
                          <img
                            src="../assets/images/hotel/gallery/1.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                        </a>
                      </div>
                      <div class="list-content">
                        <div>
                          <a href="#">
                            <h5>sea view hotel</h5>
                          </a>
                          <p>dubai, 2km from center</p>
                          <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>26412 review</span>
                          </div>
                          <p class="hotel-info">
                            relax and unwind with a special stay offer at a
                            superlative value. conveniently located, offers
                            spacious rooms. great dinning options. gym &amp;
                            pool. innovative dinning and bar options. relaxing
                            spa open till 2 A.M.
                          </p>
                          <div class="facility-icon">
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/beer.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>bar</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/wifi.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>wifi</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/sunset.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>beach</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/pool.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>swimming</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="list-view">
                    <div class="list-box">
                      <div class="list-img">
                        <a href="#">
                          <img
                            src="../assets/images/hotel/gallery/2.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                        </a>
                      </div>
                      <div class="list-content">
                        <div>
                          <a href="#">
                            <h5>sea view hotel</h5>
                          </a>
                          <p>dubai, 2km from center</p>
                          <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>26412 review</span>
                          </div>
                          <p class="hotel-info">
                            relax and unwind with a special stay offer at a
                            superlative value. conveniently located, offers
                            spacious rooms. great dinning options. gym &amp;
                            pool. innovative dinning and bar options. relaxing
                            spa open till 2 A.M.
                          </p>
                          <div class="facility-icon">
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/beer.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>bar</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/wifi.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>wifi</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/sunset.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>beach</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/pool.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>swimming</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="list-view">
                    <div class="list-box">
                      <div class="list-img">
                        <a href="#">
                          <img
                            src="../assets/images/hotel/gallery/3.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                        </a>
                      </div>
                      <div class="list-content">
                        <div>
                          <a href="#">
                            <h5>sea view hotel</h5>
                          </a>
                          <p>dubai, 2km from center</p>
                          <div class="rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>26412 review</span>
                          </div>
                          <p class="hotel-info">
                            relax and unwind with a special stay offer at a
                            superlative value. conveniently located, offers
                            spacious rooms. great dinning options. gym &amp;
                            pool. innovative dinning and bar options. relaxing
                            spa open till 2 A.M.
                          </p>
                          <div class="facility-icon">
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/beer.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>bar</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/wifi.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>wifi</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/sunset.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>beach</span>
                            </div>
                            <div class="facility-box">
                              <img
                                src="../assets/images/icon/hotel/pool.png"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                              <span>swimming</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>-->
                </div>

                <!-- 지도 -->
                <div class="menu-part tab-pane fade map" id="location">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.9147718689!2d-74.11976358820196!3d40.69740344169578!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sin!4v1568001991098!5m2!1sen!2sin"
                    style="border: 0"
                    allowfullscreen=""
                  ></iframe>
                </div>

                <!-- 댓글 리뷰 -->
                <div class="menu-part tab-pane fade review" id="review">
                  <div class="review-box row">
                    <div class="col-2">
                      <a
                        data-bs-toggle="modal"
                        data-bs-target="#edit-profile"
                        href=""
                        ><img
                          src="../assets/images/avtar/1.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>

                    <div class="col-10">
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                      </div>
                      <h6>by 사용자, jun 18, 2019</h6>
                      <p>
                        Our family holiday to Spain was awesome .pocket friendly
                        rates that make planning a holiday a delight. I got a
                        good hotels, flight discount for my round trip flight
                        for the same trip while booking from sites.Thank you
                        moment for giving us a wonderful experience.
                      </p>
                    </div>
                  </div>
                  <div class="review-box row">
                    <div class="col-2">
                      <a
                        data-bs-toggle="modal"
                        data-bs-target="#edit-profile"
                        href=""
                        ><img
                          src="../assets/images/avtar/1.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="col-10">
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                      </div>
                      <h6>by 사용자, jun 18, 2019</h6>
                      <p>
                        Our family holiday to Spain was awesome .pocket friendly
                        rates that make planning a holiday a delight. I got a
                        good hotels, flight discount for my round trip flight
                        for the same trip while booking from sites.Thank you
                        moment for giving us a wonderful experience.
                      </p>
                    </div>
                    <button
                      type="button"
                      class="btn btn-secondary col-2 offset-xl-5"
                    >
                      리뷰 더보기
                    </button>
                  </div>

                  <form>
                    <div class="row">
                      <div class="form-group col-10">
                        <label for="exampleFormControlTextarea1"
                          >리뷰 작성</label
                        >
                        <textarea
                          class="form-control"
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
                            id="dropdownMenuButton1"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                          >
                            별점 선택
                          </button>
                          <ul
                            class="dropdown-menu"
                            aria-labelledby="dropdownMenuButton1"
                          >
                            <li>
                              <a class="dropdown-item" href="#"
                                ><i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i
                              ></a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="#"
                                ><i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i
                              ></a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="#"
                                ><i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i
                              ></a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="#"
                                ><i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i
                              ></a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="#"
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
                            onclick="window.location.href='tour-layout-2';"
                            class="btn btn-rounded color1"
                          >
                            리뷰 작성
                          </button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>

                <!--
                <div class="about menu-part tab-pane fade" id="policy">
                  <div class="about-sec">
                    <h6>Payment Policy</h6>
                    <ul>
                      <li>
                        Initial deposit – INR. 1, 00,000 per person at the time
                        of booking.
                      </li>
                      <li>
                        1st part payment 50% of the tour cost at least 60 days
                        prior departure.
                      </li>
                      <li>Balance payment 30 days prior departure.</li>
                    </ul>
                  </div>
                  <div class="about-sec">
                    <h6>Cancellation Policy</h6>
                    <ul>
                      <li>
                        Deposit of INR 1,00,000 per person is non-refundable in
                        any case once booking is confirmed.
                      </li>
                      <li>
                        45 Days to 60 days prior to departure – 50% of the total
                        tour cost.
                      </li>
                      <li>
                        30 to 44 Days prior to departure 75 % of the tour cost.
                      </li>
                      <li>
                        Within 30 days of departure 100% of the tour cost.
                      </li>
                    </ul>
                  </div>
                  <div class="about-sec">
                    <h6>Important Terms and Conditions</h6>
                    <ul>
                      <li>
                        All travelers have to carry their own passports,
                        tickets, forex & any other important documents. It is
                        recommended to leave passport photocopy at your
                        resident, office & carry one copy while travelling.
                      </li>
                      <li>
                        Passengers having excess baggage over 20 kgs per person
                        in check in baggage & 07 kgs in hand luggage are liable
                        to pay excess baggage charge directly at airport.
                      </li>
                      <li>
                        Any sightseeing not mentioned in the itinerary will have
                        to be paid directly.
                      </li>
                      <li>
                        For the convenience of passengers the itinerary may be
                        amended.
                      </li>
                      <li>
                        Flight cost and availability are subject to change at
                        time of actual booking.
                      </li>
                    </ul>
                  </div>
                </div>
                -->
              </div>
            </div>
            <!--
            <div class="special-section related-box ratio3_2 grid-box">
              <div class="slider-3 no-arrow">
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/tour/tour/9.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="content_inner">
                        <a href="#">
                          <h5>dubai adventure</h5>
                        </a>
                        <h6>6N 7D</h6>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/tour/tour/12.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="content_inner">
                        <a href="#">
                          <h5>simply mauritius</h5>
                        </a>
                        <h6>6N 7D</h6>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/tour/tour/8.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="content_inner">
                        <a href="#">
                          <h5>best of europe</h5>
                        </a>
                        <h6>6N 7D</h6>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div class="special-box p-0">
                    <div class="special-img">
                      <a href="#">
                        <img
                          src="../assets/images/tour/tour/15.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <div class="content_inner">
                        <a href="#">
                          <h5>South Africa</h5>
                        </a>
                        <h6>6N 7D</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
-->
          </div>

          <!--<div class="col-xl-3 col-lg-4">
            <div class="sticky-cls-top">
              <div class="single-sidebar">
                <div class="selection-section">
                  <h4 class="title">book this journey</h4>
                  <div class="book-btn-section border-top-0">
                    <div class="detail-top">
                      <input
                        type="text"
                        id="firstName"
                        class="form-control"
                        placeholder="First name"
                      />
                      <input
                        type="email"
                        id="email"
                        class="form-control"
                        placeholder="Enter your email"
                      />
                      <input
                        type="number"
                        id="phone"
                        class="form-control"
                        placeholder="Phone Number"
                      />
                    </div>
                    <div class="rooms-section">
                      <input
                        type="text"
                        class="form-control open-select"
                        placeholder="rooms & guests"
                      />
                      <div class="selector-box">
                        <div class="room-cls">
                          <label class="title_room">room 1</label>
                          <div class="qty-box">
                            <label>adult</label>
                            <div class="input-group">
                              <button
                                type="button"
                                class="btn quantity-left-minus"
                                data-type="minus"
                                data-field=""
                              >
                                -
                              </button>
                              <input
                                type="text"
                                name="quantity"
                                class="form-control qty-input input-number"
                                value="1"
                              />
                              <button
                                type="button"
                                class="btn quantity-right-plus"
                                data-type="plus"
                                data-field=""
                              >
                                +
                              </button>
                            </div>
                          </div>
                          <div class="qty-box">
                            <label>children</label>
                            <div class="input-group">
                              <button
                                type="button"
                                class="btn quantity-left-minus"
                                data-type="minus"
                                data-field=""
                              >
                                -
                              </button>
                              <input
                                type="text"
                                name="quantity"
                                class="form-control qty-input input-number"
                                value="1"
                              />
                              <button
                                type="button"
                                class="btn quantity-right-plus"
                                data-type="plus"
                                data-field=""
                              >
                                +
                              </button>
                            </div>
                          </div>
                        </div>
                        <div class="bottom-part">
                          <a href="#" class="add-room">add room +</a>
                          <a href="javascript:void(0)" class="btn">apply</a>
                        </div>
                      </div>
                    </div>
                    <div class="selector">
                      <select>
                        <option value="" disabled selected>
                          Select your date
                        </option>
                        <option value="saab">15 march, 2019</option>
                        <option value="saab">27 August, 2019</option>
                        <option value="audi">20 December, 2019</option>
                      </select>
                    </div>
                    <a
                      href="tour-booking.html"
                      class="btn btn-rounded btn-sm color1"
                      >start my journey</a
                    >
                  </div>
                </div>
              </div>
              <div class="single-sidebar p-0">
                <div class="newsletter-sec">
                  <div>
                    <h4 class="title">always first</h4>
                    <p>
                      Be the first to find out latest tours and exclusive offers
                      and get 15% off your first booking.
                    </p>
                    <form>
                      <input
                        type="email"
                        id="email1"
                        class="form-control"
                        placeholder="Enter your email"
                      />
                      <div class="button">
                        <a href="#" class="btn btn-solid">be the first</a>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>-->
        </div>
      </div>
    </section>
    <!-- section end -->

    <!-- book now section start -->
    <div class="book-panel">
      <button
        data-bs-toggle="modal"
        data-bs-target="#booknowModal"
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

    <!-- footer start -->
    <!-- <footer>
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

    <!-- enquiry modal start-->
    <div
      class="modal fade enquiry-modal"
      id="enquiryModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
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

    <!-- book now modal start-->
    <div
      class="modal fade enquiry-modal"
      id="booknowModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content single-section">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Book this tour</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body single-sidebar mt-0">
            <div class="book-btn-section pt-0 border-top-0">
              <div class="detail-top">
                <input
                  type="text"
                  id="first-Name"
                  class="form-control"
                  placeholder="First name"
                />
                <input
                  type="email"
                  class="form-control"
                  placeholder="Enter your email"
                />
                <input
                  type="number"
                  class="form-control"
                  placeholder="Phone Number"
                />
              </div>
              <div class="rooms-section">
                <input
                  type="email"
                  class="form-control open-select"
                  placeholder="Rooms & guests"
                />
                <div class="selector-box">
                  <div class="room-cls">
                    <label class="title_room">room 1</label>
                    <div class="qty-box">
                      <label>adult</label>
                      <div class="input-group">
                        <button
                          type="button"
                          class="btn quantity-left-minus"
                          data-type="minus"
                          data-field=""
                        >
                          -
                        </button>
                        <input
                          type="text"
                          name="quantity"
                          class="form-control qty-input input-number"
                          value="1"
                        />
                        <button
                          type="button"
                          class="btn quantity-right-plus"
                          data-type="plus"
                          data-field=""
                        >
                          +
                        </button>
                      </div>
                    </div>
                    <div class="qty-box">
                      <label>children</label>
                      <div class="input-group">
                        <button
                          type="button"
                          class="btn quantity-left-minus"
                          data-type="minus"
                          data-field=""
                        >
                          -
                        </button>
                        <input
                          type="text"
                          name="quantity"
                          class="form-control qty-input input-number"
                          value="1"
                        />
                        <button
                          type="button"
                          class="btn quantity-right-plus"
                          data-type="plus"
                          data-field=""
                        >
                          +
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="bottom-part">
                    <a href="#" class="add-room">add room +</a>
                    <a href="javascript:void(0)" class="btn">apply</a>
                  </div>
                </div>
              </div>
              <div class="selector">
                <select class="mt-0">
                  <option value="" disabled selected>Select your date</option>
                  <option value="saab">15 march, 2019</option>
                  <option value="saab">27 August, 2019</option>
                  <option value="audi">20 December, 2019</option>
                </select>
              </div>
              <a href="#" class="btn btn-rounded btn-sm color1"
                >book this now</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- book now modal end -->

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
                      src="../assets/images/avtar/1.jpg"
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

    <!-- 문의 작성(Modal) 시작 -->
    <div
      class="modal fade edit-profile-modal"
      id="tour-q"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">문의</h5>
            <!--<button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>-->
          </div>
          <div class="modal-body dashboard-section">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="old">여행지</label>
                  <input
                    class="form-control"
                    value="${TourData.tour_name}"
                    disabled
                  />
                  <input
                    type="hidden"
                    class="form-control"
                    value="${TourData.tour_num}"
                    id="tour_num"
                  />
                </div>
                <div class="form-group col-12">
                  <label for="new">제목</label>
                  <input class="form-control" id="inquiry_title" />
                </div>
                <div class="form-group col-12">
                  <label for="comfirm">내용</label>
                  <textarea
                    class="form-control"
                    id="inquiry_content"
                    placeholder="문의 사항을 입력해주세요."
                    rows="3"
                  ></textarea>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer dashboard-section">
            <button type="button" class="btn btn-solid">작성</button>
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              취소
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- 문의 작성 끝 -->

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- zoom gallery js -->
    <script src="../assets/js/jquery.magnific-popup.js"></script>
    <script src="../assets/js/zoom-gallery.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <!-- 찜리스트 추가용 js-->
    <script src="../assets/js/addWishList.js"></script>
  </body>
</html>
