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
                        <a href="/touro/tour" class="nav-link">Tour</a>
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
                <!-- 세션이 비어 있으면 로그인 버튼으로 -->
                <c:if test="${empty sessionScope.loggedInUser}">
                  <li class="user user-light rounded5">
                    <a href="/user/login">
                      <i class="fas fa-user"> 로그인</i>
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
  </body>
</html>
