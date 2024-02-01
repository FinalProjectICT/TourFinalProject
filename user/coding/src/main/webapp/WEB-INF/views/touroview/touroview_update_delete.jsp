<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="rica">
    <meta name="keywords" content="rica">
    <meta name="author" content="rica">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>여행을 더욱 특별하게, TOURO</title>

    <!--Google font-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- Date-time picker css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/datepicker.min.css">

    <!-- magnific css -->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css">

    <!-- 추가한 css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/fileupload.css">

    <!-- sweetalert.js -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</head>

<body>

    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
<!--  해더 끝 -->


    <!-- 각 게시물 이름 및 각 게시물 이미지  -->
    <section class="hotel-single-section pt-0">
        <img src="../assets/images/single-hotel/bg-2.jpg" class="bg-img bg-bottom img-fluid blur-up lazyload" alt="">
        <div class="hotel-title-section">
            <div class="container ">
                <div class="row">
                    <div class="col-12">
                        <div class="hotel-name">
                            <div class="left-part">
                                <div class="top">
                                    <h2>${touroviewVO.touroview_title}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 각 게시물 이름 및 각 게시물 이미지  -->


    <!-- section start -->
    <section class="single-section xs-section bg-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <form action="${pageContext.request.contextPath}/touroview/touroview_update_delete" method="post">

                                <!-- 이미지만 보여주는 테이블-->
                                <div class="image_section ">
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <div class="slide-1 arrow-dark zoom-gallery ratio2_3">
                                                <div>
                                                    <a href="../assets/images/hotel/room/11.jpg">
                                                        <img src="../assets/images/hotel/room/11.jpg"
                                                            class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                        <h6 class="view-all">view all images</h6>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="center-content">
                                                    <input type="file" class="upload-name" disabled="disabled">
                                                    <label for="input-file" class="upload1">업로드</label>
                                            </div>
                                        </div>
                                        <div class="col-sm-4 d-none d-sm-block">
                                            <div class="row">
                                                <div class="col-12 ratio_59">
                                                    <div class="slide-1 zoom-gallery no-arrow">
                                                        <div>
                                                            <a href="../assets/images/hotel/room/4.jpg">
                                                                <img src="../assets/images/hotel/room/4.jpg"
                                                                    class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                                <h6 class="view-all">room images</h6>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="center-content">
                                                            <input type="file" class="upload-name" disabled="disabled" >
                                                            <label for="input-file" class="upload2">업로드</label>
                                                    </div>

                                                    <div class="slide-1 zoom-gallery no-arrow m-cls">
                                                        <div>
                                                            <a href="../assets/images/hotel/room/13.jpg">
                                                                <img src="../assets/images/hotel/room/13.jpg"
                                                                    class="img-fluid blur-up lazyload bg-img w-100" alt="">
                                                                <h6 class="view-all">poll images</h6>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="center-content">
                                                            <input type="file" class="upload-name" disabled="disabled" >
                                                            <label for="input-file" class="upload3">업로드</label>
                                                    </div>
                                                    <div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 게시글  -->
                                <div class="description-section">
                                    <div class="description-details">
                                        <div class="desc-box">
                                            <div class="about page-section menu-part" id="about" style="width: 1406px;">
                                                <br/>
                                                <br/>
                                                <!-- 게시글 제목 -->
                                                <input type="text" class="form-control" id="exampleFormControlInput1"
                                                        value="${touroviewVO.touroview_title}">
                                                <br/>
                                                <!-- 게시글 내용 -->
                                                <textarea  class="form-control" id="exampleFormControlInput111"
                                                >${touroviewVO.touroview_content}</textarea>
                                                <br/>
                                                <div>
                                                    <input type="submit" id = "modi" value=" 수정 " style="background-color: #E6E6E6;">
                                                </div>
                                                <br/>
                                                <div>
                                                    <input type="submit" id = "del" value=" 삭제 " style="background-color: #E6E6E6;" onclick="deleteTouroview()">
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </form>
                </div>
            </div>
        </div>
    </section>
    <!-- section end -->


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



    <!-- setting start 화면 검정 + 왼쪽 정렬 , 오른쪽 정렬 -->
    <div class="theme-setting">
        <div class="dark">
            <input class="tgl tgl-skewed" id="dark" type="checkbox">
            <label class="tgl-btn" data-tg-off="Dark" data-tg-on="Light" for="dark"></label>
        </div>
        <div class="rtl">
            <input class="tgl tgl-skewed" id="rtl" type="checkbox">
            <label class="tgl-btn" data-tg-off="RTL" data-tg-on="LTR" for="rtl"></label>
        </div>
    </div>
    <!-- setting end -->


    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- portfolio js -->
    <script src="../assets/js/jquery.magnific-popup.js"></script>
    <script src="../assets/js/zoom-gallery.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- smooth scroll js -->
    <script src="../assets/js/smooth-scroll.js"></script>

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

    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4',
            format: 'dd mmmm'
        });
        $('#datepicker1').datepicker({
            uiLibrary: 'bootstrap4',
            format: 'dd mmmm'
        });
    </script>

    <!-- 여행지 제목 받기 -->
    <script>
  var tourName = '${tourVO.tour_name}';
    </script>


    // 게시글 삭제 
    <script>
        function deleteTouroview(){
            // 삭제 여부 사용자에게 확인
            var isConfirmed = confirm("정말로 삭제하시겠습니까?");
            
            // 사용자가 확인 선택한 경우 삭제 요청 진행
            if (isConfirmed){
                // 삭제할 후기 번호
                var touroviewNum = "${touroviewVO.touroview_num}";

                // ajax를 사용해서 서버에 삭제 요청
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "${pageContext.request.contextPath}/touroview/deleteTouroview", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function(){
                    if (xhr.readyState === 4 && xhr.status === 200){
                        // 삭제 성공 시
                        window.location.href = "${pageContext.request.contextPath}/touroview/touroview_list";

                    } else if (xhr.readyState === 4 && xhr.status !== 200){
                        // 삭제 실패 시 사용자에게 알림
                        swal("", "서버와의 통신 중 오류가 발생했습니다.", "error");
                        // alert("삭제에 실패했습니다. 다시 시도해주세요.");
                    }
                };
                xhr.send("touroviewNum=" + touroviewNum);
            }
        }
    </script>

</body>

</html>
