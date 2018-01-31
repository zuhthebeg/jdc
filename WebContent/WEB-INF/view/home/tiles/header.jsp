<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-info">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="/JDC/home/main">
             <img src="/JDC/resource/bootstrap/assets/img/logo_full.png" alt="Jcreative logo" width="90" height="59">
            </a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav pull-right">
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">회사정보 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class=""><a href="/JDC/home/project/solution">학회솔루션</a></li>
                    <li class=""><a href="/JDC/home/about">기술력</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">학회 솔루션 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class=""><a href="/JDC/home/project/solution/cms">학술대회 관리 시스템</a></li>
                    <li class=""><a href="/JDC/home/project/solution/jms">논문 투고 심사 관리 시스템</a></li>
                    <li class=""><a href="#">학회 회장 선거 시스템</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="${pageContext.request.contextPath}/home/project/rnd">연구/개발 <b class="caret"></b></a>
                  <!-- <ul class="dropdown-menu">
                    <li class=""><a href="#">교육용 과학언어 분석 시스템</a></li>
                    <li class=""><a href="#">개발자 디버깅 센터</a></li>
                  </ul> -->
                </li>
                <!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">서비스 <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li class=""><a href="#">강원지부 학술대회 사이트</a></li>
                    <li class=""><a href="#">정보과학회 논문 투고 심사</a></li>
                    <li class=""><a href="#">정보과학회 회장 선거 시스템</a></li>
                  </ul>
                </li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->

      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->