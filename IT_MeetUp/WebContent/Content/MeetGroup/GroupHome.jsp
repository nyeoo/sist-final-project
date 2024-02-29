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
<script src="https://kit.fontawesome.com/81ca059e0e.js"
	crossorigin="anonymous"></script>

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

.progress-bars {
    display: flex;
    flex-direction: column;
    justify-content: center;
    overflow: hidden;
    color: var(--bs-progress-bar-color);
    text-align: center;
    white-space: nowrap;
    background-color: var(--bs-progress-bar-bg);
    transition: var(--bs-progress-bar-transition);
    margin: 10px 5px 10px 5px;
	height: 25px;
}


.weekwork .addsee {
	position: absolute;
	right: 0px;
	top: 15px;
	padding-right: 20px;
}

.job-list {
	margin-top: 10px;
	flex-flow: wrap;
}

.job {
	align-items: center;
	margin-bottom: 10px;
	margin: 15px 30px 15px 0;
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

.job-tag {
	font-size: 14px;
	color: white;
	font-weight: 500;
	border: none;
	min-width: 75px;
}

.member-box {
	align-items: end;
}

.member {
	margin-left: 10px;
	flex-direction: column;
	align-items: center;
	position: relative;
	cursor: pointer;
	flex-shrink: 0;
}

.no-profile {
	font-size: 55px;
	color: #69696B;
	text-shadow: 1px 1px 4px #c1c1c1;
}

.no-profile:hover {
	text-shadow: 2px 2px 6px #c1c1c1;
}

.member-img {
	border-radius: 50%;
	width: 55px;
	height: 55px;
	box-shadow: 1px 1px 6px 0px #c1c1c1;
}

.member-img:hover {
	box-shadow: 2px 2px 9px 0px #c1c1c1;
}

.nickname {
	margin-top: 6px;
	overflow: hidden;
	display: block;
	color: #8e8f92;
	font-size: 14px;
	white-space: nowrap;
	text-align: center;
	text-overflow: ellipsis;
	width: 60px;
}

.crown {
	font-size: 17px;
	color: yellow;
	position: absolute;
	top: -8px;
	left: calc(50% - 33px);
	z-index: 1;
	padding: 5px;
	background-color: black;
	border-radius: 50%;
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


					<div class="groupWon-stacked groupWon-m">
						<div class="intro-body-list groupWon">
							<span class="intro-title">그룹원</span>
							<hr>
							<ul class="d-flex job-list">
								<li class="d-flex job"><span class="tag bg-success job-tag">기획</span>
									<div class="d-flex member-box">
										<div class="d-flex member">
											<i class="fa-solid fa-crown crown"></i> <img
												src="../../asset/images/sub/img_profile.jpg"
												class="member-img" /> <span class="nickname">닉네임이길면어떻</span>
										</div>
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
									</div></li>

								<li class="d-flex job"><span class="tag bg-success job-tag">디자인</span>
									<div class="d-flex member-box">
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
									</div></li>

								<li class="d-flex job"><span class="tag bg-danger job-tag">프론트</span>
									<div class="d-flex member-box">
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
									</div></li>
								<li class="d-flex job"><span class="tag bg-primary job-tag">백엔드</span>
									<div class="d-flex member-box">
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
										<div class="d-flex member">
											<i class="fa-solid fa-circle-user no-profile"></i> <span
												class="nickname">닉네임</span>
										</div>
									</div></li>
							</ul>
						</div>

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

						<!-- <div class="row con-section level">
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
							</div> -->


						<!-- 프로그래스바 -->
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
										<div class="complete">
										<ul>
											<li>
												<!-- <div class="comp_tit02">여러개의 프로그래스바 노출</div> --> <!-- progress-bar-animated: 움직이는 바 형태 -->
												<div class="progress" role="progressbar"
													aria-label="Success example" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars progress-bar-animated bg-success"
														style="width: 25%">회의록 25%</div>
												</div>
												<div class="progress" role="progressbar"
													aria-label="Info example" aria-valuenow="50"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars bg-info text-dark"
														style="width: 50%">산출물 50%</div>
												</div>
												<div class="progress" role="progressbar"
													aria-label="Warning example" aria-valuenow="75"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars bg-warning text-dark"
														style="width: 75%">할당된 업무처리 75%</div>
												</div>
												<div class="progress" role="progressbar"
													aria-label="Danger example" aria-valuenow="100"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars bg-danger" style="width: 100%">기획서
														100%</div>
												</div>
												<div class="progress" role="progressbar"
													aria-label="Danger example" aria-valuenow="100"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars bg-primary" style="width: 100%">요구분석서
														100%</div>
												</div>
												<div class="progress" role="progressbar"
													aria-label="Danger example" aria-valuenow="100"
													aria-valuemin="0" aria-valuemax="100">
													<div class="progress-bars bg-success" style="width: 100%">결과물100%</div>
												</div>
											</li>
										</ul>
										</div>
									</div>
								</div>
							</div>

							<!-- //프로그래스바 -->

							<div class="col-12 col-md-6">
								<div class="card weekwork">
									<div class="addsee">
										<a class="icon" href="WeeklyReportList.jsp">더보기</a>
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
														<a href="WeeklyReport.jsp">작성한 주간업무보고서글이 나오며 버튼 누를 시
															주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
													</div>
												</div>
											</li>
											<li class="row-4">
												<div class="card">
													<div class="card-bottom">
														<!-- 제목 -->
														<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시
															주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
													</div>
												</div>
											</li>
											<li class="row-4">
												<div class="card">
													<div class="card-bottom">
														<!-- 제목 -->
														<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시
															주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
													</div>
												</div>
											</li>
											<li class="row-4">
												<div class="card">
													<div class="card-bottom">
														<!-- 제목 -->
														<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시
															주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
													</div>
												</div>
											</li>
											<li class="row-4">
												<div class="card">
													<div class="card-bottom">
														<!-- 제목 -->
														<a href="javascript:;">작성한 주간업무보고서글이 나오며 버튼 누를 시
															주간업무보고서 상세 페이지로 이동이 나오며 버튼 누를시 상세 페이지로 이동 </a>
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