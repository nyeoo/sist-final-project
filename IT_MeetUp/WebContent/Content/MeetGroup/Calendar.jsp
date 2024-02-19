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
<title>Calendar</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">

<style type="text/css">
	.datepicker{display: inline-block; width:83%;}

	.workSet .form-check {
	    display: inline-block;
		margin-right: 10px;
		margin-bottom: 10px;
		float: right;
	}

</style>

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="content_tit">
					<p class="h3">MeetUp Calendar</p>
					<hr>
				</div>

				<div class="workSet">
					<div class="form-check">
						<label class="form-check-label" for="totWork"> 
						<input
							class="form-check-input" type="radio" name="work" id="totWork"
							checked="checked"> 전체 업무 보기
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label" for="indiWork"> <input
							class="form-check-input" type="radio" name="work" id="indiWork">
							개인 업무 보기
						</label>
					</div>
				</div>


			</div>
			<div class="datepicker calendar-datepicker"></div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<div role="footer" data-include="../Components/Footer.jsp"
			class="mt-auto"></div>
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