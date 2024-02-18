<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WeeklyReport.jsp</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">
  <!-- 컴포넌트 전용 css -->
  <link rel="stylesheet" href="../../asset/css/component.css">
  <style type="text/css">
  
  /* #csslabel
  {
  	background-image: url("images/ico_css.png");
  	   
  } */
  </style>
 <!-- script -->
  <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/bootstrap.bundle.min.js"></script>
  <script src="../../asset/js/common.js"></script>
</head>
<body >



 <div class="wrapper">

    <!-- 헤더영역 -->
    <div role="header" data-include="../Components/Header.jsp" class="sticky-top"></div> 
    <!-- //헤더영역 -->
    </div>
       
    <section class="m-body-area">
		<div class="container-xl" >
			<div style="text-align: center;" >
				<h1>주간업무보고서</h1>  
				<hr>
				</div>
				<div class="content_tit">
                    <p class="h3">주간업무보고</p>
                    <!-- 브레드크럼블 -->
                    <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
                    <!-- //브레드크럼블 -->
    </div>
    
  			<!-- 작성영역 -->
            <div class="row write-area">
                <div class="col-12 col-sm-4 col-lg-3 write-nav">
                    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
                        <nav class="nav nav-pills flex-column write-nav-con">
                            <a class="nav-link ms-3 my-1" href="#item-1">
                                <p class="h4">제목(주제)</p>
                            </a>
                            <a class="nav-link ms-3 my-1" href="#item-2">
                                <p class="h4">내용</p>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-3">
                                <p class="h4">첨부파일</p>
                            </a>
                        </nav>
                    </nav>
                </div>
	<!-- </div> -->
			<br>
			<br>
			
		<div class="col-12 col-sm-8 col-lg-9 write-content">
		<!-- <div class="bd-example m-0 border-0"> -->
		<div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"  class="scrollspy-example-2" tabindex="0">
			<form>


				<div id="#item-1" class="comp_tit">제목(주제) 
					<input type="text" class="form-control" id="title" required="required" style="width: 450px;">
				</div>

				<div  id="#item-2" class="comp_tit">내용
					<textarea class="form-control" id="content" rows="3" style="width: 450px;" required="required"></textarea>
		        </div>
                	
<br><br><br>
	<div id="#item-3" class="comp_tit ">첨부파일 
		<div class="m-file">
			<label for="formFile" class="form-label">file</label> <input
				class="form-control" type="file" id="formFile">
		</div>
	</div>

	<br><br>

		
		
		
		<button class="btn btn-primary" type="submit">제출</button>
		<a href="/IT_MeetUp/Content/MeetGroup/Workmanage.jsp"><input type="button" class= "btn btn-info"  value="취소"/></a> 
		
		
		</form>

		
      </div>
      </div>
      </div>
    
    </div>
      <!-- 푸터영역 -->
        <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div>
        <!-- //푸터영역 -->
    </section>
    
    
   


    
   
</body>
</html>