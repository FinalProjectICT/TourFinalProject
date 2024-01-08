<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <html lang="UTF-8">

  <head>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description"
      content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities." />
    <meta name="keywords"
      content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app" />
    <meta name="author" content="pixelstrap" />
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>TOURO - 회원가입</title>
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />
    
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css" />
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/themify.css" />
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/feather-icon.css" />
    <!-- Plugins css start-->
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/vendors/bootstrap.css" />
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css" />

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  </head>

  <body>
    <!-- login page start-->
    <div class="container-fluid p-0">
      <div class="row m-0">
        <div class="col-12 p-0">
          <div class="login-card">
            <div>
              <div>
                <a class="logo" href="../touro">
                  <img class="img-fluid for-light" src="../assets/images/logo/logo-icon.png" alt="looginpage" />
                  <img class="img-fluid for-dark" src="../assets/images/logo/logo-white.png" alt="looginpage" />
                </a>
              </div>
              <div class="login-main">

                <h4>회원가입</h4>
                <p>회원 정보를 입력해주세요.</p>
                <form class="theme-form">
                  <div class="form-group">
                    <label class="col-form-label form-label-title">이름</label><span id="required" class="required">(필수입력사항)</span>
                    <div class="input-group">
                      <input class="form-control" type="text" id="user_name" name="user_name" placeholder="한글 5자 이내"
                        required />
                    </div>
                  </div>
                  <!-- 아이디 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">아이디</label><span id="required" class="required">(필수입력사항)</span>
                    <div class="row g-2 align-items-center">
                      <div class="col">
                        <div class="form-input position-relative">
                          <input class="form-control" type="text" id="user_id" name="user_id" placeholder="5자~10자 영어와 숫자조합" required />
                          <span id="idError" class="error"></span>
                        </div>
                      </div>
                      <div class="col-auto">
                        <input type="button" id="id_chk" class="btn btn-primary" value="중복확인">
                        <!-- <button class="btn btn-primary" id="id_chk">중복확인</button> -->
                      </div>
                    </div>
                  </div>

                  <!-- 비밀번호 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">비밀번호</label><span id="required" class="required">(필수입력사항)</span>
                    <div class="form-input position-relative">
                      <input class="form-control" type="password" id="user_pass" name="user_pass" placeholder="4자이상 영어와 숫자조합" required />
                      <span id="pwdChkError" class="error"></span>
                    </div>
                  </div>

                  <!-- 주소 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">주소</label><span id="required"
                      class="required">(필수입력사항)</span>
                    <div class="row g-2 align-items-center">
                      <div class="col">
                        <div class="form-input position-relative">
                          <input class="form-control" type="text" id="sample6_postcode" name="postcode" readonly>
                        </div>
                      </div>
                      <div class="col-auto">
                        <input type="button" onclick="sample6_execDaumPostcode()" class="btn btn-primary" value="우편번호검색" onclick="checkPost()">
                      </div>
                      <input class="form-control" type="text" id="sample6_address" name="address" placeholder="주소" readonly><br />
                      <input class="form-control" type="text" id="sample6_detailAddress" name="detailaddr" placeholder="상세주소">
                      <input type="text" id="sample6_extraAddress" name="addr" style="display:none;">
                    </div>
                  </div>

                  <!-- 전화번호 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">전화번호</label>
                    <span id="required" class="required">(필수입력사항)</span>
                    <div class="form-input position-relative">
                      <input class="form-control" type="text" id="user_tel" name="user_tel" placeholder="-없이 숫자조합"
                        required />
                    </div>
                  </div>

                  <!-- 메일주소 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">메일주소</label>
                    <span id="required" class="required">(필수입력사항)</span>
                    <input class="form-control" type="email" id="user_email" name="user_email" placeholder="touro@gmail.com" required />
                  </div>

                  <!-- 성별 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">성별</label>
                    <span id="required" class="required">(필수입력사항)</span>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender" id="gender" value="female" checked />
                      <label class="form-check-label" for="female">여성</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender" id="gender" value="male" checked />
                      <label class="form-check-label" for="male">남성</label>
                    </div>
                  </div>

                  <!-- 생년월일 -->
                  <div class="form-group" style="display: flex; gap: 10px;">
                    <div>
                      <label class="col-form-label form-label-title">생년월일</label>
                      <span id="required" class="required">(필수입력사항)</span>
                      <div class="form-input position-relative">
                        <input class="form-control" type="date" id="birthdate" name="birthdate" placeholder="생년월일" style="width: 250px;" />
                      </div>
                    </div>
                    <div>
                      <label class="col-form-label form-label-title">나이</label>
                      <div class="form-input position-relative">
                        <input class="form-control" type="text" name="additionalText" placeholder="" style="width: 100px;" readonly required />
                      </div>
                    </div>
                  </div>

                  <!-- 여행지 취향 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">선호 여행유형</label>

                    <div class="row g-2 mb-3">
                      <!-- 1순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">1순위</label>
                        <select class="form-control" name="user_prefer_type1">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="tourist">관광지 위주</option>
                          <option value="dining">맛집 위주</option>
                          <option value="room">숙소 위주</option>
                        </select>
                      </div>

                      <!-- 2순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">2순위</label>
                        <select class="form-control" name="user_prefer_type2">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="tourist">관광지 위주</option>
                          <option value="dining">맛집 위주</option>
                          <option value="room">숙소 위주</option>
                        </select>
                      </div>

                      <!-- 3순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">3순위</label>
                        <select class="form-control" name="user_prefer_type3">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="tourist">관광지 위주</option>
                          <option value="dining">맛집 위주</option>
                          <option value="room">숙소 위주</option>
                        </select>
                      </div>
                    </div>
                  </div>

                  <!-- 선호 지역 -->
                  <div class="form-group">
                    <label class="col-form-label form-label-title">선호 지역</label>

                    <div class="row g-2 mb-3">
                      <!-- 1순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">1순위</label>
                        <select class="form-control" name="user_prefer_loc1">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="1">서울</option>
                          <option value="2">인천</option>
                          <option value="3">대전</option>
                          <option value="4">대구</option>
                          <option value="5">광주</option>
                          <option value="6">부산</option>
                          <option value="7">울산</option>
                          <option value="8">세종특별자치시</option>
                          <option value="31">경기도</option>
                          <option value="32">강원특별자치도</option>
                          <option value="33">충청북도</option>
                          <option value="34">충청남도</option>
                          <option value="35">경상북도</option>
                          <option value="36">경상북도</option>
                          <option value="37">전라북도</option>
                          <option value="38">전라남도</option>
                          <option value="39">제주도</option>
                        </select>
                      </div>

                      <!-- 2순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">2순위</label>
                        <select class="form-control" name="user_prefer_loc2">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="1">서울</option>
                          <option value="2">인천</option>
                          <option value="3">대전</option>
                          <option value="4">대구</option>
                          <option value="5">광주</option>
                          <option value="6">부산</option>
                          <option value="7">울산</option>
                          <option value="8">세종특별자치시</option>
                          <option value="31">경기도</option>
                          <option value="32">강원특별자치도</option>
                          <option value="33">충청북도</option>
                          <option value="34">충청남도</option>
                          <option value="35">경상북도</option>
                          <option value="36">경상북도</option>
                          <option value="37">전라북도</option>
                          <option value="38">전라남도</option>
                          <option value="39">제주도</option>
                        </select>
                      </div>

                      <!-- 3순위 -->
                      <div class="col">
                        <label class="col-form-label form-label-title">3순위</label>
                        <select class="form-control" name="user_prefer_loc3">
                          <option value="" disabled selected hidden>---선택 ▼---</option>
                          <option value="1">서울</option>
                          <option value="2">인천</option>
                          <option value="3">대전</option>
                          <option value="4">대구</option>
                          <option value="5">광주</option>
                          <option value="6">부산</option>
                          <option value="7">울산</option>
                          <option value="8">세종특별자치시</option>
                          <option value="31">경기도</option>
                          <option value="32">강원특별자치도</option>
                          <option value="33">충청북도</option>
                          <option value="34">충청남도</option>
                          <option value="35">경상북도</option>
                          <option value="36">경상북도</option>
                          <option value="37">전라북도</option>
                          <option value="38">전라남도</option>
                          <option value="39">제주도</option>
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
                        <label class="text-muted" for="checkbox1">개인정보 수집에 동의하시면 체크해주세요.</label>
                      </div>
                      <button class="btn btn-primary btn-block w-100" type="submit" id="submitBtn">회원가입</button>
                    </div>
                </form>

                <h6 class="text-muted mt-4 or">간편 회원가입</h6>
                <div class="social mt-4">
                  <div class="btn-showcase text-center">
                    <a class="btn btn-light" href="https://twitter.com/login?lang=en" target="_blank">
                      <i class="txt-twitter" data-feather="kakao"></i>카카오톡 로그인</a>
                    <a class="btn btn-light" href="https://www.facebook.com/" target="_blank">
                      <i class="txt-fb" data-feather="facebook"></i>페이스북 로그인</a>
                  </div>
                </div>
                <p class="mt-4 mb-0 text-center">
                  이미 계정이 있으신가요?
                  <a class="ms-2" href="login">로그인</a>
                </p>

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
        $(document).ready(function () {
          $('select[name^="user_prefer_type"]').change(function () {
            // 선택된 값을 가져옴
            var selectedValue = $(this).val();

            // 다른 셀렉트 박스에서 선택된 값 제거
            $('select[name^="user_prefer_type"]').not(this).find('option').prop('disabled', false);
            $('select[name^="user_prefer_type"]').not(this).find('option[value="' + selectedValue + '"]').prop('disabled', true);
            
            // 현재 셀렉트 박스에서 선택된 값 비활성화
            // $(this).find('option').prop('disabled', false);
            // $(this).find('option:selected').prop('disabled', true);
          });
        });
      </script>

      <!-- 다음 주소찾기 API -->
      <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
        
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
        
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
        
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
        
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
      </script>

    </div>
  </body>

  </html>