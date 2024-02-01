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
    <link rel="icon" href="../../assets/images/favicon.png" type="image/x-icon" />
    <title>여행을 더욱 특별하게, TOURO</title>

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
      href="../../assets/css/font-awesome.css"
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
    <link rel="stylesheet" type="text/css" href="../../assets/css/color1.css" />

    <!-- 추가한 css 파일-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../../assets/css/fileupload.css"
    />


    <script
      src="https://code.jquery.com/jquery-3.7.1.min.js"
      integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
      crossorigin="anonymous"
    ></script>


    
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
          <h2>여행 후기 공유</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/touro">TOURO</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                여행 후기 공유
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
                        
                      </div>
                    </div>
                  </div>
                </div>
              <c:if test="${not empty sessionScope.loggedInUser}">
                <div class="collection-grid-view">
                  <a href="/touroview/touroview_insert" class="btn btn-rounded color1"
                    >글 쓰기</a
                  >
              </div>
              </c:if>
            </div>
          </div>
          <!-- 키워드 검색 폼 -->
          <div class="col-xl-12 onclick-map">
            <div class="book-table single-table bg-inner">
              <div class="table-form classic-form">
                <form id="search">
                  <div class="row w-100">
                    <div class="form-group col p-0">
                      <input
                        type="text"
                        class="form-control"
                        id="exampleFormControlInput1"
                        name="keyword"
                        placeholder="게시글 찾기"
                      />
                    </div>
                  </div>
                  <button type="submit" class="btn btn-rounded color1">Search</button>
                </form>
              </div>
            </div>
          </div>
          <div id="touroviewListContainer">
          <!-- 페이징 처리와 동적으로 게시글 목록 보여주는 부분-->
          <div class="col-lg-12 ratio3_2">
            <div class="product-wrapper-grid special-section grid-box">
              <div class="row content grid">

              <!-- 현재 페이지에 대한 시작 및 끝 인덱스 계산 -->
                <c:set var="itemsPerPage" value="12" />
                <c:set var="startIndex" value="${currentPage * itemsPerPage}" />
                <c:set var="endIndex" value="${(currentPage + 1) * itemsPerPage < touroviewList.size() ? (currentPage + 1) * itemsPerPage : touroviewList.size()}" />

                <!-- 게시글 목록을 동적으로 생성-->
                <c:forEach var="touroview" items="${touroviewList.subList(startIndex, endIndex)}">
                <div
                  class="col-xl-3 col-lg-4 col-sm-6 popular grid-item wow fadeInUp"
                  data-class="popular"
                >
                  <div class="special-box p-0">
                    <!-- 이미지 select 값 -->
                    <div class="special-img" style="height: 200px;">
                      <a href="/touroview/touroview_detail?touroview_num=${touroview.touroview_num}">
                        <img
                          src="../${touroview.tour_img1_path}"
                          class="img-fluid blur-up lazyload "
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
                          title="${touroviewVO.touroview_num}"
                          data-original-title="Add_to_Wishlist"
                        >
                          <i class="far fa-heart"></i>
                        </a>
                      </div>
                    </div>
                    <div class="special-content">
                      <a href="/touroview/touroview_detail?touroview_num=${touroview.touroview_num}">
                        <h5>${touroview.touroview_title}</h5>
                      </a>
                      <div class="tour-detail">
                        <div class="include-sec">
                          <div>${touroview.touroview_content}</div>
                        </div>
                        <div class="bottom-section">
                          <div class="price">
                            <span>${touroview.user_id}</span>
                            <br />
                            <span>${touroview.touroview_regdate}</span>
                            <br />
                            <span>${touroview.touroview_update}</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
              </div>
            </div>

            <!-- 페이징 부분-->
            <nav
              aria-label="Page navigation example" class="pagination-section mt-0">
              <ul class="pagination">
                <!-- 이전 페이지 이동 버튼-->
                <li class="page-item">
                  <a class="page-link" href="/touroview/touroview_list?page=${status.index}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <!-- 페이징 번호 동적으로 생성 -->
                <c:forEach begin="1" end="${touroviewPage}" varStatus="status">
                    <li class="page-item ${status.index == currentPage ? 'active' : ''}">
                      <a class="page-link" href="/touroview/touroview_list?page=${status.index}">
                        ${status.index}
                      </a>
                  </li>
                </c:forEach>
                <!-- 다음 페이지 이동 버튼 -->
                <li class="page-item">
                  <a class="page-link" href="/touroview/touroview_list?page=${currentPage + 1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
              </ul>
            </nav>
          </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section End -->

    <!-- 푸터 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../footer/footer.jsp' %>
    <!--  푸더 끝 -->

    <!-- tap to top -->
    <div class="tap-top">
      <div>
        <i class="fas fa-angle-up"></i>
      </div>
    </div>
    <!-- tap to top end -->


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
    
    <!-- sweetalert.js -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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

    <script>
    $(document).ready(function() {
    $("#search").submit(function(event) {
        event.preventDefault(); // 기본 폼 제출 동작 방지
        var keyword = $("#exampleFormControlInput1").val();
        $.ajax({
            url: '/touroview/searchTouroviewList',
            type: 'GET',
            data: { keyword: keyword, page: 1 },
            success: function(response) {
                // 검색 결과 및 페이징 정보를 페이지에 업데이트
                $("#touroviewListContainer").html(response);
            },
            error: function(xhr, status, error) {
                console.error("Error occurred: " + xhr.status + " " + error);
            }
        });
    });
});
    </script>

<script>
// AJAX를 사용하여 서버로부터 데이터를 가져오는 예시
$(document).ready(function() {
$('li[data-filter=".popular"]').on('click', function() {
$.ajax({
    url: '/touroview/popular',
    type: 'GET',
    success: function(data) {
        var container = $('#touroviewListContainer .grid');
        container.empty(); // 기존 목록을 비웁니다.

        // 받은 데이터로 여행 후기 목록을 생성합니다.
        data.forEach(function(touroview) {
            var touroviewHtml = `
                <div class="col-xl-3 col-lg-4 col-sm-6 popular grid-item wow fadeInUp" data-class="popular">
                    <div class="special-box p-0">
                        <div class="special-img" style="height: 200px;">
                            <a href="/touroview/touroview_detail?touroview_num=${touroview.touroview_num}">
                                <img src="../${touroview.tour_img1_path}" class="img-fluid blur-up lazyload" alt="">
                            </a>
                            <div class="top-icon">
                                <a href="#" class="" data-bs-toggle="tooltip" data-placement="top" title="${touroview.like_count}">
                                    <i class="far fa-heart"></i>
                                </a>
                            </div>
                        </div>
                        <div class="special-content">
                            <a href="/touroview/touroview_detail?touroview_num=${touroview.touroview_num}">
                                <h5>${touroview.touroview_title}</h5>
                            </a>
                            <div class="tour-detail">
                                <div class="include-sec">
                                    <div>${touroview.touroview_content}</div>
                                </div>
                                <div class="bottom-section">
                                    <div class="price">
                                        <span>${touroview.user_id}</span><br>
                                        <span>${touroview.touroview_regdate}</span><br>
                                        <span>${touroview.touroview_update}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>`;
            container.append(touroviewHtml);
        });
    },
    error: function(error) {
        console.log(error);
    }
});
});
});
</script>







</body>
</html>
