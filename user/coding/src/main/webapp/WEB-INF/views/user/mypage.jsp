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
<!-- 수정 -->
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

    <!-- Date-time picker css -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../assets/css/datepicker.min.css"
    />

    <!--Drop zon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/dropzone.css" />

    <!-- 파일 업로드 : dropzone -->
    <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" />

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" />
  </head>

  <body>
    <!-- header start -->
    <header class="inner-page">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="menu">
              <div class="brand-logo">
                <a href="../index.html">
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
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">Home</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Hotel Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="hotel-layout.html">classic</a></li>
                              <li><a href="hotel-layout-2.html">minimal</a></li>
                              <li><a href="hotel-layout-3.html">vector</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">Tour Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="tour-layout.html">modern</a></li>
                              <li><a href="tour-layout-2.html">trending</a></li>
                              <li>
                                <a href="tour-layout-3.html">Vector demo</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">cab Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="cab-layout.html">modern</a></li>
                              <li><a href="cab-layout-2.html">classic</a></li>
                              <li><a href="cab-layout-3.html">Map demo</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">flight Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="flight-layout.html">modern</a></li>
                              <li>
                                <a href="flight-layout-2.html">minimal</a>
                              </li>
                              <li>
                                <a href="flight-layout-3.html">left sidebar</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">restaurant Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li>
                                <a href="restaurant-layout.html">classic</a>
                              </li>
                              <li>
                                <a href="restaurant-layout-2.html">minimal</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">mix Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="mix-layout.html">classic</a></li>
                              <li><a href="mix-layout-2.html">minimal</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">hotel</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu level1">
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >grid view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-2-grid.html">2 Grid</a>
                                  </li>
                                  <li>
                                    <a href="hotel-3-grid.html">3 Grid</a>
                                  </li>
                                  <li>
                                    <a href="hotel-4-grid.html">4 Grid</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >sidebar</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-left-sidebar.html"
                                      >Left Sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-right-sidebar.html"
                                      >Right Sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-no-sidebar.html"
                                      >No Sidebar</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-map.html">google map</a>
                                  </li>
                                  <li>
                                    <a href="hotel-map-leaflet.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-map-here.html">here map</a>
                                  </li>
                                  <li>
                                    <a href="hotel-map-bing.html">bing map</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >map modal</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-map-modal.html"
                                      >google map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-map-leaflet-modal.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-map-here-modal.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-map-bing-modal.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >onclick map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-clickmap.html">google map</a>
                                  </li>
                                  <li>
                                    <a href="hotel-leaflet-clickmap.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-here-clickmap.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-bing-clickmap.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >left side map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-leftmap.html">google map</a>
                                  </li>
                                  <li>
                                    <a href="hotel-leaflet-leftmap.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-here-leftmap.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-bing-leftmap.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >list view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="hotel-list.html">List View</a>
                                  </li>
                                  <li>
                                    <a
                                      href="javascript:void(0)"
                                      class="menu-title"
                                      >Map</a
                                    >
                                    <ul
                                      class="nav-sub-childmenu submenu-content level3"
                                    >
                                      <li>
                                        <a href="hotel-list-map.html"
                                          >google map</a
                                        >
                                      </li>
                                      <li>
                                        <a href="hotel-leaflet-list-map.html"
                                          >leaflet map</a
                                        >
                                      </li>
                                      <li>
                                        <a href="hotel-here-list-map.html"
                                          >here map</a
                                        >
                                      </li>
                                      <li>
                                        <a href="hotel-bing-list-map.html"
                                          >bing map</a
                                        >
                                      </li>
                                    </ul>
                                  </li>
                                  <li>
                                    <a href="hotel-list-slider.html">Slider</a>
                                  </li>
                                  <li>
                                    <a href="hotel-list-images.html"
                                      >multiple Image</a
                                    >
                                  </li>
                                  <li>
                                    <a href="hotel-list-video.html">Video</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="hotel-slider.html"
                                  >Hotel with Slider</a
                                >
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li><a href="hotel-single-1.html">classic</a></li>
                              <li>
                                <a href="hotel-single-9.html">360 view</a>
                              </li>
                              <li>
                                <a href="hotel-single-2.html">without top</a>
                              </li>
                              <li>
                                <a href="hotel-single-3.html">left sidebar</a>
                              </li>
                              <li>
                                <a href="hotel-single-4.html">info tab</a>
                              </li>
                              <li>
                                <a href="hotel-single-5.html">image slider</a>
                              </li>
                              <li>
                                <a href="hotel-single-6.html"
                                  >thumbnail image</a
                                >
                              </li>
                              <li>
                                <a href="hotel-single-7.html">image box</a>
                              </li>
                              <li>
                                <a href="hotel-single-8.html"
                                  >theme breadcrumb</a
                                >
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="hotel-booking.html">booking page</a>
                              </li>
                              <li>
                                <a href="hotel-checkout.html">checkout</a>
                              </li>
                              <li>
                                <a href="hotel-booking-failed.html"
                                  >booking failed</a
                                >
                              </li>
                              <li>
                                <a href="hotel-booking-success.html"
                                  >booking success</a
                                >
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">tour</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >grid view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li><a href="tour-2-grid.html">2 Grid</a></li>
                                  <li><a href="tour-3-grid.html">3 Grid</a></li>
                                  <li><a href="tour-4-grid.html">4 Grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >sidebar</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="tour-left-sidebar.html"
                                      >left sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="tour-right-sidebar.html"
                                      >right sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="tour-no-sidebar.html"
                                      >no sidebar</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >list view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="tour-list.html">list view</a>
                                  </li>
                                  <li>
                                    <a href="tour-list-slider.html">slider</a>
                                  </li>
                                  <li>
                                    <a href="tour-list-images.html"
                                      >multiple images</a
                                    >
                                  </li>
                                  <li>
                                    <a href="tour-list-video.html">video</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="tour-slider.html">with slider</a>
                              </li>
                              <li><a href="tour-minimal.html">minimal</a></li>
                              <li><a href="tour-classic.html">classic</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li><a href="tour-single-1.html">tab</a></li>
                              <li>
                                <a href="tour-single-2.html"
                                  >full page detail</a
                                >
                              </li>
                              <li><a href="tour-single-3.html">slider</a></li>
                              <li><a href="tour-single-4.html">360 view</a></li>
                              <li>
                                <a href="tour-single-5.html"
                                  >Full page slider</a
                                >
                              </li>
                              <li>
                                <a href="tour-single-6.html">classic design</a>
                              </li>
                              <li><a href="tour-single-7.html">video </a></li>
                              <li>
                                <a href="tour-single-8.html">left-sidebar </a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="tour-booking.html">booking page</a>
                              </li>
                              <li><a href="tour-checkout.html">checkout</a></li>
                              <li>
                                <a href="tour-booking-failed.html"
                                  >booking failed</a
                                >
                              </li>
                              <li>
                                <a href="tour-booking-success.html"
                                  >booking success</a
                                >
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">flight</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="flight-left-sidebar.html"
                                  >left sidebar</a
                                >
                              </li>
                              <li>
                                <a href="flight-right-sidebar.html"
                                  >right sidebar</a
                                >
                              </li>
                              <li>
                                <a href="flight-top-filter.html">top filter</a>
                              </li>
                              <li>
                                <a href="flight-round-trip.html">round trip</a>
                              </li>
                              <li>
                                <a href="flight-not-found.html">not found</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="flight-booking.html">book now</a>
                              </li>
                              <li>
                                <a href="flight-booking-addons.html"
                                  >booking add-ons</a
                                >
                              </li>
                              <li>
                                <a href="flight-booking-payment.html"
                                  >booking payment</a
                                >
                              </li>
                              <li>
                                <a href="flight-booking-success.html"
                                  >booking success</a
                                >
                              </li>
                              <li>
                                <a href="flight-booking-failed.html"
                                  >booking failed</a
                                >
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">cab</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >list view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="cab-list-leftsidebar.html"
                                      >left sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="cab-list-rightsidebar.html"
                                      >right sidebar</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >grid view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li><a href="cab-3-grid.html">3 grid</a></li>
                                  <li><a href="cab-4-grid.html">4 grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >sidebar</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="cab-left-sidebar.html"
                                      >left sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="cab-right-sidebar.html"
                                      >right sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="cab-no-sidebar.html">no sidebar</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >with map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="cab-google-map.html">google map</a>
                                  </li>
                                  <li>
                                    <a href="cab-here-map.html">here map</a>
                                  </li>
                                  <li>
                                    <a href="cab-bing-map.html">bing map</a>
                                  </li>
                                </ul>
                              </li>
                              <li><a href="cab-slider.html">slider</a></li>
                              <li>
                                <a href="cab-not-found.html">not found</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li><a href="cab-booking.html">booking</a></li>
                              <li>
                                <a href="cab-booking-payment.html"
                                  >booking payment</a
                                >
                              </li>
                              <li>
                                <a href="cab-booking-success.html"
                                  >booking success</a
                                >
                              </li>
                              <li>
                                <a href="cab-booking-failed.html"
                                  >booking failed</a
                                >
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="cab-single-detail.html">single detail</a>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">restaurant</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >grid view</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-2-grid.html">2 Grid</a>
                                  </li>
                                  <li>
                                    <a href="restaurant-3-grid.html">3 Grid</a>
                                  </li>
                                  <li>
                                    <a href="restaurant-4-grid.html">4 Grid</a>
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >sidebar</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-left-sidebar.html"
                                      >left sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-right-sidebar.html"
                                      >right sidebar</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-no-sidebar.html"
                                      >no sidebar</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-map.html">google map</a>
                                  </li>
                                  <li>
                                    <a href="restaurant-leaflet-map.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-here-map.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-bing-map.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >map modal</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-map-modal.html"
                                      >google map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-map-leaflet-modal.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-map-here-modal.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-map-bing-modal.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >onclick map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-clickmap.html"
                                      >google map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-clickmap-leaflet.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-clickmap-here.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-clickmap-bing.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title"
                                  >left side map</a
                                >
                                <ul
                                  class="nav-sub-childmenu submenu-content level2"
                                >
                                  <li>
                                    <a href="restaurant-leftmap.html"
                                      >google map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-leftmap-leaflet.html"
                                      >leaflet map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-leftmap-here.html"
                                      >here map</a
                                    >
                                  </li>
                                  <li>
                                    <a href="restaurant-leftmap-bing.html"
                                      >bing map</a
                                    >
                                  </li>
                                </ul>
                              </li>
                              <li>
                                <a href="restaurant-fullwidth.html"
                                  >full width</a
                                >
                              </li>
                              <li>
                                <a href="restaurant-slider.html"
                                  >image slider</a
                                >
                              </li>
                              <li>
                                <a href="restaurant-not-found.html"
                                  >not found</a
                                >
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a
                                  href="restaurant-single-1.html"
                                  target="_blank"
                                  >classic</a
                                >
                              </li>
                              <li>
                                <a
                                  href="restaurant-single-2.html"
                                  target="_blank"
                                  >360 view</a
                                >
                              </li>
                              <li>
                                <a
                                  href="restaurant-single-3.html"
                                  target="_blank"
                                  >image slider</a
                                >
                              </li>
                              <li>
                                <a
                                  href="restaurant-single-4.html"
                                  target="_blank"
                                  >left cart</a
                                >
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul
                              class="nav-sub-childmenu submenu-content level1"
                            >
                              <li>
                                <a href="restaurant-checkout.html">checkout</a>
                              </li>
                              <li>
                                <a href="restaurant-order-failed.html"
                                  >order failed</a
                                >
                              </li>
                              <li>
                                <a href="restaurant-order-success.html"
                                  >order sucess</a
                                >
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="mega-menu">
                        <a href="#" class="nav-link menu-title"> pages</a>
                        <div class="mega-menu-container menu-content">
                          <div class="container">
                            <div class="row">
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>portfolio</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="portfolio-grid-2.html"
                                          >2 grid</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-grid-3.html"
                                          >3 grid</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-grid-4.html"
                                          >4 grid</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-title-2.html"
                                          >2 grid title</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-title-3.html"
                                          >3 grid title</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-title-4.html"
                                          >4 grid title</a
                                        >
                                      </li>
                                      <li>
                                        <a href="masonry-3-grid.html"
                                          >3 masonry</a
                                        >
                                      </li>
                                      <li>
                                        <a href="masonry-4-grid.html"
                                          >4 masonry</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-parallax.html"
                                          >parallax</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-center-slide.html"
                                          >center slides</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-creative-1.html"
                                          >creative 1</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-creative-2.html"
                                          >creative 2</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-creative-3.html"
                                          >creative 3</a
                                        >
                                      </li>
                                      <li>
                                        <a href="portfolio-creative-4.html"
                                          >creative 4</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>blog page</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="blog-left-sidebar.html"
                                          >left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-right-sidebar.html"
                                          >right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-no-sidebar.html"
                                          >no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-creative-left-sidebar.html"
                                          >creative left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-creative-right-sidebar.html"
                                          >creative right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-creative-no-sidebar.html"
                                          >creative no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-left-sidebar.html"
                                          >list left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-right-sidebar.html"
                                          >list right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-no-sidebar.html"
                                          >list no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-masonry-left-sidebar.html"
                                          >masonry left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-masonry-right-sidebar.html"
                                          >masonry right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-masonry-no-sidebar.html"
                                          >masonry no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-list-mix-left-sidebar.html"
                                          >mix list left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-list-mix-right-sidebar.html"
                                          >mix list right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-grid-mix-left-sidebar.html"
                                          >mix grid left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="blog-grid-mix-right-sidebar.html"
                                          >mix grid right sidebar</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>blog detail pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="blog-detail-left-sidebar.html"
                                          >left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-detail-right-sidebar.html"
                                          >right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-detail-no-sidebar.html"
                                          >no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-detail-gallery.html"
                                          >detail with gallery</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-detail-video.html"
                                          >detail with video</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>elements - filter</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a
                                          href="tour-left-sidebar.html"
                                          target="_blank"
                                          >sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="hotel-map.html" target="_blank"
                                          >popup</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="tour-4-grid.html"
                                          target="_blank"
                                          >slide down</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="flight-top-filter.html"
                                          target="_blank"
                                          >top filter</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>elements - breadcrumb</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a
                                          href="hotel-2-grid.html"
                                          target="_blank"
                                          >basic</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="portfolio-grid-2.html"
                                          target="_blank"
                                          >image with effect</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="cab-list-leftsidebar.html"
                                          target="_blank"
                                          >right content</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="flight-right-sidebar.html"
                                          target="_blank"
                                          >only image</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="restaurant-3-grid.html"
                                          target="_blank"
                                          >with searchbar</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="tour-2-grid.html"
                                          target="_blank"
                                          >bird flying</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>other pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="about-us.html">About us 1</a>
                                      </li>
                                      <li>
                                        <a href="about-us-2.html">About us 2</a>
                                      </li>
                                      <li>
                                        <a href="contact-1.html"
                                          >contact us 1</a
                                        >
                                      </li>
                                      <li>
                                        <a href="contact-2.html"
                                          >contact us 2</a
                                        >
                                      </li>
                                      <li>
                                        <a href="contact-3.html"
                                          >contact us 3</a
                                        >
                                      </li>
                                      <li>
                                        <a href="coming-soon-1.html"
                                          >coming soon 1</a
                                        >
                                      </li>
                                      <li>
                                        <a href="coming-soon-2.html"
                                          >coming soon 2</a
                                        >
                                      </li>
                                      <li>
                                        <a href="coming-soon-3.html"
                                          >coming soon 3</a
                                        >
                                      </li>
                                      <li><a href="404.html">404</a></li>
                                      <li><a href="faq.html">FAQ</a></li>
                                      <li><a href="login.html">login</a></li>
                                      <li>
                                        <a href="signup.html">register</a>
                                      </li>
                                      <li class="highlight-link">
                                        <a href="user-dashboard.html"
                                          >user dashboard
                                          <i
                                            class="fa fa-bolt icon-trend"
                                            aria-hidden="true"
                                          ></i
                                        ></a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>Email Template</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a
                                          href="../email-template/offer.html"
                                          target="_blank"
                                          >offer</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="../email-template/confirmation.html"
                                          target="_blank"
                                          >confirmation</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="../email-template/thankyou.html"
                                          target="_blank"
                                          >thank you</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>element pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li class="highlight-link">
                                        <a href="element-image-ratio.html"
                                          >image ratio
                                          <i
                                            class="fa fa-bolt icon-trend"
                                            aria-hidden="true"
                                          ></i
                                        ></a>
                                      </li>
                                      <li>
                                        <a href="element-about.html">about</a>
                                      </li>
                                      <li>
                                        <a href="element-app.html"
                                          >application</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-blog.html">blog</a>
                                      </li>
                                      <li>
                                        <a href="element-button.html">button</a>
                                      </li>
                                      <li>
                                        <a href="element-category.html"
                                          >category</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-date-time.html"
                                          >date & time picker</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-full-banner.html"
                                          >full banner</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-gallery.html"
                                          >gallery</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-others.html"
                                          >other element</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-service.html"
                                          >service</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-subscribe.html"
                                          >subscribe</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-testimonial.html"
                                          >testimonial</a
                                        >
                                      </li>
                                      <li>
                                        <a href="element-title.html">title</a>
                                      </li>
                                      <li>
                                        <a href="element-video.html">video</a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
              <ul class="header-right">
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
                <li class="user user-light">
                  <a href="#">
                    <i class="fas fa-user"></i>
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
    <section class="breadcrumb-section pt-0">
      <img
        src="../assets/images/inner-bg.jpg"
        class="bg-img img-fluid blur-up lazyload"
        alt=""
      />
      <div class="breadcrumb-content">
        <div>
          <h2>마이페이지</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                마이페이지
              </li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="title-breadcrumb">Rica</div>
    </section>
    <!-- breadcrumb end -->

    <!-- section start-->
    <section
      class="small-section dashboard-section bg-inner"
      data-sticky_parent
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
            <div class="pro_sticky_info" data-sticky_column>
              <div class="dashboard-sidebar">
                <div class="profile-top">
                  <div class="profile-image">
                    <img
                      src="../assets/images/avtar/1.jpg"
                      class="img-fluid blur-up lazyload"
                      alt=""
                    />
                  </div>
                  <div class="profile-detail">
                    <h5>사용자</h5>
                    <h6>mark.enderess@mail.com</h6>
                  </div>
                </div>
                <!-- 왼쪽 카테고리 메뉴 -->
                <div class="faq-tab">
                  <ul class="nav nav-tabs" id="top-tab" role="tablist">
                    <li class="nav-item">
                      <a
                        data-bs-toggle="tab"
                        class="nav-link active"
                        href="#dashboard"
                        >메인페이지</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#profile"
                        >프로필수정</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#write"
                        >작성한 글</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#trace"
                        >나의 발자취</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#travel"
                        >여행지 담기</a
                      >
                    </li>
                    <li class="nav-item">
                      <a data-bs-toggle="tab" class="nav-link" href="#inquiry"
                        >작성한 문의 내역</a
                      >
                    </li>
                    <li class="nav-item">
                      <a
                        data-bs-toggle="tab"
                        class="nav-link"
                        href="#one-one inquiries"
                        >1:1 문의</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-9">
            <div class="product_img_scroll" data-sticky_column>
              <div class="faq-content tab-content" id="top-tabContent">
                <div class="tab-pane fade show active" id="dashboard">
                  <div class="dashboard-main">
                    <div class="dashboard-intro">
                      <h5>어서오세요! <span>사용자</span></h5>
                      <p>인사말</p>
                      <div class="complete-profile">
                        <div class="row">
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>작성한 리뷰 개수</h6>
                            </div>
                          </div>
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>작성한 댓글 개수</h6>
                            </div>
                          </div>
                          <div class="col-xl-4">
                            <div class="complete-box">
                              <i class="far fa-check-square"></i>
                              <h6>여행지 담은 개수</h6>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="counter-section">
                      <div class="row">
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 발자취</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 발자취</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 여행지 담기 보기</h5>
                          </div>
                        </div>
                        <div class="col-xl-3 col-sm-6">
                          <div class="counter-box">
                            <h3>게시글 가져오기</h3>
                            <h5>나의 최근 여행지 담기 보기</h5>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-info">
                      <div class="row">
                        <!-- 작성한 리뷰 목록-->
                        <div class="col-md-6">
                          <div class="activity-box">
                            <h6>recent activity</h6>
                            <ul>
                              <li>
                                Paris to Dubai
                                <span>3 days ago</span>
                              </li>
                              <li>
                                Paris to Dubai
                                <span>23 june</span>
                              </li>
                              <li class="blue-line">
                                hotel sea view
                                <span>20 april</span>
                              </li>
                              <li class="yellow-line">
                                Paris To Toulouse
                                <span>12 feb</span>
                              </li>
                              <li>
                                Paris to Dubai
                                <span>14 jan</span>
                              </li>
                              <li class="blue-line">
                                hotel sea view
                                <span>12 jan</span>
                              </li>
                            </ul>
                          </div>
                        </div>

                        <!-- 작성한 댓글 목록-->
                        <div class="col-md-6">
                          <div class="activity-box">
                            <h6>recent activity</h6>
                            <ul>
                              <li>
                                Paris to Dubai
                                <span>3 days ago</span>
                              </li>
                              <li>
                                Paris to Dubai
                                <span>23 june</span>
                              </li>
                              <li class="blue-line">
                                hotel sea view
                                <span>20 april</span>
                              </li>
                              <li class="yellow-line">
                                Paris To Toulouse
                                <span>12 feb</span>
                              </li>
                              <li>
                                Paris to Dubai
                                <span>14 jan</span>
                              </li>
                              <li class="blue-line">
                                hotel sea view
                                <span>12 jan</span>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 프로필 수정 페이지 -->
                <div class="tab-pane fade" id="profile">
                  <div class="dashboard-box">
                    <div
                      class="dashboard-title d-flex justify-content-between align-items-center"
                    >
                      <h4>프로필</h4>
                      <span
                        data-bs-toggle="modal"
                        data-bs-target="#edit-profile"
                        >수정</span
                      >
                    </div>
                    <div class="profile-image mb-4">
                      <img
                        src="../assets/images/avtar/1.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                    </div>
                    <div class="dashboard-detail">
                      <ul class="list-unstyled">
                        <!-- 아이디 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>아이디</span>
                          <span>[사용자 받아오기]</span>
                        </li>
                        <!-- 생년월일 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>생년월일</span>
                          <span>[생일일자 받아오기]</span>
                        </li>
                        <!-- 성별 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>성별</span>
                          <span>[성별 받아오기]</span>
                        </li>
                        <!-- 전화번호 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>전화번호</span>
                          <span>[전화번호 받아오기]</span>
                        </li>
                        <!-- 메일주소 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>메일 주소</span>
                          <span>[메일 주소 가져오기]</span>
                        </li>
                        <!-- 주소 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>주소</span>
                          <span>[주소 가져오기]</span>
                        </li>
                        <!-- 비밀번호 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>비밀번호</span>
                          <span>[비밀번호 주소 가져오기]</span>
                        </li>
                        <!-- 여행지 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>여행지 취향</span>
                          <span>[여행지 취향 받아오기]</span>
                        </li>
                        <!-- 여행 취향 -->
                        <li class="d-flex justify-content-between mb-4">
                          <span>선호 여행 유형</span>
                          <span>[선호 여행 유형 받아오기]</span>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>

                <!-- 작성한 글 -->
                <div class="tab-pane fade" id="write">
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 게시물</h4>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-info">게시물 보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-info">게시물 보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-info">게시물 보기</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 리뷰</h4>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-success">리뷰 보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-success">리뷰 보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-success">리뷰 보기</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>작성한 댓글</h4>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-secondary">댓글보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-secondary">댓글보기</span>
                        </div>
                      </div>
                    </div>
                    <div class="dashboard-detail">
                      <div class="booking-box">
                        <div class="date-box">
                          <span class="day">[요일]</span>
                          <span class="date">[일]</span>
                          <span class="month">[월]</span>
                        </div>
                        <div class="detail-middle">
                          <div class="media">
                            <div class="icon"></div>
                            <div class="media-body">
                              <h6 class="media-heading">[제목]</h6>
                            </div>
                            <div class="media-body">
                              <h6 class="media-heading">[아이디]</h6>
                              <p>order date: <span>20 oct, 2020</span></p>
                            </div>
                          </div>
                        </div>
                        <div class="detail-last">
                          <span class="badge bg-secondary">댓글보기</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 나의 발자취 페이지 -->
                <div class="tab-pane fade" id="trace">
                  <div class="dashboard-box">
                    <div class="row">
                      <div class="dashboard-title col-6">
                        <h4>나의 발자취</h4>
                      </div>
                      <div
                        class="dashboard-title col"
                        style="justify-content: right"
                      >
                        <button>영수증 앱 리뷰</button>
                      </div>
                      <div
                        class="dashboard-title col"
                        style="justify-content: right"
                      >
                        <span
                          data-bs-toggle="modal"
                          data-bs-target="#edit-address"
                          >영수증 리뷰 작성
                        </span>
                      </div>
                    </div>
                    <div
                      class="product-wrapper-grid ratio3_2 special-section grid-box"
                    >
                      <div class="row content grid">
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 여행지 담기 페이지 -->
                <div class="tab-pane fade" id="travel">
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>내가 담은 여행지</h4>
                    </div>
                    <div
                      class="product-wrapper-grid ratio3_2 special-section grid-box"
                    >
                      <div class="row content grid">
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/7.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Beautiful bali</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/8.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>best of europe</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/hotel/room/13.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>sea view hotel</h5>
                                </a>
                                <h6>$250/ night</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/restaurant/environment/3.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>italian restro</h5>
                                </a>
                                <h6>fast food | $25 for two</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/flights/flight-breadcrumb2.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>dubai to paris</h5>
                                </a>
                                <h6>egyptair | $2500</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/12.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>simply mauritius</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/13.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>canadian delight</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/14.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>Egyptian Wonders</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-sm-6 grid-item">
                          <div class="special-box">
                            <div class="special-img">
                              <a href="#">
                                <img
                                  src="../assets/images/tour/tour/15.jpg"
                                  class="img-fluid blur-up lazyload bg-img"
                                  alt=""
                                />
                              </a>
                              <div class="content_inner">
                                <a href="#">
                                  <h5>South Africa</h5>
                                </a>
                                <h6>6N 7D</h6>
                              </div>
                              <div class="top-icon">
                                <a
                                  href="#"
                                  class=""
                                  data-bs-toggle="tooltip"
                                  data-placement="top"
                                  title="Remove from Wishlist"
                                  ><i class="fas fa-times"></i
                                ></a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!--작성한 문의 내역 -->
                <div class="tab-pane fade" id="inquiry">
                  <div class="dashboard-main">
                    <div
                      class="dashboard-intro"
                      style="width: 270px; background-color: #ebebeb"
                    >
                      <h5>문의내역</h5>
                    </div>
                    <div style="display: flex">
                      <!-- 왼쪽 칸, 2:8 비율 -->
                      <div
                      id="chatRoomList"
                      style="
                        width: 300px;
                        height: 500px;
                        border: 1px solid #ebebeb;
                        background-color: #f0f0f0;
                        overflow-y: auto;
                      "
                    >

                        <!-- 내용 추가 -->
                      </div>
                      <!-- 오른쪽 칸 -->
                      <div
                      id="chatContainer"
                      style="
                        width: 700px;
                        height: 500px;
                        border: 1px solid #ebebeb;
                        background-color: #f0f0f0;
                        margin-left: 0;
                        margin-right: 0;
                        overflow-y: auto;
                        padding: 10px;
                        box-sizing: border-box;
                      "
                    >
                        <!-- 내용 추가 -->
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 1:1 문의 페이지-->
                <div class="tab-pane fade" id="one-one inquires">
                  <div class="dashboard-box">
                    <div class="dashboard-title">
                      <h4>delete your accont</h4>
                    </div>
                    <div class="dashboard-detail">
                      <div class="delete-section">
                        <p>Hi <span class="text-bold">Mark Enderess</span>,</p>
                        <p>
                          we are sorry to here you would like to delete your
                          account.
                        </p>
                        <p><span class="text-bold">note:</span></p>
                        <p>
                          deleting your account will permanently remove your
                          profile, personal settings, and all other associated
                          information. once your account is deleted, you will be
                          logged out and will be unable to log back in.
                        </p>
                        <p>
                          if you understand and agree to the above statement,
                          and would still like to delete your account, than
                          click below
                        </p>
                        <a
                          href="#"
                          data-bs-toggle="modal"
                          data-bs-target="#delete-account"
                          class="btn btn-solid"
                          >delete my account</a
                        >
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section end-->

    <!-- footer start -->
    <footer>
      <div class="footer section-b-space section-t-space">
        <div class="container">
          <div class="row order-row">
            <div class="col-xl-2 col-md-6 order-cls">
              <div class="footer-title mobile-title">
                <h5>contact us</h5>
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
                  <p>
                    Lorem Ipsum is simply dummy text of the printing and
                    typesetting industry. Lorem Ipsum has been the industry's
                    standard dummy text ever since the 1500s, when an unknown
                    printer took a galley of type and scrambled it to make a
                    type specimen book. It has survived not only five centuries
                  </p>
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
            <div class="col-xl-2 col-md-3">
              <div class="footer-space">
                <div class="footer-title">
                  <h5>about</h5>
                </div>
                <div class="footer-content">
                  <div class="footer-links">
                    <ul>
                      <li><a href="#">about us</a></li>
                      <li><a href="#">FAQ</a></li>
                      <li><a href="#">login</a></li>
                      <li><a href="#">register</a></li>
                      <li><a href="#">terms & co.</a></li>
                      <li><a href="#">privacy</a></li>
                      <li><a href="#">support</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6">
              <div class="footer-title">
                <h5>our location</h5>
              </div>
              <div class="footer-content">
                <div class="footer-map">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.1583091352!2d-74.11976373946229!3d40.69766374859258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1563449626439!5m2!1sen!2sin"
                    allowfullscreen
                  ></iframe>
                </div>
              </div>
            </div>
            <div class="col-xl-2 col-md-3 order-cls">
              <div class="footer-space">
                <div class="footer-title">
                  <h5>useful links</h5>
                </div>
                <div class="footer-content">
                  <div class="footer-links">
                    <ul>
                      <li><a href="#">home</a></li>
                      <li><a href="#">our vehical</a></li>
                      <li><a href="#">latest video</a></li>
                      <li><a href="#">services</a></li>
                      <li><a href="#">booking deal</a></li>
                      <li><a href="#">emergency call</a></li>
                      <li><a href="#">mobile app</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6">
              <div class="footer-title">
                <h5>new topics</h5>
              </div>
              <div class="footer-content">
                <div class="footer-blog">
                  <div class="media">
                    <div class="img-part">
                      <a href="#"
                        ><img
                          src="../assets/images/cab/blog-footer/1.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>recent news</h5>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and
                        typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book. It has
                        survived not only five centuries
                      </p>
                    </div>
                  </div>
                  <div class="media">
                    <div class="img-part">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>recent news</h5>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and
                        typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book. It has
                        survived not only five centuries
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="sub-footer">
        <div class="container">
          <div class="row">
            <div class="col-xl-6 col-md-6 col-sm-12">
              <div class="footer-social">
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
            </div>
            <div class="col-xl-6 col-md-6 col-sm-12">
              <div class="copy-right">
                <p>
                  copyright 2019 rica by <i class="fas fa-heart"></i> pixelstrap
                </p>
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

    <!-- edit profile modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-profile"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">프로필 수정</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-md-6">
                  <label for="profileImage">프로필 사진</label>
                  <input type="file" class="form-control" id="profileImage" accept="image/*" onchange="previewImage()" />
                  <img id="imagePreview" src="#" alt="프로필 미리보기" style="display: none; max-width: 100%; margin-top: 10px;">
                </div>

              <div class="row">
                <div class="form-group col-md-6">
                  <label for="first">아이디</label>
                  <input
                    type="text"
                    class="form-control"
                    id="first"
                    placeholder="아이디"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="last">비밀번호</label>
                  <input
                    type="text"
                    class="form-control"
                    id="last"
                    placeholder="비밀번호"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="gender">성별</label>
                  <select id="gender" class="form-control">
                    <option selected>선택</option>
                    <option>여성</option>
                    <option>남성</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>생년월일</label>
                  <input
                    class="form-control"
                    placeholder="18 april"
                    id="datepicker"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="inputAddress">주소</label>
                  <input
                    type="text"
                    class="form-control"
                    id="inputAddress"
                    placeholder="주소"
                  />
                </div>
                <div class="form-group col-md-6">
                  <label for="inputCity">메일주소</label>
                  <input type="text" class="form-control" id="inputCity" />
                </div>
                <div class="form-group col-md-6">
                  <label for="inputState">여행지취향</label>
                  <select id="inputState" class="form-control">
                    <option selected>선택</option>
                    <option>관광지</option>
                    <option>음식점</option>
                    <option>숙박</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="inputZip">여행 취향</label>
                  <select id="inputState" class="form-control">
                    <option selected>선택</option>
                    <option>서울</option>
                    <option>인천</option>
                    <option>대전</option>
                    <option>대구</option>
                    <option>광주</option>
                    <option>부산</option>
                    <option>울산</option>
                    <option>세종특별자치시</option>
                    <option>경기도</option>
                    <option>강원특별자치도</option>
                    <option>충청북도</option>
                    <option>충청남도</option>
                    <option>경상북도</option>
                    <option>전라북도</option>
                    <option>전라남도</option>
                    <option>제주도</option>
                  </select>
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              닫기
            </button>
            <button type="button" class="btn btn-solid">변경하기</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit profile modal start -->

    <!-- 영수증 리뷰 모달 -->
    <!-- edit address modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-address"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">영수증 리뷰 등록</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="old">영수증 이미지 파일 업로드</label>
                </div>
                <div
                  class="dropzone"
                  id="singleFileUpload"
                  style="margin-bottom: 10px"
                >
                  <div class="dz-message needsclick">
                    <i class="icon-cloud-up"></i>
                    <h6>Drop files here or click to upload.</h6>
                  </div>
                </div>
                <div class="form-group col-12">
                  <label for="old">사업자번호</label>
                  <input type="text" class="form-control" id="old" />
                </div>
                <div class="form-group col-12">
                  <label for="new">주소</label>
                  <input type="text" class="form-control" id="new" />
                </div>
                <div class="form-group col-12">
                  <label for="comfirm">리뷰 내용</label>
                  <input type="text" class="form-control" id="comfirm" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              취소
            </button>
            <button type="button" class="btn btn-solid">등록하기</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit address modal start -->

    <!-- edit phone no modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-phone"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">change phone no</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="ph-o">old phone no</label>
                  <input type="number" class="form-control" id="ph-o" />
                </div>
                <div class="form-group col-12">
                  <label for="ph-n">enter new phone no</label>
                  <input type="number" class="form-control" id="ph-n" />
                </div>
                <div class="form-group col-12">
                  <label for="ph-c">confirm your phone no</label>
                  <input type="number" class="form-control" id="ph-c" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit phone no modal start -->

    <!-- edit password modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-password"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">change email address</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="row">
                <div class="form-group col-12">
                  <label for="p-o">old password</label>
                  <input type="email" class="form-control" id="p-o" />
                </div>
                <div class="form-group col-12">
                  <label for="p-n">enter new password</label>
                  <input type="email" class="form-control" id="p-n" />
                </div>
                <div class="form-group col-12">
                  <label for="p-c">confirm your password</label>
                  <input type="email" class="form-control" id="p-c" />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- edit password modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="edit-card"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">edit your card</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="name">name on card</label>
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  placeholder="Mark jecno"
                />
              </div>
              <div class="form-group">
                <label for="number">card number</label>
                <input
                  type="text"
                  class="form-control"
                  id="number"
                  placeholder="7451 2154 2115 2510"
                />
              </div>
              <div class="row">
                <div class="form-group col-md-8">
                  <label for="expiry">expiry date</label>
                  <input
                    type="text"
                    class="form-control"
                    id="expiry"
                    placeholder="12/23"
                  />
                </div>
                <div class="form-group col-md-4">
                  <label for="cvv">cvv</label>
                  <input
                    type="password"
                    maxlength="3"
                    class="form-control"
                    id="cvv"
                    placeholder="&#9679;&#9679;&#9679;"
                  />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">update card</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- add card modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="add-card"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">add new card</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="form-group">
                <label for="a-month">card type</label>
                <select id="a-month" class="form-control">
                  <option selected>add new card...</option>
                  <option>credit card</option>
                  <option>debit card</option>
                  <option>debit card with ATM pin</option>
                </select>
              </div>
              <div class="form-group">
                <label for="a-na">name on card</label>
                <input type="text" class="form-control" id="a-na" />
              </div>
              <div class="form-group">
                <label for="a-n">card number</label>
                <input type="text" class="form-control" id="a-n" />
              </div>
              <div class="row">
                <div class="form-group col-md-8">
                  <label for="a-e">expiry date</label>
                  <input type="text" class="form-control" id="a-e" />
                </div>
                <div class="form-group col-md-4">
                  <label for="a-c">cvv</label>
                  <input
                    type="password"
                    maxlength="3"
                    class="form-control"
                    id="a-c"
                  />
                </div>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">add card</button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- add card modal start -->
    <div
      class="modal fade edit-profile-modal"
      id="delete-account"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Account deletion request</h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <p class="text-dark">
              Before you leave, please tell us why you'd like to delete your
              Rica account. This information will help us improve. (optional)
            </p>
            <form>
              <textarea
                class="form-control"
                id="exampleFormControlTextarea1"
                rows="3"
              ></textarea>
            </form>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
            <button type="button" class="btn btn-solid">
              delete my account
            </button>
          </div>
        </div>
      </div>
    </div>
    <!-- edit password modal start -->

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- stick section js -->
    <script src="../assets/js/sticky-kit.js"></script>

    <!-- stick section js -->
    <script src="../assets/js/apexcharts.js"></script>
    <script src="../assets/js/chart.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <!-- Dropzone | 영수증 리뷰 사진 올리기 --> 
    <script>
      Dropzone.autoDiscover = false; // deprecated 된 옵션. false로 해놓는걸 공식문서에서 명시

      const dropzone = new Dropzone("div.dropzone", {
        url: "https://httpbin.org/post",
      });
    </script>

    <script>
      $("#datepicker").datepicker({
        uiLibrary: "bootstrap4",
        format: "dd mmmm yy",
      });

      $(document).ready(function () {
        if ($(window).width() > 991) {
          $(".product_img_scroll, .pro_sticky_info").stick_in_parent();
        }
      });
    </script>

    <script>
      function previewImage() {
        var input = document.getElementById('profileImage');
        var preview = document.getElementById('imagePreview');

        if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
            preview.src = e.target.result;
            preview.style.display = 'block';
          };

          reader.readAsDataURL(input.files[0]);
        }
      }
    </script>


<script>
  // 가상의 채팅방 목록 데이터 (실제로는 서버에서 데이터를 가져와야 합니다)
  const chatRooms = [
    { id: 1, name: '채팅방 1' },
    { id: 2, name: '채팅방 2' },
    { id: 3, name: '채팅방 3' },
    // 추가적인 채팅방 데이터...
  ];

  // 채팅방 목록을 표시하는 함수
  function showChatRooms() {
    const chatRoomList = document.getElementById('chatRoomList');

    // 채팅방 목록을 초기화
    chatRoomList.innerHTML = '';

    // 채팅방 목록을 돌면서 각각의 채팅방을 리스트에 추가
    chatRooms.forEach(chatRoom => {
      const listItem = document.createElement('div');
      listItem.textContent = chatRoom.name;
      listItem.style.padding = '10px';
      listItem.style.borderBottom = '1px solid #ccc';
      listItem.style.cursor = 'pointer';

      // 채팅방 클릭 시 동작을 추가할 수 있습니다.
      listItem.addEventListener('click', () => {
        // 채팅방에 대한 동작 추가
        console.log(`클릭한 채팅방: ${chatRoom.name}`);
      });

      chatRoomList.appendChild(listItem);
    });
  }

  // 페이지 로드 시 채팅방 목록을 표시
  window.onload = showChatRooms;
</script>






  </body>
</html>
