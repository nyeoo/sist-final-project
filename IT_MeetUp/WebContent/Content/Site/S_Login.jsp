<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">

</head>

<body>
  <div class="wrapper">

    <!-- 헤더영역 -->
    <!-- <div role="header" data-include="../Components/Header.jsp" class="sticky-top"></div> -->
    <!-- //헤더영역 -->

    <!-- 바디영역 -->
    <!-- <section class="m-body-area">
      <div class="container-xl"> -->

        <!-- 콘텐츠 내용 -->
        <div class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
  
                <div class="d-flex justify-content-center py-4">
                  <a href="index.jsp" class="logo d-flex align-items-center w-auto">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">NiceAdmin</span>
                  </a>
                </div><!-- End Logo -->
  
                <div class="card mb-3">
  
                  <div class="card-body">
  
                    <div class="pt-4 pb-2">
                      <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                      <p class="text-center small">Enter your username & password to login</p>
                    </div>
  
                    <form class="row g-3 needs-validation" novalidate>
  
                      <div class="col-12">
                        <label for="yourUsername" class="form-label">Username</label>
                        <div class="input-group has-validation">
                          <span class="input-group-text" id="inputGroupPrepend">@</span>
                          <input type="text" name="username" class="form-control" id="yourUsername" required>
                          <div class="invalid-feedback">Please enter your username.</div>
                        </div>
                      </div>
  
                      <div class="col-12">
                        <label for="yourPassword" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="yourPassword" required>
                        <div class="invalid-feedback">Please enter your password!</div>
                      </div>
  
                      <div class="col-12">
                        <div class="form-check">
                          <label class="form-check-label" for="rememberMe">
                            <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                            Remember me
                          </label>
                        </div>
                      </div>
                      <div class="col-12">
                        <button class="btn btn-primary w-100" type="submit">Login</button>
                      </div>
                      <div class="col-12">
                        <p class="small mb-0">Don't have account? <a href="pages-register.jsp">Create an account</a></p>
                      </div>
                    </form>
  
                  </div>
                </div>
  
              </div>
            </div>
          </div>
  
        </div>
        
        
      <!-- </div>
    </section> -->
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <!-- <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div> -->
    <!-- //푸터영역 -->

  </div>

  <!-- script -->
  <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/jquery-ui.js"></script>
  <script src="../../asset/js/bootstrap.bundle.min.js"></script>
  <script src="../../asset/js/common.js"></script>
  <script>

  </script>
</body>

</html>