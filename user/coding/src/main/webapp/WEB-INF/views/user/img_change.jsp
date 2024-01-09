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

    <!-- fileupload css-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/fileupload.css"
    />
  </head>

  <style>
    /* 추가된 스타일 */
    .image-section {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between; /* 중앙 정렬을 위한 추가 */
        text-align: center;
        margin-bottom: 20px;
    }

    .image-section img {
        max-width: 100%;
        height: auto;
    }

    .button-section {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-top: 10px;
    }

    .button-section button {
        margin-top: 10px;
    }

    .image-container { /* 수정된 부분 */
        flex:1;
        width: 50%;
        margin-right: 10px;
    }

    .image-wrapper {
      max-width: 100%; /* 이미지가 부모 요소를 넘어가지 않도록 설정 */
      max-height: 300px; /* 최대 높이를 조절하세요 */
      margin: 0 auto; /* 중앙 정렬 */
      overflow: hidden; /* 이미지가 부모 요소를 넘어갈 경우 숨김 처리 */
    }

    img {
      max-width: 100%; /* 이미지가 부모 요소를 넘어가지 않도록 설정 */
      height: auto; /* 비율 유지를 위해 높이 자동 조절 */
    }
</style>

  <body>
   <!-- header start -->
    <header class="inner-page overlay-black">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="menu">
              <div class="brand-logo">
                <a href="/user/touro">
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
    <section class="xs-section bg-inner">
      <div class="image-section">
        <div class="image-container">
            <h2>선택한 이미지</h2>
            <div class="image-wrapper">
            <img src="placeholder-image.jpg" alt="Selected Image" id="selected-image">
          </div>
        </div>

        <form action="/upload" method="post" enctype="multipart/form-data" id="upload-form">
          <div class="image-section">
            <div class="image-container">
              <label for="image">이미지 선택:</label>
              <input type="file" name="image" accept="image/*" id="image" onchange="previewImage()">
            </div>

            <div class="image-container">
              <label for="style">스타일 선택:</label>
              <select name="style" id="style">
                <option value="Hayao">Hayao</option>
                <option value="Hosoda">Hosoda</option>
                <option value="Paprika">Paprika</option>
                <option value="Shinkai">Shinkai</option>
              </select>
            </div>
            <div class="button-section">
              <button type="submit">변환</button>
            </div>
          </div>
        </form>

        <div class="image-container">
          <h2>변환된 이미지</h2>
          <div class="image-wrapper">
          <img src="placeholder-image.jpg" alt="Cartoonized Image" id="result-image">
          </div>

          <!-- 이미지 다운로드 버튼-->
          <a id="download-button" style="display: none; margin-top: 10px;">이미지 다운로드</a>
        </div>
      </div>  
    </section>
    <!-- section End -->

    <!-- 푸터 -->
    <!-- footer start -->
    <!-- <%@ include file='../footer/footer.jsp' %> -->
 <!-- footer end -->
    
    <!-- Axios 스크립트 -->
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <!-- 파일 선택 후 미리보기 기능을 위한 스크립트 -->
<script>
  function previewImage() {
      var selectedImage = document.getElementById('selected-image');
      var imageInput = document.getElementById('image');

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
  document.addEventListener('DOMContentLoaded', function () {
      document.getElementById('upload-form').addEventListener('submit', function (e) {
          e.preventDefault();

          var imageFile = document.getElementById('image').files[0];
          var selectedStyle = document.getElementById('style').value;

          var formData = new FormData();
          formData.append('image', imageFile);
          formData.append('style', selectedStyle);

          axios.post('http://localhost:5050/upload', formData)
              .then(function (response) {
                  var resultImageData = response.data.result_image;
                  var resultImageElement = document.getElementById('result-image');
                  resultImageElement.src = 'data:image/jpeg;base64,' + resultImageData;
                  resultImageElement.style.display = 'block';

                  // 이미지 다운로드 버튼 생성
                  var downloadButton = document.createElement('a');
                  downloadButton.href = 'data:image/jpeg;base64,' + resultImageData;
                  downloadButton.download = 'cartoonized_image.jpg';
                  downloadButton.textContent = '이미지 다운로드';
                  downloadButton.style.display = 'block';
                  downloadButton.style.marginTop = '10px';
                  downloadButton.addEventListener('click', function() {
                      document.body.removeChild(downloadButton);
                  });
                  document.body.appendChild(downloadButton);
              })
              .catch(function (error) {
                  console.error('Error during image upload:', error);
              });
      });
  });
</script>

    <!-- tap to top -->
    <div class="tap-top">
      <div>
        <i class="fas fa-angle-up"></i>
      </div>
    </div>
    <!-- tap to top end -->

    <!-- setting start 화면 검정 + 왼쪽 정렬 , 오른쪽 정렬-->
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
  </body>
</html>
