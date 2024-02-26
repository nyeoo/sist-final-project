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
<title>GroupHome</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">

<style type="text/css">
.intro-body-list {
	margin-bottom: 20px;
	background: white;
	padding: 35px;
	border-radius: 8px;
}

.intro-title {
	font-size: 22px;
	font-weight: 600;
}

.progress-m {
	margin: 30px 20px 30px 20px;
	height: 50px;
}

.progress {
	height: 100%;
}

.weekwork .addsee {
	position: absolute;
	right: 0px;
	top: 15px;
	padding-right: 10px;
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

		<!-- 사이드 영역 -->
		<c:import url="../Components/Side.jsp"></c:import>
		<!-- //사이드 영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="grouphome_title">
					<p class="h3">그룹홈</p>
				</div>

				<div class="container-md">
					<div class="intro-body-list progressbar">
						<span class="intro-title">진행 기간</span>
						<hr>
						<div class="progress-stacked progress-m">
							<div class="progress progress-bar-striped" role="progressbar"
								aria-label="Segment one" aria-valuenow="15" aria-valuemin="0"
								aria-valuemax="100" style="width: 15%">
								<div class="progress-bar">
									<span>분석 15%</span>
								</div>
							</div>
							<div class="progress progress-bar-striped" role="progressbar"
								aria-label="Segment two" aria-valuenow="30" aria-valuemin="0"
								aria-valuemax="100" style="width: 30%">
								<div class="progress-bar bg-success">설계 30%</div>
							</div>
							<div class="progress progress-bar-striped" role="progressbar"
								aria-label="Segment three" aria-valuenow="40" aria-valuemin="0"
								aria-valuemax="100" style="width: 40%">
								<div class="progress-bar bg-info text-dark">구현 40%</div>
							</div>
							<div class="progress progress-bar-striped" role="progressbar"
								aria-label="Segment four" aria-valuenow="15" aria-valuemin="0"
								aria-valuemax="100" style="width: 15%">
								<div class="progress-bar bg-warning text-dark">테스트 15%</div>
							</div>
						</div>
					</div>

					<div class="row con-section level">
						<div class="col-12 col-md-6">
							<div class="card complete">
								<div class="card-body">
									<div class="card-title">
										<p class="h5">
											<span>최소완료조건현황</span>
										</p>
										<hr>
									</div>
									<p>회의록 2/10</p>
									<p>산출물 0/1</p>
									<p>할당된 업무 처리 10/10</p>
									<p>기획서 2/10</p>
									<p>요구분석서 2/10</p>
									<p>결과물 2/10</p>
								</div>

							</div>
						</div>
						<div class="col-12 col-md-6">
							<div class="card weekwork">
								<div class="addsee">
									<a class="icon" href="WeeklyReport.jsp"><i
										class="bi bi-three-dots"></i></a>
								</div>
								<div class="card-body">
									<div class="card-title">
										<p class="h5">
											<span>주간보고업무현황</span>
										</p>
										<hr>
									</div>
									
									<ul>
									<li class="row-4">
										<div class="card">
											<div class="card-bottom">
												<!-- 제목 -->
												<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시 주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
											</div>
										</div>
									</li>
									<li class="row-4">
										<div class="card">
											<div class="card-bottom">
												<!-- 제목 -->
												<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시 주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
											</div>
										</div>
									</li>
									<li class="row-4">
										<div class="card">
											<div class="card-bottom">
												<!-- 제목 -->
												<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시 주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
											</div>
										</div>
									</li>
									</ul>


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