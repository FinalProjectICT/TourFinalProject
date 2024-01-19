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

    <!-- 추가한 css 파일-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/fileupload.css"
    />
  </head>

  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

    <!-- breadcrumb start -->
    <section class="breadcrumb-section parallax-img pt-0">
      <img
        src="../assets/images/inner-pages/breadcrumb1.jpg"
        class="bg-img img-fluid blur-up lazyload"
        alt=""
      />
      <div class="breadcrumb-content overlay-black">
        <div>
          <h2>holiday package</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                holiday package
              </li>
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
            <div class="filter-panel">
              <div class="left-filter">
                <div class="respon-filter-btn">
                  <h6>filter <i class="fas fa-sort-down"></i></h6>
                  <span class="according-menu"></span>
                </div>
                <div class="filters respon-filter-content filter-button-group">
                  <ul>
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".popular">popular</li>
                  </ul>
                </div>
              </div>
              <div class="right-panel search_filter">
                <a href="javascript:void(0)" class="view-map"
                  ><i class="fas fa-search"></i> 게시글 찾기</a
                >
                <div class="left-sidebar filter-bottom-content">
                  <div class="middle-part collection-collapse-block open">
                    <div class="collection-collapse-block-content row">
                      <div class="filter-block col">
                        <div class="collection-collapse-block open">
                          <h6 class="collapse-block-title">trip duration</h6>
                          <div class="collection-collapse-block-content">
                            <div class="collection-brand-filter">
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="english"
                                />
                                <label class="form-check-label" for="english"
                                  >upto 3 nights</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="sign"
                                />
                                <label class="form-check-label" for="sign"
                                  >4 to 7 nights</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="italiano"
                                />
                                <label class="form-check-label" for="italiano"
                                  >7 to 11 nights</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="suomi"
                                />
                                <label class="form-check-label" for="suomi"
                                  >11 to 15 nights</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="espanol"
                                />
                                <label class="form-check-label" for="espanol"
                                  >15 to 21 nights</label
                                >
                              </div>
                              <div
                                class="form-check collection-filter-checkbox"
                              >
                                <input
                                  type="checkbox"
                                  class="form-check-input"
                                  id="french"
                                />
                                <label class="form-check-label" for="french"
                                  >above 21 nights</label
                                >
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <c:if test="${not empty sessionScope.loggedInUser}">
                  <div class="collection-grid-view">
                    <a href="/touroview/touroview_insert" class="btn btn-rounded color1"
                      >글 쓰기</a>
                  </div>

                </c:if>
              </div>
            </div>
          </div>

          <div class="col-xl-12 onclick-map">
            <div class="book-table single-table bg-inner">
              <div class="table-form classic-form">
                <form>
                  <div class="row w-100">
                    <div class="form-group col p-0">
                      <input
                        type="text"
                        class="form-control"
                        id="exampleFormControlInput1"
                        placeholder="게시글 찾기"
                      />
                    </div>
                  </div>
                  <a href="#" class="btn btn-rounded color1">Search</a>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-12 ratio3_2">
            <!-- 이게 반복 메이비.... -->
            <div class="product-wrapper-grid special-section grid-box">
              <div class="row content grid">
                <div
                  class="col-xl-3 col-lg-4 col-sm-6 popular grid-item wow fadeInUp"
                  data-class="popular"
                >
                  <div class="special-box p-0">
                    <!-- 이미지 select 값 -->
                    <div class="special-img">
                      <a href="/touroview/touroview_detail">
                        <img
                          src="../assets/images/tour/tour/7.jpg"
                          class="img-fluid blur-up lazyload bg-img"
                          alt=""
                        />
                      </a>
                      <!-- 하트 모양-->
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
                        <h5>게시글 제목</h5>
                      </a>
                      <div class="tour-detail">
                        <div class="include-sec">
                          <div>게시글 내용....</div>
                        </div>
                        <div class="bottom-section">
                          <div class="price">
                            <span>작성자</span>
                            <br />
                            <span>등록일</span>
                            <br />
                            <span>수정일</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 좋아요 개수 라벨 -->
                    <div class="label-offer">좋아요 개수 top5</div>
                  </div>
                </div>
              </div>
            </div>
            <nav
              aria-label="Page navigation example"
              class="pagination-section mt-0"
            >
              <ul class="pagination">
                <li class="page-item">
                  <a
                    class="page-link"
                    href="javascript:void(0)"
                    aria-label="Previous"
                  >
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="javascript:void(0)">1</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="javascript:void(0)">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="javascript:void(0)">3</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </section>
    <!-- section End -->

    <!-- footer start -->
    <footer>
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
