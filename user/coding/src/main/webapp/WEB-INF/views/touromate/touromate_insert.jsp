<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- magnific css -->
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">

    <!-- Date-time picker css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/datepicker.min.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!--Drop zon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/dropzone.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css">

    <!-- kakao api -->
    <!-- <link rel="stylesheet" type="text/css" href="../assets/css/kakaoapi/kakaoapi.css"> -->

    <!-- 파일 업로드 : dropzone -->
    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>

    <!-- 카카오 api -->
    <!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b9d3f5257c6a474226de7cc1f6af52eb"></script> -->

    <!-- 카카오 검색 및 목록 -->
    <!-- <script src="../assets/js/kakaoapi/kakaoapi.js"></script> -->


        
</head>

<body>


    <!-- pre-loader start -->
    <!-- <div class="loader-wrapper food-loader">
        <div class="loader">
            <img src="../assets/images/loader/food.gif" alt="loader">
        </div>
    </div> -->
    <!-- pre-loader end -->


    <!-- 해더 (로고, 탭메뉴 등 설정) -->
    <%@ include file='../header/header.jsp' %>
<!--  해더 끝 -->


    <!-- breadcrumb start -->
    <section class="not-found order-food-section pt-0">
        <img src="../assets/images/restaurant/background/1.jpg" class="bg-img img-fluid blur-up lazyload" alt="">
    </section>
    <!-- breadcrumb end -->


    <!-- section start -->
    <section class="single-section small-section bg-inner">
        <div class="container" data-sticky_parent>
            <form>
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <div class="checkout-process">
                        
                        <div class="checkout-box">
                            <h4 class="title">여행 코스 등록</h4>
                            <div class="review-section">
                                <div class="review_box">
                                    <div class="flight_detail payment-gateway">
                                        <div class="accordion" id="accordionExample">
                                            <div class="card">
                                                <div class="card-header" id="h_one">
                                                    <div class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#one"
                                                        aria-expanded="true" aria-controls="one">
                                                        <label for='r_one'>
                                                            <input class="radio_animated ms-0" type='radio' checked
                                                                id='r_one' name='occupation' value='Working' required />
                                                                여행 코스 정보
                                                        </label>
                                                    </div>
                                                </div>
                                                <div id="one" class="collapse show" aria-labelledby="h_one"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body">
                                                            <div class="form-group">
                                                                <label for="name">제목</label>
                                                                <input type="text" class="form-control" id="name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="number">선호 여행 유형</label>
                                                                <input type="text" class="form-control" id="number">
                                                                <!-- <img src="../assets/images/creditcards.png" alt=""
                                                                    class="img-fluid blur-up lazyload"> -->
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="number">상세 내용</label>
                                                                <input type="text" class="form-control" id="number" style="height: 300px;">
                                                                <!-- <img src="../assets/images/creditcards.png" alt=""
                                                                    class="img-fluid blur-up lazyload"> -->
                                                            </div>
                                                            <!-- <div class="row">
                                                                <div class="form-group col-md-4">
                                                                    <label for="month">month</label>
                                                                    <select id="month" class="form-control">
                                                                        <option selected>Month...</option>
                                                                        <option>January</option>
                                                                        <option>February</option>
                                                                        <option>March</option>
                                                                        <option>April</option>
                                                                        <option>May</option>
                                                                        <option>June</option>
                                                                        <option>July</option>
                                                                        <option>August</option>
                                                                        <option>September</option>
                                                                        <option>October</option>
                                                                        <option>November</option>
                                                                        <option>December</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="year">year</label>
                                                                    <select id="year" class="form-control">
                                                                        <option selected>Year...</option>
                                                                        <option>...</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="cvv">cvv</label>
                                                                    <input type="password" maxlength="4"
                                                                        class="form-control" id="cvv">
                                                                    <img src="../assets/images/cvv.png"
                                                                        class="img-fluid blur-up lazyload" alt="">
                                                                </div>
                                                            </div> -->
                                                            <!-- <div class="payment-btn">
                                                                <button
                                                                    onclick="window.location.href='restaurant-order-success.html';"
                                                                    type="button" class="btn btn-solid color1">make
                                                                    payment</button>
                                                            </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header" id="h_two">
                                                    <div class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#two"
                                                        aria-expanded="true" aria-controls="two">
                                                        <label for='r_two'>
                                                            <input class="radio_animated ms-0" type='radio' id='r_two'
                                                                name='occupation' value='Working' required /> 이미지 업로드
                                                        </label>
                                                    </div>
                                                </div>
                                                <div id="two" class="collapse" aria-labelledby="h_two"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body">
                                                            <div class="dropzone" id="singleFileUpload">
                                                                <div class="dz-message needsclick">
                                                                    <i class="icon-cloud-up"></i>
                                                                    <h6>Drop files here or click to upload.</h6>
                                                                </div>
                                                            </div>
                                                            <!-- <div class="form-group">
                                                                <label for="c-name">name on card</label>
                                                                <input type="text" class="form-control" id="c-name">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="c-number">card number</label>
                                                                <input type="text" class="form-control" id="c-number">
                                                                <img src="../assets/images/creditcards.png" alt=""
                                                                    class="img-fluid blur-up lazyload">
                                                            </div> -->
                                                            <!-- <div class="row">
                                                                <div class="form-group col-md-4">
                                                                    <label for="c-month">month</label>
                                                                    <select id="c-month" class="form-control">
                                                                        <option selected>Month...</option>
                                                                        <option>January</option>
                                                                        <option>February</option>
                                                                        <option>March</option>
                                                                        <option>April</option>
                                                                        <option>May</option>
                                                                        <option>June</option>
                                                                        <option>July</option>
                                                                        <option>August</option>
                                                                        <option>September</option>
                                                                        <option>October</option>
                                                                        <option>November</option>
                                                                        <option>December</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="c-year">year</label>
                                                                    <select id="c-year" class="form-control">
                                                                        <option selected>Year...</option>
                                                                        <option>...</option>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-md-4">
                                                                    <label for="c-cvv">cvv</label>
                                                                    <input type="password" class="form-control"
                                                                        maxlength="4" id="c-cvv">
                                                                    <img src="../assets/images/cvv.png"
                                                                        class="img-fluid blur-up lazyload" alt="">
                                                                </div>
                                                            </div> -->
                                                            <!-- <div class="payment-btn">
                                                                <button
                                                                    onclick="window.location.href='restaurant-order-success.html';"
                                                                    type="button" class="btn btn-solid color1">make
                                                                    payment</button>
                                                            </div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div class="card"> -->
                                                <!-- <div class="card-header" id="h_three">
                                                    <div class="btn btn-link" data-bs-toggle="collapse"
                                                        data-bs-target="#three" aria-expanded="true" aria-controls="three">
                                                        <label for='r_three'>
                                                            <input class="radio_animated ms-0" type='radio' id='r_three'
                                                                name='occupation' value='Working' required /> net
                                                            banking
                                                        </label>
                                                    </div>
                                                </div>
                                                <div id="three" class="collapse" aria-labelledby="h_three"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <form class="wallet-section">
                                                            <h6>select popular banks</h6>
                                                            <div class="row">
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios1"
                                                                        value="option1" checked>
                                                                    <label class="form-check-label" for="Radios1">
                                                                        Industrial & Commercial Bank
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios2"
                                                                        value="option2">
                                                                    <label class="form-check-label" for="Radios2">
                                                                        Construction Bank Corp.
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios3"
                                                                        value="option2">
                                                                    <label class="form-check-label" for="Radios3">
                                                                        Agricultural Bank
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios4"
                                                                        value="option2">
                                                                    <label class="form-check-label" for="Radios4">
                                                                        HSBC Holdings
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios5"
                                                                        value="option2">
                                                                    <label class="form-check-label" for="Radios5">
                                                                        Bank of America
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios1" id="Radios6"
                                                                        value="option2">
                                                                    <label class="form-check-label" for="Radios6">
                                                                        JPMorgan Chase & Co.
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form-group mt-3">
                                                                <label for="net-b">select bank</label>
                                                                <select id="net-b" class="form-control">
                                                                    <option selected>Choose Bank...</option>
                                                                    <option>...</option>
                                                                </select>
                                                            </div>
                                                            <div class="payment-btn">
                                                                <button
                                                                    onclick="window.location.href='restaurant-order-success.html';"
                                                                    type="button" class="btn btn-solid color1">make
                                                                    payment</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div> -->
                                            <!-- </div> -->
                                            <!-- <div class="card"> -->
                                                <!-- <div class="card-header" id="h_four">
                                                    <div class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#four"
                                                        aria-expanded="true" aria-controls="four">
                                                        <label for='r_four'>
                                                            <input class="radio_animated ms-0" type='radio' id='r_four'
                                                                name='occupation' value='Working' required /> my wallet
                                                        </label>
                                                    </div>
                                                </div>
                                                <div id="four" class="collapse" aria-labelledby="h_four"
                                                    data-bs-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <form class="wallet-section">
                                                            <h6>select your wallet</h6>
                                                            <div class="row">
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        value="option1" checked>
                                                                    <label class="form-check-label">
                                                                        Adyen
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        value="option2">
                                                                    <label class="form-check-label">
                                                                        Airtel Money
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        id="exampleRadios3" value="option2">
                                                                    <label class="form-check-label"
                                                                        for="exampleRadios3">
                                                                        AlliedWallet
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        id="exampleRadios4" value="option2">
                                                                    <label class="form-check-label"
                                                                        for="exampleRadios4">
                                                                        Apple Pay
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        id="exampleRadios5" value="option2">
                                                                    <label class="form-check-label"
                                                                        for="exampleRadios5">
                                                                        Brinks
                                                                    </label>
                                                                </div>
                                                                <div class="form-check col-md-6">
                                                                    <input class="form-check-input radio_animated"
                                                                        type="radio" name="exampleRadios2"
                                                                        id="exampleRadios6" value="option2">
                                                                    <label class="form-check-label"
                                                                        for="exampleRadios6">
                                                                        CardFree
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="payment-btn">
                                                                <button
                                                                    onclick="window.location.href='restaurant-order-success.html';"
                                                                    type="button" class="btn btn-solid color1">make
                                                                    payment</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div> -->
                                            <!-- </div> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="checkout-box">
                            <h4 class="title">여행 코스 선택(최대 3개):</h4>
                            <div class="sub-title">
                                <h5>여행 코스</h5>
                                <a href="#" data-bs-toggle="modal" data-bs-target="#add-address" class="add-new">+ 여행코스 추가</a>
                            </div>
                            <div class="row address-sec">
                                <div class="select-box active col-xl-4 col-md-6">
                                    <div class="address-box">
                                        <div class="top">
                                            <h6>여행지명</h6>
                                        </div>
                                        <div class="middle">
                                            <div class="address">
                                                <p>여행지 주소</p>
                                            </div>
                                            <!-- <div class="number">
                                                <p>mobile: <span>+91 123 - 456 - 7890</span></p>
                                            </div> -->
                                        </div>
                                        
                                        <div class="bottom">
                                            <!-- 여행코스 수정 버튼 -->
                                            <a href="javascript:void(0)" data-bs-target="#edit-address" data-bs-toggle="modal"
                                                class="bottom_btn">edit</a>
                                            <!-- 여행코스 삭제 버튼 -->
                                            <a href="#" class="bottom_btn">remove</a>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 인원수 설정 -->
                <div class="col-xl-3 col-lg-4 checkout-cart">
                    <div class="sticky-cls-top">
                        <div class="single-sidebar order-cart-right">
                            <div class="order-cart">
                                <h4 class="title">모집인원</h4>
                                <div class="cart-items">
                                    <div class="items veg">
                                        <!-- <h6>Veg Cheese Quesadillas</h6> -->
                                        <!-- <h5>$10.00</h5> -->
                                        <div class="qty-box cart_qty">
                                            <div class="input-group">
                                                <button type="button" class="btn qty-left-minus" data-type="minus"
                                                    data-field="" tabindex="1" onclick="minusQuantity()">
                                                    <i class="fa fa-minus" aria-hidden="true"></i>
                                                </button>
                                                <!-- <input type="text" name="quantity"
                                                    class="form-control input-number qty-input" value="1" tabindex="1" id="inputQuantity"> -->
                                                <span id="inputQuantity" class="form-control input-number qty-input">1</span>
                                                <button type="button" class="btn qty-right-plus" data-type="plus"
                                                    data-field="" tabindex="1" onclick="plusQuantity()">
                                                    <i class="fa fa-plus" aria-hidden="true"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="price">
                                            <span  id="quantityValue">1</span>명
                                        </div>
                                        <!-- 카운트 js 코드 -->
                                        <script>
                                            var quantitySpan = document.getElementById('quantityValue');
                                            var buttonText = document.getElementById('inputQuantity');
                                            // plus 버튼 1씩 증가
                                            function plusQuantity() {
                                                var currentQuantity = parseInt(quantitySpan.innerText, 10);
                                                
                                                currentQuantity += 1;
                                        
                                                quantitySpan.innerText = currentQuantity;
                                                buttonText.innerText = currentQuantity;
                                            }
                                            // minus 버튼 1까지만 감소
                                            function minusQuantity() {
                                                var currentQuantity = parseInt(quantitySpan.innerText, 10);
                                                if (currentQuantity > 1) {
                                                    currentQuantity -= 1;
                                                    quantitySpan.innerText = currentQuantity;
                                                    buttonText.innerText = currentQuantity;
                                                } else {
                                                    buttonText.innerText = 1
                                                }
                                        
                                            }
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-sidebar p-0">
                            <div class="newsletter-sec">
                                <div>
                                    <h4 class="title">등록 전 확인</h4>
                                    <p>Check your contents!</p>
                                        <div class="button">
                                            <input class="btn btn-solid type="submit" value="등록" style="width: 60px;"/>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        </div>
    </section>
    <!-- section end -->


    <!-- footer start -->
    <%@ include file='../footer/footer.jsp' %>
 <!-- footer end -->

    <!-- 여행코스 수정 모달 -->
    <!-- add card modal start -->
    <div class="modal fade edit-profile-modal" id="edit-address" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">여행 코스 장소 찍어주세요</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- 카카오 api -->
                    <!-- <div id="map" style="width:400px;height:400px;"></div> -->
                    
                    <!-- <form>
                        <div class="form-group">
                            <label for="e-na">name</label>
                            <input type="text" class="form-control" placeholder="Mark Jecno" id="e-na">
                        </div>
                        <div class="form-group">
                            <label for="e-n">mobile number</label>
                            <input type="text" class="form-control" placeholder="+91 123 - 456 - 7890" id="e-n">
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" class="form-control" placeholder="549 Sulphur Springs Road">
                        </div>
                        <div class="row">
                            <div class="form-group col-md-5">
                                <label>City</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group col-md-4">
                                <label>State</label>
                                <select class="form-control">
                                    <option selected>Choose...</option>
                                    <option>...</option>
                                </select>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="inputZip">Zip</label>
                                <input placeholder="60515" type="text" class="form-control">
                            </div>
                        </div>
                    </form> -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-solid">코스 수정</button>
                </div>
            </div>
        </div>
    </div>
    <!-- edit password modal start -->

    <!-- 여행코스 추가 모달 -->
    <!-- add card modal start -->
    <div class="modal fade edit-profile-modal" id="add-address" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">여행 코스 장소 찍어주세요</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                </div>
                
                <div class="modal-body">
                    <!-- 카카오 api -->
                    <!-- <div id="map1" style="width:400px;height:400px;"></div>
                    <script>
                        var container = document.getElementById('map1');
                        var options = {
                            center: new kakao.maps.LatLng(33.450701, 126.570667),
                            level: 3
                        };
                
                        var map = new kakao.maps.Map(container, options);
                    </script> -->
                    <!-- <div class="map_wrap">
                        <div id="map" style="width:400px;height:400px;"></div>
                    
                        <div id="menu_wrap" class="bg_white">
                            <div class="option">
                                <div>
                                    <form onsubmit="searchPlaces(); return false;">
                                        키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
                                        <button type="submit">검색하기</button> 
                                    </form>
                                </div>
                            </div>
                            <hr>
                            <ul id="placesList"></ul>
                            <div id="pagination"></div>
                        </div>
                    </div> -->
                  
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                    <button type="button" class="btn btn-solid">코스 추가</button>
                </div>
            </div>
        </div>
    </div>
    <!-- edit password modal start -->


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

    <!-- zoom gallery js -->
    <script src="../assets/js/jquery.magnific-popup.js"></script>
    <script src="../assets/js/zoom-gallery.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- stick section js -->
    <script src='../assets/js/sticky-kit.js'></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <!-- 카카오 맵 띄우기 -->
    <!-- <script src="../assets/js/kakaoapi/kakaomap.js"></script> -->

    <!-- 카카오 지오(내위치) 띄우기 -->
    <!-- <script src="../assets/js/kakaoapi/kakaogeo.js"></script> -->

    <script>
        $('#datetimepicker').datetimepicker({
            uiLibrary: 'bootstrap4',
        });
    </script>

    <script>
        Dropzone.autoDiscover = false; // deprecated 된 옵션. false로 해놓는걸 공식문서에서 명시
    
        const dropzone = new Dropzone("div.dropzone", {
        url: "https://httpbin.org/post",
        });
  </script>

</body>

</html>
