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
  <title>PortfolioDetail</title>
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
    <c:import url="../Components/Header.jsp"></c:import>
    <!-- //헤더영역 -->

    <!-- 바디영역 -->
    <section class="m-body-area">
      <div class="container-xl">

        <div class="content_tit">
          <p class="h3">포트폴리오 상세</p>
          <!-- 브레드크럼블 -->
          <c:import url="../Components/Breadcrumb.jsp"></c:import>
          <!-- //브레드크럼블 -->
        </div>
        
        <!-- 포트폴리오 상세 -->
        
        
        <!-- //포트폴리오 상세 -->
        
      </div>
    </section>
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <c:import url="../Components/Footer.jsp" ></c:import>
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