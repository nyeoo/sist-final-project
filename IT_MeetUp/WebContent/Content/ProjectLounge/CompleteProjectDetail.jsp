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
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_bny.css">

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
					<span class="project-title">${project.title }</span>
					<hr class="title-hr">
					<div class="intro-head">
						<div class="intro-detail">
							<!-- 스와이퍼 -->
							<div class="swiper mySwiper intro-imgbox monitor">
								<div class="swiper-wrapper">
									<c:if test="${not empty project.img1}">
										<div class="swiper-slide">
											<img src="<%=cp %>/${project.img1}" alt="웹 이미지"
												class="intro-img">
										</div>
									</c:if>
									<c:if test="${not empty project.img2}">
										<div class="swiper-slide">
											<img src="<%=cp %>/${project.img2}" alt="웹 이미지"
												class="intro-img">
										</div>
									</c:if>
									<c:if test="${not empty project.img3}">
										<div class="swiper-slide">
											<img src="<%=cp %>/${project.img3}" alt="웹 이미지"
												class="intro-img">
										</div>
									</c:if>
									<c:if
										test="${empty project.img1 && empty project.img2 && empty project.img3}">
										<div class="swiper-slide">
											<img src="<%=cp %>/asset/images/sub/img_noImg.png" alt="웹 이미지"
												class="intro-img">
										</div>
									</c:if>
								</div>
								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
							</div>
							<div class="intro-detail-description">
								<p>${project.content }</p>
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
					<span class="team">TEAM ·</span><span class="team-name">${project.teamName}</span>
					<div class="intro-body-list member-intro">
						<span class="intro-title">팀원 소개</span>
						<hr>
						<ul class="d-flex job-list">
							<!-- 기획 -->
							<li class="d-flex job"><span class="tag bg-success job-tag">기획</span>
								<div class="d-flex member-box">
									<div class="d-flex member">
										<i class="fa-solid fa-crown crown"></i><img
											src="<%=cp%>/asset/images/sub/img_profile.jpg"
											class="member-img" /> <span class="nickname">닉네임이길면어떻</span>
									</div>
								</div></li>
							<!-- 디자인 -->
							<li class="d-flex job"><span class="tag bg-danger job-tag">디자인</span>
								<div class="d-flex member-box">
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile-lg"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div></li>
							<!-- 프론트 -->
							<li class="d-flex job"><span class="tag bg-primary job-tag">프론트</span>
								<div class="d-flex member-box">
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile-lg"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div></li>
							<!-- 백엔드 -->
							<li class="d-flex job"><span
								class="tag bg-secondary job-tag">백</span>
								<div class="d-flex member-box">
									<div class="d-flex member none-event">
										<i class="fa-solid fa-circle-user no-profile-lg no-eva"></i> <span
											class="nickname">팀원</span>
									</div>
									<div class="d-flex member">
										<i class="fa-solid fa-circle-user no-profile-lg"></i> <span
											class="nickname">닉네임</span>
									</div>
								</div></li>
						</ul>
					</div>
					<!-- // 팀원 소개 -->

					<!-- 사용한 스킬 -->
					<div class="intro-body-list skill">
						<span class="intro-title">사용 스킬</span>
						<hr>
						<div class="skill-check not-action">
							<c:forEach var="skill" items="${processedSkills }">
							<div class="form-check skill-item ${skill.skCode}">
								<label class="form-check-label skill-label">${skill.skName }</label>
							</div>
							</c:forEach>
						</div>
					</div>
					<!-- //사용한 스킬 -->

					<!-- 진행기간 -->
					<div class="intro-body-list">
						<div class="period-title">
							<span class="intro-title">진행 기간</span> <span class="period">｜${period.startDate}
								~ ${period.endDate}</span>
						</div>
						<hr>
						<!-- 간트차트 -->
						${ganttChart}

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


					<!-- 프로젝트 분석 -->
					<div class="intro-body-list">
						<span class="intro-title">프로젝트 분석 및 통계</span>
						<hr>
						<div class="analyze">
							<!-- 통계 -->
							<div class="w-100 mb-5 mt-1">
								<h5 class="analyze-title">
									통계<i class="bi bi-question-circle-fill"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="프로젝트 활동에 대한 통계자료"></i>
								</h5>
								<div class="d-flex justify-content-between flex-nowrap">
									<div class="card shadow py-2 statistics-card">
										<div class="card-body col">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">회의</div>
											<div class="mb-0 h3 text-center">${minutesCount}회</div>
										</div>
									</div>
									<div class="card shadow py-2 statistics-card">
										<div class="card-body col">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">업무할당</div>
											<div class="mb-0 h3 text-center">${assignmentCount}건</div>
										</div>
									</div>
									<div class="card shadow py-2 statistics-card">
										<div class="card-body col">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">업무보고</div>
											<div class="mb-0 h3 text-center">${reportCount}건</div>
										</div>
									</div>
									<div class="card shadow py-2 statistics-card">
										<div class="card-body col">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1 text-center">완료된
												업무</div>
											<div class="mb-0 h3 text-center">${taskCount}건</div>
										</div>
									</div>
								</div>
							</div>
							<div class="w-100 mb-5 mt-1 chart">
								<!-- 산출물 분포 -->
								<div class="analyze-box">
									<h5 class="analyze-title">
										산출물 분포<i class="bi bi-question-circle-fill"
											data-bs-toggle="tooltip" data-bs-placement="top"
											data-bs-custom-class="custom-tooltip"
											data-bs-title="업무완료에 따른 산출물 개수"></i>
									</h5>
									<div class="card shadow analyze-card">
										<div class="card-body"
											style="max-width: 600px; height: 100%; margin-top: 10px;">
											<canvas id="outputChart" width="540" height="370"
												style="display: block; box-sizing: border-box; height: 100%; width: 100%;"></canvas>
										</div>
									</div>
								</div>
								<div class="analyze-box">
									<h5 class="analyze-title">
										업무 기여도<i class="bi bi-question-circle-fill"
											data-bs-toggle="tooltip" data-bs-placement="top"
											data-bs-custom-class="custom-tooltip"
											data-bs-title="팀원별 완료한 업무 개수"></i>
									</h5>
									<div class="card shadow analyze-card">
										<div class="card-body"
											style="max-width: 600px; height: 100%; margin-top: 10px;">
											<canvas id="contributionChart" width="540" height="370"
												style="display: block; box-sizing: border-box; height: 100%; width: 100%;"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="w-100 mb-5 mt-1">
								<h5 class="analyze-title">
									업무 결과표<i class="bi bi-question-circle-fill"
										data-bs-toggle="tooltip" data-bs-placement="top"
										data-bs-custom-class="custom-tooltip"
										data-bs-title="일정단계별 업무표"></i>
								</h5>
								<table class="table">
									<thead>
										<tr>
											<th width="12%"></th>
											<th scope="col" width="24%" class="text-center">산출물</th>
											<th scope="col" width="30%" class="text-center">기간</th>
											<th scope="col" width="18%" class="text-center">담당자</th>
											<th scope="col" width="18%" class="text-center">사용스킬</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="2" scope="row" class="text-center">분석</th>
											<td class="text-center">기획안</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원1</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<td class="text-center">요구분석</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원2</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<th rowspan="2" scope="row" class="text-center">설계</th>
											<td class="text-center">스토리보드</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원3</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<td class="text-center">순서도</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원1</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<th rowspan="2" scope="row" class="text-center">구현</th>
											<td class="text-center">프론트개발</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원2</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<td class="text-center">백엔드개발</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원3</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<th rowspan="2" scope="row" class="text-center">테스트</th>
											<td class="text-center">피드백</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원1</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
										<tr>
											<td class="text-center">QA</td>
											<td class="text-center">2024.03.15 ~ 2024.03.17</td>
											<td class="text-center">팀원2</td>
											<td><div class="language-box justify-content-center">
													<div class="badge-language ico_Svelte"
														data-bs-toggle="tooltip" data-bs-placement="top"
														data-bs-custom-class="custom-tooltip" data-bs-title="스킬이름"></div>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- //프로젝트 분석 -->
				</div>
				<!-- end container-md -->
			</div>
			<!-- end section intro-body -->
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->
	</div>
	<!-- end wrapper -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
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
		const opc = document.getElementById('outputChart');
		const cc = document.getElementById('contributionChart');

		var outputChart = new Chart(opc,
		{
			type : 'doughnut',
			data :
			{
				labels : [ '산출물1', '산출물2', '산출물3' ],
				datasets : [
				{
					data : [ 30, 60, 40 ],
					backgroundColor : [ '#9DCEFF', '#F2F3F6', 'blue' ],
					borderWidth : 0,
					scaleBeginAtZero : true,
				} ],
				type : 'pointLabel',
			},
			options :
			{
				responsive : false,
				cutoutPercentage : 80,
				plugins :
				{
					legend :
					{
						labels :
						{
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

		var contributionChart = new Chart(cc,
		{
			type : 'polarArea',
			data :
			{
				labels : [ '팀원1', '팀원2', '팀원3', '팀원4', '팀원5', '팀원6' ],
				datasets : [
				{
					data : [ 25, 14, 16, 21, 21, 12 ],
					backgroundColor : [ '#FF9AA2', '#FFB7B2', '#FFDAC1',
							'#E2F0CB', '#B5EAD7', '#C7CEEA' ],
				//borderWidth : 0,
				//scaleBeginAtZero : true,
				} ],
				type : 'pointLabel',
			},
			options :
			{
				responsive : false,
				cutoutPercentage : 80,
				plugins :
				{
					legend :
					{
						labels :
						{
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
	</script>
</body>

</html>


