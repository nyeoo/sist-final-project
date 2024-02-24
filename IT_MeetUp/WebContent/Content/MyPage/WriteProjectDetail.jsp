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
<title>ProjectDetail.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">

<style type="text/css">
.aaa {
	margin-top: 20px;
	text-align: right;
}

.project-details p {
	font-size: 20px;
}

.tag {
	border-radius: 30px;
	text-align: center;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	height: 35px;
	margin-right: 4px;
	padding-right: 13px;
	padding-left: 13px;
	color: #121213;
	font-size: 15px;
	line-height: 1.13em;
	letter-spacing: -.4px;
	border: 1px solid #d0d1d4;
	background-color: #fff;
	margin-bottom: 5px;
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
					<p class="h3">모집 공고 상세 정보</p>
					<br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<div class="row">
					<div class="my-detail">
						<div class="tab-content" id="nav-tabContent">
							<div class="container">
								<h1>어쩌구저쩌구 프로젝트</h1>
								<div class="aaa">
									<a href="UpdateProjectDetail.jsp"><button class="btn btn-primary">수정</button></a>
	          						<button class="btn btn-danger">삭제</button>
									<a href="ApplyManagement.jsp"><button type="button"
											class="btn btn-primary">목록으로 가기</button></a>
								</div>
								<hr>

								<div class="row">
							        <div class="col-md-6">
							            <div class="project-details">
							                <p><strong>번호:</strong> 프로젝트 번호 입력</p>
							                <p><strong>모임 방식:</strong> 온/오프라인</p>
							                <p><strong>인원:</strong> 5명</p>
							                <p><strong>모집 분야:</strong> 웹 개발, 프론트, 백, 디자인</p>
							            </div>
							        </div>
							        <div class="col-md-6">
							            <div class="project-details">
							                <p>
							                	<strong>사용 언어:</strong> 
							                	<span class="tag">HTML</span>
												<span class="tag">CSS</span> 
												<span class="tag">JavaScript</span>
											</p>
							                <p><strong>시작일:</strong> 2024년 03월 01일</p>
							                <p><strong>종료일:</strong> 2024년 06월 30일</p>
							                <p><strong>예상 기간:</strong> 4개월</p>
							            </div>
							        </div>
							    </div>
							</div>
							<hr>
							<div class="row mt-4">
							    <div class="col-md-12">
							        <div class="project-notice">
							            <h1>프로젝트 참여자를 구합니다! 관심 있으신 분은 지금 바로 지원해주세요!</h1>
							        </div>
							    </div>
							</div>
						</div>
					</div>
				</div>
			</div>
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