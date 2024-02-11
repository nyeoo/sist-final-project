<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark m-header-area" aria-label="Fifth navbar example">
  <div class="container-xl">
    <!-- 로고 -->
    <a class="navbar-brand" href="#">Meet Up</a>

    <!-- mob 메뉴 버튼 -->
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarsExample05"
      aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- 메뉴영역 -->
    <div class="offcanvas offcanvas-end text-bg-dark" id="navbarsExample05">
      <div class="offcanvas-header">
        <!-- (mob) 사이드 메뉴 제목 -->
        <h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel"> </h5>
        <!-- 닫기버튼 -->
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>

      <!-- (mob) 사이드 메뉴 & (pc) 대메뉴 -->
      <div class="offcanvas-body">
        <ul class="navbar-nav me-auto mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="#">홈</a>
            <!-- [안내] nav-link: 
                ㄴ 활성화 -> .active 
                ㄴ 비활성화 -> .disabled & aria-disabled="true" -->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">모집공고작성</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">프로젝트
              라운지</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">모집공고보기</a></li>
              <li><a class="dropdown-item" href="#">완료된 프로젝트</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link">Meet 그룹</a>
          </li>
        </ul>

        <!-- 검색영역 -->
        <!-- <form role="search" class="me-3">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
          </form> -->
        <!-- //검색영역 -->

        <!-- 알림 & 개인계정 -->
        <div class="d-flex personal-box">
          <!-- 알림 -->
          <ul class="navbar-nav me-auto me-2 mb-lg-0">
            <li class="nav-item dropdown list-group">
              <a class="nav-link nav-icon ico-ball" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-bell-fill"></i><span class="blind">알림</span>
                <span class="badge bg-primary badge-number">4</span>
              </a>
              <ul class="dropdown-menu dropdown-menu-end notifications">
                <li class="notification-item">
                  <i class="bi bi-exclamation-circle text-warning"></i>
                  <div>
                    <h4>Lorem Ipsum</h4>
                    <p>Quae dolorem earum veritatis oditseno</p>
                    <p>30 min. ago</p>
                  </div>
                </li>
    
                <li>
                  <hr class="dropdown-divider">
                </li>
    
                <li class="notification-item">
                  <i class="bi bi-x-circle text-danger"></i>
                  <div>
                    <h4>Atque rerum nesciunt</h4>
                    <p>Quae dolorem earum veritatis oditseno</p>
                    <p>1 hr. ago</p>
                  </div>
                </li>
    
                <li>
                  <hr class="dropdown-divider">
                </li>
                
                <li class="notification-item">
                  <i class="bi bi-check-circle text-success"></i>
                  <div>
                    <h4>Sit rerum fuga</h4>
                    <p>Quae dolorem earum veritatis oditseno</p>
                    <p>2 hrs. ago</p>
                  </div>
                </li>
                
                <li>
                  <hr class="dropdown-divider">
                </li>
                
                <li class="dropdown-footer">
                  <a href="#">Show all notifications</a>
                </li>
              </ul>
            </li>
          </ul>
          <!-- //알림 -->

          <!-- 개인계정 영역 -->
          <div class="flex-shrink-0 dropdown m-avator">
            <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle"
              data-bs-toggle="dropdown" aria-expanded="false">
              <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
            </a>
            <ul class="dropdown-menu dropdown-menu-end text-small shadow">
              <li class="dropdown-header">
                <h6>닉네임</h6>
                <span>@아이디</span>
              </li>
              <li><a class="dropdown-item" href="#">마이페이지</a></li>
              <li><a class="dropdown-item" href="#">네임카드</a></li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">로그아웃</a></li>
            </ul>
          </div>

          <!-- 로그인, 회원가입 -->
          <div class="d-flex m-login">
            <button type="button" class="btn btn-outline-primary me-2">Login</button>
            <button type="button" class="btn btn-primary">Sign-up</button>
          </div>
          <!-- //로그인, 회원가입 -->

          <!-- //개인계정영역 -->
        </div>
        <!-- //알림 & 개인계정 -->
      </div>
      <!-- //(mob) 사이드 메뉴 & (pc) 대메뉴 -->
    </div>
    <!-- //메뉴영역 -->
</nav>