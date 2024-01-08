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
    <title>Rica</title>

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

</head>

<body>

    <!-- header start -->
    <header class="light_header">
        <h2>헤더</h2>
    </header>
    <!--  header end -->


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
                                    <h2>게시글 제목 </h2>
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
                    <form action="abc" method="post">
                    
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
                                            
                                            <div class="col-xl-3 col-lg-4" id="booking">
                                                <div class="sticky-cls">
                                                    <div class="abcddessadsa">
                                                        <div class="single-sidebar">
                                                            <div class="selection-section"> 
                                                                <div class="price-part">
                                                                    <div class="left-part">
                                                                    작성 날짜<input type="date" class="writerDate-insert" id ="writerinsert">

                                                                    </div>
                                                                </div>  
                                                                <br/>
                                                                <div class="price-part">
                                                                    작성자<input type="text" class="writer-insert" id ="writerNumber" placeholder="작성자(세션값)">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>  

                                            <div class="about page-section menu-part" id="about" style="width: 1406px;">
                                                <input type="text" id="destinationInput" placeholder="search 후 선택 된 여행지 이름 띄워">
                                                <br/>
                                                <br/>
                                                <input type="text" class="form-control" id="exampleFormControlInput1"
                                                placeholder="게시글 제목 ">
                                                <br/>
                                                <textarea  class="form-control" id="exampleFormControlInput111"
                                                placeholder="게시글 상세정보 " ></textarea>
                                                <br/>
                                                <div>
                                                    <input type="submit" id = "modi" value=" 수정 " style="background-color: #4734d9;">
                                                </div>
                                                <br/>
                                                <div>
                                                    <input type="submit" id = "del" value=" 삭제 " style="background-color: #c42759;">
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
    <footer>
        <h2>푸터</h2>
    </footer>
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

</body>

</html>
