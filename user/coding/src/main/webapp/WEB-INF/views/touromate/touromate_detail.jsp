<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
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

    <script
      type="text/javascript"
      src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=0f448b5fdd2891d21a8357bbb07210aa&libraries=services,clusterer"
    ></script>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/4.1.2/socket.io.js"></script>
  </head>

  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
    <!--  해더 끝 -->

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
    <section class="single-section small-section bg-inner">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="hotel_title_section">
              <div class="hotel-name">
                <div class="left-part">
                  <div class="top">
                    <h2>${touroMate.touro_mate_title}</h2>
                    <div class="share-buttons">
                      <a href="#" class="btn btn-solids"
                        ><i class="far fa-heart"></i>좋아요</a>
                        <a id="delete-button" class="btn btn-solid color1 book-now delete-button"
                            onclick="deleteTouroMate(`${touroMate.touro_mate_num}`)">삭제</a>
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
          <script>
            // 세션에서 loggedInUserId 값을 가져와서 변수에 설정
            var loggedInUserId = '<%= request.getSession().getAttribute("loggedInUser") != null ? ((UserVO)request.getSession().getAttribute("loggedInUser")).getUser_id() : null %>';
        
            console.log("loggedInUserId 설정 이후: ", loggedInUserId);
        
            function deleteTouroMate(touroMateNum) {
                console.log("삭제 요청 전 loggedInUserId: ", loggedInUserId);
                console.log("삭제 요청 전 touroMateNum: ", touroMateNum);
                if (loggedInUserId && confirm("정말로 삭제하시겠습니까?")) {
                    // AJAX를 사용하여 삭제 요청을 서버에 전송
                    $.ajax({
                        type: "POST",
                        url: "/touromate/deleteTouroMate",
                        data: { touro_mate_num: touroMateNum, user_id: loggedInUserId },
                        success: function (response) {
                            alert(response);
                            window.location.href = "/touromate/touromate_list";
                        },
                        error: function (error) {
                          alert("게시물 삭제 권한이 없습니다.");
                          console.error("삭제 오류:", error);
                      }
                    });
                }
            }
        </script>
                
        
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
                      <c:forEach
                        items="${mateimgList}"
                        var="img"
                        varStatus="status"
                      >
                        <c:set var="idx" value="${status.count}"></c:set>
                        <tr>
                          <td>
                            <h6 class="room-title">여행지 지역</h6>
                            <a href="#">
                              <img
                                src="../../assets/images/touromateImg/${img.img_real_name}"
                                class="img-fluid blur-up lazyload"
                                alt=""
                              />
                            </a>
                          </td>
                          <c:choose>
                            <c:when test="${idx eq 1}">
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
                            </c:when>
                            <c:when test="${idx eq 2}">
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
                            </c:when>
                            <c:when test="${idx eq 3}">
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
                            </c:when>
                          </c:choose>
                        </tr>
                      </c:forEach>

                      <!-- <tr>
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
                      </tr> -->
                    </table>
                  </div>
                  <div class="about menu-part tab-pane fade" id="about">
                    <h6>${touroMate.touro_mate_content}</h6>
                    <p></p>
                  </div>
                  <div class="menu-part tab-pane fade map" id="location">
                    <div
                      id="map"
                      style="width: 100%; height: 420px; margin-bottom: -5px"
                    >
                      <script
                        type="text/javascript"
                        src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=0f448b5fdd2891d21a8357bbb07210aa&libraries=services,clusterer"
                      ></script>
                      <script>
                        var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                          mapOption = {
                            center: new kakao.maps.LatLng(
                              33.450701,
                              126.570667
                            ), // 지도의 중심좌표
                            level: 3, // 지도의 확대 레벨
                          };

                        // 지도를 생성
                        var map = new kakao.maps.Map(mapContainer, mapOption);

                        // 주소-좌표 변환 객체를 생성
                        var geocoder = new kakao.maps.services.Geocoder();

                        // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성
                        var bounds = new kakao.maps.LatLngBounds();

                        var positions = [
                          {
                            title: "${touroMate.touro_mate_name1}",
                            address: "${touroMate.touro_mate_addr1}",
                          },
                          {
                            title: "${touroMate.touro_mate_name2}",
                            address: "${touroMate.touro_mate_addr2}",
                          },
                          {
                            title: "${touroMate.touro_mate_name3}",
                            address: "${touroMate.touro_mate_addr3}",
                          },
                        ];

                        positions.forEach(function (position) {
                          // 주소로 좌표를 검색
                          geocoder.addressSearch(
                            position.address,
                            function (result, status) {
                              // 정상적으로 검색이 완료됐으면
                              if (status === kakao.maps.services.Status.OK) {
                                var coords = new kakao.maps.LatLng(
                                  result[0].y,
                                  result[0].x
                                );

                                // 결과값으로 받은 위치를 마커로 표시
                                var marker = new kakao.maps.Marker({
                                  map: map,
                                  position: coords,
                                });
                                marker.setMap(map); //추가한 코드

                                // LatLngBounds 객체에 좌표를 추가
                                bounds.extend(coords); //추가한 코드, 현재 코드에서 좌표정보는 point[i]가 아닌 coords이다.

                                // 인포윈도우로 장소에 대한 설명을 표시
                                var infowindow = new kakao.maps.InfoWindow({
                                  content:
                                    '<div style="width:150px;text-align:center;padding:6px 0;">' +
                                    position.title +
                                    "</div>",
                                });
                                infowindow.open(map, marker);

                                // 지도의 중심을 결과값으로 받은 위치로 이동
                                // map.setCenter(coords); //제거한 코드
                                setBounds(); //추가한 코드
                              }
                            }
                          );
                        });
                        function setBounds() {
                          // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정
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
                  <i class="fas fa-map-marker-alt"></i>아이디:
                  ${authorInfo.user_id}
                </p>
                <p>
                  <i class="fas fa-phone-alt"></i>전화번호:
                  ${authorInfo.user_tel}
                </p>
                <a href="#">
                  <p>
                    <i class="fas fa-envelope"></i>메일:
                    ${authorInfo.user_email}
                  </p>
                </a>
                <div class="social-box">
                  <p>나이: ${authorInfo.user_age}</p>
                  <p>성별: ${authorInfo.user_gender}</p>
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
                        ><i class="fas fa-check"></i>채팅 참여 인원:
                        ${touroMate.touro_mate_count}</span
                      >

                      <span
                        ><i class="fas fa-check"></i>남은 인원 수:
                        ${remainingUsers}</span
                      >
                    </div>
                  </div>
                  <div class="book-btn-section">
                    <a
                      id="chat-circle"
                      class="btn btn-raised"
                      data-bs-toggle="modal"
                      href="#"
                      class="btn btn-rounded btn-sm color1"
                      data-touro-mate-num="${touroMate.touro_mate_num}"
                      >채팅 참가하기</a
                    >
                  </div>
                  <script>
                    $("#chat-circle").click(function () {
                      // 게시글 번호 가져오기
                      var touroMateNum = $(this).data("touro-mate-num");
                      console.log("게시글번호 ", touroMateNum);
                      // AJAX를 이용하여 채팅 참가 요청 보내기
                      $.ajax({
                        type: "POST",
                        url: "/touromate/joinChat",
                        data: { touro_mate_num: touroMateNum },
                        success: function (response) {
                          // 서버에서의 응답 처리
                          console.log("Server Response:", response);

                          // 응답에 따라 모달 띄우기 또는 띄우지 않기
                          if (response === "채팅 참가 성공") {
                            // 채팅 참가 성공 시 모달 띄우기
                            alert(response);
                            $("#modalMessage").text(response);
                            $("#chatLive").modal("show");
                          } else {
                            // 채팅 참가 실패 시 알림창 띄우기
                            alert(response);
                          }
                        },
                        error: function (error) {
                          // 에러 처리
                          console.error("Error joining chat:", error);
                        },
                      });
                    });
                  </script>
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
      <div
        class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable"
        role="document"
      >
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">
              ${touroMate.touro_mate_num}번 채팅방
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body dashboard-section overflow-auto">
            <div class="chat-box-overlay"></div>
            <div class="chat-logs"></div>
          </div>
          <div class="modal-footer">
            <input
              type="text"
              id="chat-input"
              placeholder="Send a message..."
            />
            <button
              type="button"
              class="chat-submit"
              id="chat-submit"
              data-touro-mate-num="${touroMate.touro_mate_num}"
            >
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

      // 스크롤을 제일 아래로 내리는 함수
      function scrollToBottom() {
        const chatLogs = $(".chat-logs");
        chatLogs.animate({ scrollTop: chatLogs.prop("scrollHeight") }, 500);
      }

      $(document).ready(function () {
        function openWebSocket() {
          if (
            ws &&
            (ws.readyState === WebSocket.OPEN ||
              ws.readyState === WebSocket.CONNECTING)
          ) {
            return;
          }

          ws = new WebSocket("ws://localhost:8081/chat");

          ws.onopen = function () {
            console.log("WebSocket Client Connected");
          };

          ws.onmessage = function (event) {
            const message = JSON.parse(event.data);
            if (message.type === "chat" && message.message.trim() !== "") {
              // 받은 메시지를 모달에 표시하는 코드 추가
              appendMessageToChat(
                message.message,
                message.userId,
                message.timestamp,
                message.profileImg
              );
            }
          };

          ws.onclose = function (event) {
            console.log("WebSocket connection closed:", event);
          };
        }

        // 클릭 이벤트에 직접 메시지 전송 함수 연결
        $("#chat-submit").click(function () {
          sendMessage();
        });

        // 폼의 submit 기본 동작 중지
        $("#chatForm").submit(function (event) {
          event.preventDefault();
        });

        function sendMessage() {
          const inputMessage = $("#chat-input").val().trim();
          console.log("Sending message:", inputMessage);

          //게시글 번호 가져오기
          const postId = $("#chat-submit").data("touro-mate-num");

          if (inputMessage !== "" && postId) {
            const userId =
              '<%= ((UserVO)request.getSession().getAttribute("loggedInUser")).getUser_id() %>';

            $.ajax({
              url: "/touromate/getprofileImg",
              type: "POST",
              data: { user_id: userId },
              success: function (respons) {
                console.log("미안해... ", respons);
                let profileImg;
                if (respons == "NO") {
                  profileImg = "../assets/images/profile/default_profile.png";
                } else {
                  profileImg = "../assets/images/profile/" + respons;
                }

                ws.send(
                  JSON.stringify({
                    type: "chat",
                    message: inputMessage,
                    userId: userId,
                    postId: postId,
                    profileImg: profileImg // 프로필 이미지를 전달
                  })
                );

                $("#chat-input").val("");
              },
              error: function (err) {
                console.log(err);
              },
            });
          }
        }

        function appendMessageToChat(message, userId, timestamp, profileImg) {
          console.log("Appending message:", message);
          console.log("userid: " + userId);

          console.log("유저아이디>>>>>>>>>" + userId);

          // 사용자 로그인 값 여부로 프로필 이미지 가져오기
          if (userId != null && userId != "") {
            $.ajax({
              url: "/touromate/getprofileImg",
              type: "POST",
              data: { user_id: userId },
              success: function (respons) {
                console.log("미안해... ", respons);
                if (respons == "NO") {
                  profileImg = "../assets/images/profile/default_profile.png";
                } else {
                  profileImg = "../assets/images/profile/" + respons;
                }

                const displayedUserId = `${"${userId}"}`;
                const displayedTimestamp = `${"${timestamp}"}`;

                // 이미지 엘리먼트 생성
                // const imageElement = `${"${profileImg}"}`;
                const imageElement = $("<img>")
                  .attr("src", profileImg)
                  .addClass("img-flui blur-up lazyloaded bg-img profile-image")
                  .attr("alt", "");
                console.log("imageElement: ", imageElement);

                // 출력 메시지 생성
                const messageElement = $("<div>")
                  .addClass("message")
                  .append(
                    $("<div>")
                      .addClass("user-details")
                      .append(imageElement)
                      .append(
                        $("<span style='font-size: 13px'>").html(
                          `${"${displayedUserId}"}`
                        )
                      )
                  )
                  .append(
                    $("<div class='text_message'>").html(`${"${message}"}`)
                  )
                  .append(
                    $("<p>").html(
                      `<span style='font-size:8px'>${"${displayedTimestamp}"}</span>`
                    )
                  );
                console.log("Message Element:", messageElement);

                const chatLogs = $(".chat-logs");
                const isCurrentUser =
                  userId ===
                  '<%= ((UserVO)request.getSession().getAttribute("loggedInUser")).getUser_id() %>';

                if (isCurrentUser) {
                  // 본인이 보낸 경우
                  messageElement.addClass("right"); // 오른쪽 정렬 클래스 추가
                } else {
                  // 다른 사용자가 보낸 경우
                  messageElement.addClass("left"); // 왼쪽 정렬 클래스 추가
                }

                console.log(
                  "Before appending, chat logs content:",
                  chatLogs.html()
                );

                // chat-logs에 메시지를 추가
                chatLogs.append(messageElement);

                scrollToBottom();

                console.log(
                  "After appending, chat logs content:",
                  chatLogs.html()
                );
              },
              error: function (err) {
                console.log(err);
              },
            });
          }
        }

        // 모달이 열릴 때 WebSocket 연결 시작
        $("#chatLive").on("shown.bs.modal", function () {
          openWebSocket();
        });

        // 모달이 닫힐 때 WebSocket 연결 종료
        $("#chatLive").on("hidden.bs.modal", function () {
          if (
            ws &&
            (ws.readyState === WebSocket.OPEN ||
              ws.readyState === WebSocket.CONNECTING)
          ) {
            ws.close();
          }
        });

        // Enter 동작
        $("#chat-input").keydown(function (event) {
          if (event.which === 13) {
            sendMessage();
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

    <style>
      .chat-logs p {
        margin: 5px 0;
      }

      .chat-logs .left {
        text-align: left;
        color: #333; /* 다른 사용자의 색상 */
      }

      .chat-logs .left .text_message {
        position: relative;
        display: inline-block;
        background-color: lightyellow;
        border-radius: 10px;
        padding: 5px 10px;
        text-align: left;
        max-width: 50%;
        margin-right: auto;
        white-space: normal;
      }

      .chat-logs .right {
        text-align: right;
        color: #333; /* 본인의 색상 */
      }

      .chat-logs .right .text_message {
        position: relative;
        display: inline-block;
        background-color: lightblue;
        border-radius: 10px;
        padding: 5px 10px;
        text-align: right;
        max-width: 50%;
        margin-left: auto;
        white-space: normal;
      }

      .img-flui {
        max-width: 10%;
        height: auto;
        border-radius: 100%;
      }

      .user-details {
        margin-bottom: 10px;
      }

      #delete-button {
        background-color: #fd6668; /* 빨간색 배경 */
        color: white; /* 흰색 텍스트 */
        /* 원하는 스타일 추가 가능 */
    }
    </style>
  </body>
</html>
