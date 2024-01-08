<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="UTF-8">
  <head>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities."
    />
    <meta
      name="keywords"
      content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app"
    />
    <meta name="author" content="pixelstrap" />
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <link
      rel="shortcut icon"
      href="../assets/images/favicon.png"
      type="image/x-icon"
    />
    <title>Rica - sign up</title>
    <!-- Google font-->
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/font-awesome.css"
    />
    <!-- Themify icon-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/vendors/themify.css"
    />
    <!-- Feather icon-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/vendors/feather-icon.css"
    />
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/vendors/bootstrap.css"
    />
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- Responsive css-->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/responsive.css"
    />
  </head>

  <body>
    <!-- login page start-->
    <div class="container-fluid p-0">
      <div class="row m-0">
        <div class="col-12 p-0">
          <div class="login-card">
            <div>
              <div>
                <a class="logo" href="index.html"
                  ><img
                    class="img-fluid for-light"
                    src="../assets/images/logo/logo-icon.png"
                    alt="looginpage" /><img
                    class="img-fluid for-dark"
                    src="../assets/images/logo/logo-white.png"
                    alt="looginpage"
                /></a>
              </div>
              <div class="login-main">
                <form class="theme-form">
                  <h4>회원가입</h4>
                  <p>회원 정보를 입력해주세요.</p>

                  <div class="form-group">
                <label class="col-form-label form-label-title">이름</label>
                <div class="input-group">
                <input class="form-control" type="text" required="" placeholder="이름" />
                </div>
                </div>
                <!-- 아이디 -->
                <div class="form-group">
                    <label class="col-form-label form-label-title">아이디</label>
                    <div class="row g-2 align-items-center">
                      <div class="col">
                        <div class="form-input position-relative">
                          <input class="form-control" type="text" required="" placeholder="아이디" />
                        </div>
                      </div>
                      <div class="col-auto">
                        <button class="btn btn-primary">중복확인</button>
                      </div>
                    </div>
                  </div>

                  <!-- 비밀번호 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title"
                      >비밀번호</label
                    >
                    <div class="form-input position-relative">
                      <input
                        class="form-control"
                        type="password"
                        name="login[password]"
                        required=""
                        placeholder="*********"
                      />
                    </div>
                  </div>

                  <!-- 주소 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title"
                      >주소</label
                    >
                    <div class="form-input position-relative">
                      <input
                        class="form-control"
                        type="password"
                        name="login[password]"
                        required=""
                        placeholder=""
                      />
                    </div>
                  </div>

                  <!-- 전화번호 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title"
                      >전화번호</label
                    >
                    <div class="form-input position-relative">
                      <input
                        class="form-control"
                        type="text"
                        required=""
                        placeholder="전화번호"
                      />
                    </div>
                  </div>

                  <!-- 메일주소 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title"
                      >메일주소</label
                    >
                    <input
                      class="form-control"
                      type="email"
                      required=""
                      placeholder="Touro@gmail.com"
                    />
                  </div>

                  <!-- 성별 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">성별</label>
                    <div class="form-check form-check-inline">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="gender"
                        id="female"
                        value="female"
                      />
                      <label class="form-check-label" for="female">여성</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input
                        class="form-check-input"
                        type="radio"
                        name="gender"
                        id="male"
                        value="male"
                      />
                      <label class="form-check-label" for="male">남성</label>
                    </div>
                  </div>

                  <!-- 생년월일 -->
                  <div class="form-group" style="display: flex; gap: 10px;">
                    <div>
                        <label class="col-form-label form-label-title">생년월일</label>
                        <div class="form-input position-relative">
                            <input class="form-control" type="date" name="birthdate" required="" placeholder="생년월일" style="width: 250px;" />
                        </div>
                    </div>
                
                    <div>
                        <label class="col-form-label form-label-title">연령</label>
                        <div class="form-input position-relative">
                            <input class="form-control" type="text" name="additionalText" placeholder="" style="width: 100px;" />
                        </div>
                    </div>
                </div>
                
                
                

                  <!-- 여행지 취향 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">여행지 취향</label>
                  
                    <div class="row g-2 mb-3">
                      <!-- 1순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">1순위</label>
                        <select class="form-control" name="여행지 취향1">
                          <option value="" disabled selected hidden>여행지 선택</option>
                          <option value="관광지">관광지</option>
                          <option value="음식점">음식점</option>
                          <option value="숙박">숙박</option>
                        </select>
                      </div>
                  
                      <!-- 2순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">2순위</label>
                        <select class="form-control" name="여행지 취향2">
                          <option value="" disabled selected hidden>여행지 선택</option>
                          <option value="관광지">관광지</option>
                          <option value="음식점">음식점</option>
                          <option value="숙박">숙박</option>
                        </select>
                      </div>
                  
                      <!-- 3순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">3순위</label>
                        <select class="form-control" name="여행지 취향3">
                          <option value="" disabled selected hidden>여행지 선택</option>
                          <option value="관광지">관광지</option>
                          <option value="음식점">음식점</option>
                          <option value="숙박">숙박</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  
                  <!-- 여행 취향 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">여행 취향</label>
                  
                    <div class="row g-2 mb-3">
                      <!-- 1순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">1순위</label>
                        <select class="form-control" name="preference1">
                          <option value="" disabled selected hidden>여행 취향 선택</option>
                          <option value="서울">서울</option>
                          <option value="인천">인천</option>
                          <option value="대전">대전</option>
                          <option value="대구">대구</option>
                          <option value="광주">광주</option>
                          <option value="부산">부산</option>
                          <option value="울산">울산</option>
                          <option value="세종특별자치시">세종특별자치시</option>
                          <option value="경기도">경기도</option>
                          <option value="강원특별자치도">강원특별자치도</option>
                          <option value="충청북도">충청북도</option>
                          <option value="충청남도">충청남도</option>
                          <option value="경상북도">경상북도</option>
                          <option value="전라북도">전라북도</option>
                          <option value="전라남도">전라남도</option>
                          <option value="제주도">제주도</option>
                        </select>
                      </div>
                  
                      <!-- 2순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">2순위</label>
                        <select class="form-control" name="preference2">
                          <option value="" disabled selected hidden>여행 취향 선택</option>
                          <option value="서울">서울</option>
                          <option value="인천">인천</option>
                          <option value="대전">대전</option>
                          <option value="대구">대구</option>
                          <option value="광주">광주</option>
                          <option value="부산">부산</option>
                          <option value="울산">울산</option>
                          <option value="세종특별자치시">세종특별자치시</option>
                          <option value="경기도">경기도</option>
                          <option value="강원특별자치도">강원특별자치도</option>
                          <option value="충청북도">충청북도</option>
                          <option value="충청남도">충청남도</option>
                          <option value="경상북도">경상북도</option>
                          <option value="전라북도">전라북도</option>
                          <option value="전라남도">전라남도</option>
                          <option value="제주도">제주도</option>
                        </select>
                      </div>
                  
                      <!-- 3순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">3순위</label>
                        <select class="form-control" name="preference3">
                          <option value="" disabled selected hidden>여행 취향 선택</option>
                          <option value="서울">서울</option>
                          <option value="인천">인천</option>
                          <option value="대전">대전</option>
                          <option value="대구">대구</option>
                          <option value="광주">광주</option>
                          <option value="부산">부산</option>
                          <option value="울산">울산</option>
                          <option value="세종특별자치시">세종특별자치시</option>
                          <option value="경기도">경기도</option>
                          <option value="강원특별자치도">강원특별자치도</option>
                          <option value="충청북도">충청북도</option>
                          <option value="충청남도">충청남도</option>
                          <option value="경상북도">경상북도</option>
                          <option value="전라북도">전라북도</option>
                          <option value="전라남도">전라남도</option>
                          <option value="제주도">제주도</option>
                        </select>
                      </div>
                    </div>
                  </div>


                  <div class="form-group">
                    <label class="col-form-label form-label-title">프로필 사진</label>
                  
                    <!-- 프로필 사진 왼쪽 박스 -->
                    <div class="profile-picture-container">
                      <div class="profile-picture-box">
                        <img class="profile-picture" id="profilePicturePreview" src="#" alt="프로필 사진">
                      </div>
                      
                      <!-- 사진 업로드 버튼 -->
                      <div class="upload-button-box">
                        <label for="profilePictureUpload" class="upload-button">
                          사진 업로드
                          <input type="file" id="profilePictureUpload" name="profilePicture" accept="image/*" onchange="previewProfilePicture()">
                        </label>
                      </div>
                    </div>

                  <div class="form-group mb-0">
                    <div class="checkbox p-0">
                      <input id="checkbox1" type="checkbox" />
                      <label class="text-muted" for="checkbox1"
                        >모두 동의하시면 체크해주세요.</label
                      >
                    </div>
                    <button
                      class="btn btn-primary btn-block w-100"
                      type="submit"
                    >
                      회원가입
                    </button>
                  </div>
                  <h6 class="text-muted mt-4 or">간편 회원가입</h6>
                  <div class="social mt-4">
                    <div class="btn-showcase text-center">
                      <a
                        class="btn btn-light"
                        href="https://twitter.com/login?lang=en"
                        target="_blank"
                        ><i class="txt-twitter" data-feather="kakao"></i
                        >카카오톡 로그인</a
                      ><a
                        class="btn btn-light"
                        href="https://www.facebook.com/"
                        target="_blank"
                        ><i class="txt-fb" data-feather="facebook"></i>페이스북
                        로그인</a
                      >
                    </div>
                  </div>
                  <p class="mt-4 mb-0 text-center">
                    이미 계정이 있으신가요?<a class="ms-2" href="login.html"
                      >로그인</a
                    >
                  </p>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- latest jquery-->
      <script src="../assets/js/jquery-3.5.1.min.js"></script>
      <!-- Bootstrap js-->
      <script src="../assets/js/bootstrap/bootstrap.bundle.min.js"></script>
      <!-- feather icon js-->
      <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
      <script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
      <!-- scrollbar js-->
      <!-- Sidebar jquery-->
      <script src="../assets/js/config.js"></script>
      <!-- Plugins JS start-->
      <!-- Plugins JS Ends-->
      <!-- Theme js-->
      <script src="../assets/js/script.js"></script>
      <!-- login js-->
      <!-- Plugin used-->

      <!-- 여행지 취향 중복 선택 제거 자바스크립트 코드-->
    <script>
    $(document).ready(function() {
      $('select[name^="여행지 취향"]').change(function() {
        // 선택된 값을 가져옴
        var selectedValue = $(this).val();
    
        // 모든 셀렉트 박스에서 선택된 값을 비활성화
        $('select[name^="여행지 취향"]').not(this).find('option').prop('disabled', false);
        $('select[name^="여행지 취향"]').not(this).find('option[value="' + selectedValue + '"]').prop('disabled', true);
      });
    });
    </script>
    
    </div>
  </body>
</html>
