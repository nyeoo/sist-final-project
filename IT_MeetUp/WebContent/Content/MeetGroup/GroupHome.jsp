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
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_lhs.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 사이드 영역 -->
		<c:import url="../Components/Side.jsp"></c:import>
		<!-- //사이드 영역 -->
		<!-- 바디영역 -->


		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="content_tit">
					<p class="h3">그룹홈</p>
					<hr>
				</div>

				<div class="section grouphome">
					<!-- 내정보 -->
					<div class="row con-section">
						<div class="col-md-8 complete">

							<!-- 대시보드 상단 왼쪽 -->
							<div class="row">

								<!-- 최소완료조건 -->
								<div class="col-12 gh-min-completion">
									<div class="row">
										<!-- 회의록 -->
										<div class="col-3 level-con level-info">
											<div class="card completebody">
												<div class="card-body">
													<div
														class="card-title d-flex align-items-start justify-content-between">
														<div class="avatar flex-shrink-0">
															<span class="fw-semibold d-block mb-1"><span
																data-bs-toggle="tooltip" data-bs-placement="top"
																data-bs-title="최소 4건">회의록 <i
																	class="bi bi-question-circle"></i></span></span>
															<div class="card-title mb-2">
																<span>${meetCount == null ? 0 : meetCount}</span>/4
															</div>
														</div>
													</div>
													<div class="level-bottom">
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<div class="progress-bars bg-primary"
																style="width: ${(meetCount >= 1 ? 25 : 0) + (meetCount >= 2 ? 25 : 0) + (meetCount >= 3 ? 25 : 0) + (meetCount >= 4 ? 25 : 0)}%">
																회의록 ${meetCount >= 1 ? '25%' : '0%'}</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- //회의록 -->

										<!-- 순서도 -->
										<div class="col-3 level-con level-info">
											<div class="card completebody">
												<div class="card-body">
													<div
														class="card-title d-flex align-items-start justify-content-between">
														<div class="avatar flex-shrink-0">
															<span class="fw-semibold d-block mb-1"><span
																data-bs-toggle="tooltip" data-bs-placement="top"
																data-bs-title="최소 1건">순서도 <i
																	class="bi bi-question-circle"></i></span></span>
															<div class="card-title mb-2">
																<span>${flowchartCount == null ? 0 : flowchartCount}</span>/1
															</div>
														</div>
													</div>
													<div class="level-bottom">
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<div class="progress-bars bg-danger"
																style="width: ${flowchartCount >= 1 ? '100%' : '0%'}">
																순서도 ${flowchartCount >= 1 ? '100%' : '0%'}</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- //순서도 -->

										<!-- 기획서 -->
										<div class="col-3 level-con level-info">
											<div class="card completebody">
												<div class="card-body">
													<div
														class="card-title d-flex align-items-start justify-content-between">
														<div class="avatar flex-shrink-0">
															<span class="fw-semibold d-block mb-1"><span
																data-bs-toggle="tooltip" data-bs-placement="top"
																data-bs-title="최소 1건">기획서 <i
																	class="bi bi-question-circle"></i></span></span>
															<div class="card-title mb-2">
																<span>${planCount == null ? 0 : planCount}</span>/1
															</div>
														</div>
													</div>
													<div class="level-bottom">
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<div class="progress-bars bg-success"
																style="width: ${planCount >= 1 ? '100%' : '0%'}">
																기획서 ${planCount >= 1 ? '100%' : '0%'}</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- //기획서 -->

										<!-- 요구분석서 -->
										<div class="col-3 level-con level-info">
											<div class="card completebody">
												<div class="card-body">
													<div
														class="card-title d-flex align-items-start justify-content-between">
														<div class="avatar flex-shrink-0">
															<span class="fw-semibold d-block mb-1"><span
																data-bs-toggle="tooltip" data-bs-placement="top"
																data-bs-title="최소 1건">요구분석서 <i
																	class="bi bi-question-circle"></i></span></span>
															<div class="card-title mb-2">
																<span>${requestCount == null ? 0 : requestCount}</span>/1
															</div>
														</div>
													</div>
													<div class="level-bottom">
														<div class="progress" role="progressbar"
															aria-label="요구분석서 진행 상태"
															aria-valuenow="${requestCount >= 1 ? 100 : 0}"
															aria-valuemin="0" aria-valuemax="100">
															<div class="progress-bars bg-info"
																style="width: ${requestCount >= 1 ? '100%' : '0%'}">
																요구분석서 ${requestCount >= 1 ? '100%' : '1%'}</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- //요구분석서 -->
									</div>
								</div>
								<!-- //최소완료조건 -->

								<!-- 주간업무보고현황 -->
								<div class="col-md-12 my-user gh-weekwork">

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

											<table class="table weeklyRepTable">
												<thead>
													<tr>
														<th>번호</th>
														<th>제목</th>
														<th>내용</th>
														<th>작성일</th>
														<th>작성자</th>
													</tr>
												</thead>
												<tbody style="text-align: center;">
													<c:forEach var="weeklyList" items="${weeklyReportList }">
														<tr>
															<td><strong>${weeklyList.wrNumber }</strong></td>
															<td>
																<div class="user-info-container">${weeklyList.wrTitle }</div>
															</td>
															<td
																style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${weeklyList.wrContent }</td>
															<td>${weeklyList.wrDate }</td>
															<td><span class="badge bg-label-primary me-1">${weeklyList.wrPerson }</span>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>

									</div>

								</div>
								<!-- //주간업무보고현황 -->

							</div>
							<!-- //대시보드 상단 왼쪽 -->

						</div>



						<div class="col-md-4 gh-namecard">
							<!-- 그룹원 -->
							<div class="card">
								<div class="card-body pt-3">
									<form>
										<div class="row">
											<label for="myId" class="col-12 col-form-label">그룹원</label>
											<div class="col-12">
												<div class="intro-body-list groupWon">
													<ul class="d-flex job-list">
														<li class="d-flex job"><span
															class="tag bg-success job-tag">기획</span>
															<div class="d-flex member-box">
																<c:forEach var="groupHomeItem" items="${groupHomePlan }">
																	<div class="d-flex member">
																		<a href="../MyPage/NameCard.jsp"><i
																			class="fa-solid fa-crown crown"></i> <img
																			src="<%=cp%>/asset/images/sub/img_profile.jpg"
																			class="member-img" /> <span class="nickname">${groupHomeItem.piNickName }</span>
																		</a>
																	</div>
																</c:forEach>
															</div></li>

														<li class="d-flex job"><span
															class="tag bg-primary job-tag">디자인</span>
															<div class="d-flex member-box">
																<c:forEach var="groupHomeItem"
																	items="${groupHomeDesign }">
																	<div class="d-flex member">
																		<i class="fa-solid fa-circle-user no-profile"></i> <span
																			class="nickname">${groupHomeItem.piNickName }</span>
																	</div>
																</c:forEach>
															</div></li>
														<li class="d-flex job"><span
															class="tag bg-danger job-tag">프론트</span>
															<div class="d-flex member-box">
																<c:forEach var="groupHomeItem"
																	items="${groupHomeFront }">
																	<div class="d-flex member">
																		<i class="fa-solid fa-circle-user no-profile"></i> <span
																			class="nickname">${groupHomeItem.piNickName }</span>
																	</div>
																</c:forEach>
															</div></li>
														<li class="d-flex job"><span
															class="tag bg-info job-tag">백엔드</span>
															<div class="d-flex member-box">
																<c:forEach var="groupHomeItem" items="${groupHomeBack }">
																	<div class="d-flex member">
																		<i class="fa-solid fa-circle-user no-profile"></i> <span
																			class="nickname">${groupHomeItem.piNickName }</span>
																	</div>
																</c:forEach>
															</div></li>
													</ul>
												</div>
											</div>
										</div>

									</form>
								</div>
							</div>
							<!-- //그룹원 -->
						</div>

					</div>
					
					<!-- 진행기간 -->
					<div class="row con-section level">
						<div class="card">
							<div class="intro-body-list progressbar">
								<c:forEach var="progressItem" items="${progressPeriod }">
									<span class="intro-title">진행 기간</span>
									<span class="period">${progressItem.start } ~
										${progressItem.end } </span>
								</c:forEach>
								<hr>
								<div class="progress-stacked progress-m">
									<div class="progress progress-bar-striped" role="progressbar"
										aria-label="Segment one" aria-valuenow="15" aria-valuemin="0"
										aria-valuemax="100" style="width: ${analyzePercent }%">
										<div class="progress-bar">
											<span>분석 ${analyzePercent }%</span>
										</div>
									</div>
									<div class="progress progress-bar-striped" role="progressbar"
										aria-label="Segment two" aria-valuenow="30" aria-valuemin="0"
										aria-valuemax="100" style="width: ${designPercent }%">
										<div class="progress-bar bg-success">설계 ${designPercent }%</div>
									</div>
									<div class="progress progress-bar-striped" role="progressbar"
										aria-label="Segment three" aria-valuenow="40"
										aria-valuemin="0" aria-valuemax="100"
										style="width: ${avatarPercent }%">
										<div class="progress-bar bg-info text-dark">구현
											${avatarPercent }%</div>
									</div>
									<div class="progress progress-bar-striped" role="progressbar"
										aria-label="Segment four" aria-valuenow="15" aria-valuemin="0"
										aria-valuemax="100" style="width: ${testPercent }%">
										<div class="progress-bar bg-warning text-dark">테스트
											${testPercent }%</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- 진행기간 -->
				</div>
			</div>
		</section>
	</div>
	<!-- //바디영역 -->

	<!-- 푸터영역 -->
	<div role="footer" data-include="../Components/Footer.jsp"
		class="mt-auto"></div>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script src="https://kit.fontawesome.com/81ca059e0e.js"
	crossorigin="anonymous"></script>
	<script>
		
	</script>
</body>

</html>