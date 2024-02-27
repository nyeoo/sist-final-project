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
<title>CompleteProjectDetail.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">
<link rel="stylesheet" href="../../asset/css/layout_bny.css">

<!-- font-awesome -->
<script src="https://kit.fontawesome.com/81ca059e0e.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<!-- 프로젝트 안내 -->
			<div class="section">
				<div class="container-xl">
					<span class="project-title">지역 기반의 거래로 안전하고 편리한 중고 물품 거래 서비스</span>
					<hr class="title-hr">
					<div class="intro-head">
						<div class="intro-detail">
							<!-- 스와이퍼 -->
							<div class="swiper mySwiper intro-imgbox monitor">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<img src="../../asset/images/sub/img_project.PNG" alt="웹 이미지"
											class="intro-img">
									</div>
									<div class="swiper-slide">
										<img src="../../asset/images/sub/img_project2.PNG" alt="웹 이미지"
											class="intro-img">
									</div>
									<div class="swiper-slide">
										<img src="../../asset/images/sub/img_project3.PNG" alt="웹 이미지"
											class="intro-img">
									</div>
								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
							</div>
							<div class="intro-detail-description">
								<p>국가원로자문회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 대통령은 내우·외환·천재·지변 또는
									중대한 재정·경제상의 위기에 있어서 국가의 안전보장 또는 공공의 안녕질서를 유지하기 위하여 긴급한 조치가 필요하고
									국회의 집회를 기다릴 여유가 없을 때에 한하여 최소한으로 필요한 재정·경제상의 처분을 하거나 이에 관하여 법률의
									효력을 가지는 명령을 발할 수 있다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다. 재의의 요구가
									있을 때에는 국회는 재의에 붙이고, 재적의원과반수의 출석과 출석의원 3분의 2 이상의 찬성으로 전과 같은 의결을
									하면 그 법률안은 법률로서 확정된다.</p>
							</div>
						</div>
					</div>
					<!-- end intro-head -->

				</div>
			</div>
			<!-- // 프로젝트 안내 -->
			<!-- 팀원소개 -->
			<div class="section intro-body">
				<div class="container-md">
					<span class="team">TEAM ·</span> <span class="team-name">당근</span>
					<div class="intro-body-list member-intro">
						<span class="intro-title">팀원 소개</span>
						<hr>
						<ul class="d-flex job-list">
							<!-- 기획 -->
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
							<!-- 디자인 -->
							<li class="d-flex job"><span class="tag bg-danger job-tag">디자인</span>
								<div class="d-flex member-box">
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div></li>
							<!-- 프론트 -->
							<li class="d-flex job"><span class="tag bg-primary job-tag">프론트</span>
								<div class="d-flex member-box">
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div></li>
							<!-- 백엔드 -->
							<li class="d-flex job"><span
								class="tag bg-secondary job-tag">백</span>
								<div class="d-flex member-box">
									<div class="d-flex member none-event">
										<i class="fa-solid fa-circle-user no-profile no-eva"></i> <span
											class="nickname">평가안함</span>
									</div>
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- // 팀원 소개 -->
					
					<!-- 진행기간 -->
					<div class="intro-body-list">
						<div class="period-title">
							<span class="intro-title">진행 기간</span>
							<span class="period">｜2023-01-15 ~ 2023-04-04</span>
						</div>
						<hr>
						<!-- 간트차트 -->
						<div class="gantt">
							<div class="gantt__row gantt__row--months">
								<div class="gantt__row-first"></div>
								<span>Jan</span><span>Feb</span><span>Mar</span><span>Apr</span>
							</div>
							<div class="gantt__row gantt__row--lines" data-month="5">
								<span></span><span></span><span></span><span></span><span></span>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">분석</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 16/27; background-color: #2ecaac;"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="2023-01-15 ~ 2023-01-26" class="stripes">
									</li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">설계</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 27/49; background-color: #ff6252;"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="2023-01-26 ~ 2023-02-17" class="stripes"></li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">구현</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 49/89; background-color: #2ecaac;"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="2023-02-17 ~ 2023-03-29" class="stripes"></li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">테스트</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 89/95; background-color: #54c6f9;"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="2023-03-29 ~ 2023-04-04" class="stripes"></li>
								</ul>
							</div>
						</div>

						<!-- 간트차트 6개월 (테스트) -->
						<!-- <div class="gantt">
							<div class="gantt__row gantt__row--months">
								<div class="gantt__row-first"></div>
								<span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span>
							</div>
							<div class="gantt__row gantt__row--lines" data-month="5">
								<span></span><span></span><span></span><span></span><span></span><span></span><span></span>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">분석</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 1/32; background-color: #2ecaac;" data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="기간">
									</li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">설계</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 32/60; background-color: #ff6252;" data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="기간"
										class="stripes"></li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">구현</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 60/91; background-color: #2ecaac;" data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="기간"></li>
								</ul>
							</div>
							<div class="gantt__row">
								<div class="gantt__row-first">테스트</div>
								<ul class="gantt__row-bars">
									<li style="grid-column: 91/121; background-color: #54c6f9;" data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="기간"></li>
								</ul>
							</div>
						</div>
					</div> -->
					</div>
					<!-- //진행기간 -->

					<!-- 사용한 스킬 -->
					<div class="intro-body-list skill">
						<span class="intro-title">사용 스킬</span>
						<hr>
						<div class="skill-check not-action">
							<div class="form-check skill-item ico_React">
								<label class="form-check-label skill-label"> React </label>
							</div>
						</div>
					</div>
					<!-- //사용한 스킬 -->
					
					<!-- 프로젝트 분석 -->
					<div class="intro-body-list">
						<span class="intro-title">프로젝트 분석</span>
						<hr>
						<!-- 산출물 분포 -->						
						<h5 class="analyze-title">산출물 분포</h5>
						<div class="card shadow">
							<div class="card-body">
								<div style="width: 400px; height: 400px; margin-top: 10px;">
									<canvas id="myChart" width="300" height="300"
										style="display: block; box-sizing: border-box; height: 713px; width: 713px;"></canvas>
								</div>
							</div>
						</div>
						
						<span class="statistics-title">업무 현황(표로 보여주기)</span>
						<span class="statistics-title">업무 기여도(업무완료 갯수를 차트)</span>
					</div>
					<!-- //프로젝트 분석 -->
				</div><!-- end container-md -->
			</div><!-- end section intro-body -->
		</section>
		<!-- //바디영역 -->
		
		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->
	</div><!-- end wrapper -->

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script>
		var swiper = new Swiper(".mySwiper",
		{
			navigation :
			{
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
		});
	</script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script>
		const ctx = document.getElementById('myChart');

		var myChart = new Chart(ctx,
		{
			type : 'doughnut',
			data :
			{
				labels : [ '산출물1', '산출물2', '산출물3' ],
				datasets : [
				{
					data : [ 40, 60, 70 ],
					backgroundColor : [ '#9DCEFF', '#F2F3F6', 'blue' ],
					borderWidth : 0,
					scaleBeginAtZero : true,
				} ],
				type : 'pointLabel',
			},
			options :
			{
				cutoutPercentage: 80,
				plugins :
				{
					legend :
					{
						labels :
						{
							// This more specific font property overrides the global property
							font :
							{
								size : 14
							},
							usePointStyle : true,
							padding : 30,
						},
						position : "bottom",

					}
				}
			}
		});
		
		Chart.defaults.elements.arc.borderWidth = 1;
	</script>
</body>

</html>


