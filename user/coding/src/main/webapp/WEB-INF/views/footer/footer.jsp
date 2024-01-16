<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<body>

  <!-- footer start -->
  <footer class="effect-cls-up footer-bg">
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
                  <!-- 반복 (여행지에서 가장 별점 높은 6개) --> 
                  <div class="col-4">
                    <div class="place rounded5">

                    </div>
                  </div>
                  
                  <div class="col-4">
                    <div class="place rounded5">

                    </div>
                  </div>
                  <div class="col-4">
                    <div class="place rounded5">

                    </div>
                  </div>
                  <div class="col-4">
                    <div class="place rounded5">
 
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="place rounded5">

                    </div>
                  </div>

                  <div class="col-4">
                    <div class="place rounded5">
                      <a href="#">

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
                
                <!-- 좋아요 수 많은 후기 게시판 4개 반복 -->


                <div class="media col-6">
                  <div class="img-part rounded5">
                  </div>
                </div>

                <div class="media col-6">
                  <div class="img-part rounded5">
                  </div>
                </div>

                <div class="media col-6">
                  <div class="img-part rounded5">
                  </div>
                </div>

                <div class="media col-6">
                  <div class="img-part rounded5">
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
 <!-- 가장 별점 높은 6개 값 던지기 가져오기 -->
    <script src="../assets/js/footer.js"></script>
</body>

</html>