<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="com.example.coding.domain.UserVO"%>
<% UserVO user = (UserVO) session.getAttribute("loggedInUser"); %>


<html>
  <body>
    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <header class="tour-header">
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
                        <!-- 리스트 테스트 -->
                        <a href="/touro/tour" class="nav-link">여행지</a>
                      </li>
                      <li class="nav-submenu">
                        <a href="/touromate/touromate_list" class="nav-link"
                          >여행친구찾기</a
                        >
                      </li>
                      <li class="nav-submenu">
                        <a href="/touroview/touroview_list" class="nav-link"
                          >여행후기</a
                        >
                      </li>
                      <li class="nav-submenu">
                        <!-- <a href="/user/img_change" class="nav-link">
                          <a href="#" class="nav-link">
                          ImgChange</a
                        > -->
                          <a
                            class="nav-link"
                            data-bs-toggle="modal"
                            data-bs-target="#image-change"
                            href="#"
                            class="btn btn-rounded btn-sm color1"
                            data-touro-mate-num="${touroMate.touro_mate_num}"
                          >이미지변환</a
                        >
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
              <ul class="header-right">
               <c:if test="${empty sessionScope.loggedInUser}">
                  <li class="user user-light rounded5">
                    <a href="/user/login">
                      <i class="fa fa-address-book"></i>
                      마이페이지
                    </a>
                  </li>
                </c:if>
                <c:if test="${not empty sessionScope.loggedInUser}">
                  <li class="user user-light rounded5">
                    <a href="/user/mypage">
                      <i class="fa fa-address-book"></i>
                      마이페이지
                    </a>
                  </li>
                </c:if>
                <!-- 세션이 비어 있으면 로그인 버튼으로 -->
                <c:if test="${empty sessionScope.loggedInUser}">
                  <li class="user user-light rounded5">
                    <a href="/user/login">
                      <i class="fas fa-user"></i>
                      로그인
                    </a>
                </c:if>
                <!-- 세션이 비어 있지 않으면 로그아웃 버튼으로 -->
                <c:if test="${not empty sessionScope.loggedInUser}">
                  <li class="user user-light rounded5">
                    <a href="/user/logout">
                      <i class="fas fa-sign-out-alt">로그아웃</i>
                    </a>
                </c:if>
                
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
    <!--  해더 끝 -->
     <!-- 이미지 변환 (Modal) 구성 시작-->
     <div class="modal fade edit-profile-modal" id="image-change" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
          <div class="modal-content" style="width: 80vw; max-width: 1800px; height: 80vh; max-height: 1000px;">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">ImageChange!</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body dashboard-section d-flex justify-content-center align-items-center">
                  <section class="w-400" style="height: 500px;">
                      <div class="image-section">
                          <!-- 내용이 중앙에 오도록 수정 -->
                          <div class="image-container row">
                              <h2 class="col-12">선택한 이미지</h2>
                              <div class="col-12 col-md-6" style="background-color: lightblue;">
                                  <img src="" alt="Selected Image" id="selected-image" class="w-100">
                              </div>
                          </div>
  
                          <form action="/upload" method="post" enctype="multipart/form-data" id="upload-form">
                              <div class="image-section row">
                                  <div class="image-container col-12 col-md-6">
                                      <label for="image">이미지 선택:</label>
                                      <input type="file" name="image" accept="image/*" id="image" onchange="previewImage()" class="form-control">
                                  </div>
  
                                  <div class="image-container col-12 col-md-6">
                                      <label for="style">스타일 선택:</label>
                                      <select name="style" id="style" class="form-control">
                                          <option value="Hayao">Hayao</option>
                                          <option value="Hosoda">Hosoda</option>
                                          <option value="Paprika">Paprika</option>
                                          <option value="Shinkai">Shinkai</option>
                                      </select>
                                  </div>
                              </div>
  
                              <div class="button-section">
                                  <button type="submit" class="btn btn-primary">변환</button>
                              </div>
                          </form>
  
                          <div class="image-container row">
                              <h2 class="col-12">변환된 이미지</h2>
                              <div class="col-12 col-md-6" style="background-color: lightblue;">
                                  <img src="" alt="Cartoonized Image" id="result-image" class="w-100">
                              </div>
                          </div>
                      </div>
                  </section>
    
                    <!-- Axios 스크립트 -->
                    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    
                    <!-- 파일 선택 후 미리보기 기능을 위한 스크립트 -->
                    <script>
                        function previewImage() {
                            var selectedImage = document.getElementById("selected-image");
                            var imageInput = document.getElementById("image");
    
                            var file = imageInput.files[0];
                            if (file) {
                                var reader = new FileReader();
                                reader.onload = function (e) {
                                    selectedImage.src = e.target.result;
                                };
                                reader.readAsDataURL(file);
                            }
                        }
                    </script>
    
                    <!-- 파일 업로드 및 이미지 표시를 위한 스크립트 -->
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            document
                                .getElementById("upload-form")
                                .addEventListener("submit", function (e) {
                                    e.preventDefault();
    
                                    var imageFile = document.getElementById("image").files[0];
                                    var selectedStyle = document.getElementById("style").value;
    
                                    var formData = new FormData();
                                    formData.append("image", imageFile);
                                    formData.append("style", selectedStyle);
    
                                    axios
                                        .post("http://localhost:5050/upload", formData)
                                        .then(function (response) {
                                            var resultImageData = response.data.result_image;
                                            var resultImageElement =
                                                document.getElementById("result-image");
                                            resultImageElement.src =
                                                "data:image/jpeg;base64," + resultImageData;
                                            resultImageElement.style.display = "block";
                                        })
                                        .catch(function (error) {
                                            console.error("Error during image upload:", error);
                                        });
                                });
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
  
    <style>
      /* 기본 스타일 */
      section.image-section {
        padding: 10px; /* 예시로 패딩을 추가하였습니다. 필요에 따라 수정하세요. */
      }
    
      /* 미디어 쿼리: 768px 이상의 화면 크기일 때 */
      @media screen and (min-width: 768px) {
        section.image-section {
          height: 600px; /* 원하는 크기로 설정하세요. */
        }
      }
    
      /* 미디어 쿼리: 1200px 이상의 화면 크기일 때 */
      @media screen and (min-width: 1200px) {
        section.image-section {
          height: 800px; /* 다른 크기로 설정하세요. */
        }
      }
    
      .image-section {
        display: flex;
        flex-direction: row;
        justify-content: space-around;
      }
    
      .image-container {
        text-align: center;
      }
    
      h2 {
        margin-bottom: 10px;
      }
    
      #selected-image,
      #result-image {
        width: 300px;
        height: 200px;
        background-color: lightblue;
      }
    
      #upload-form {
        display: flex;
        flex-direction: column;
        align-items: center;
      }
    
      .button-section {
        margin-top: 10px;
      }
    </style>
  
    
      <!-- 이미지 양식 끝 -->
  
  </body>
</html>
