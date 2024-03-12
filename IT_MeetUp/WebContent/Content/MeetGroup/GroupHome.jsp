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
								<div class="col-12 gh-min-completion group-complet">
									<div class="row">
										<!-- 회의록 -->
										<div class="col-12 level-con level-info report">
											<div class="card completebody">
												<div class="card-body">
													<div
														class="card-title d-flex align-items-start justify-content-between">
														<div class="avatar flex-shrink-0">
															<span class="fw-semibold d-block mb-1"><span
																data-bs-toggle="tooltip" data-bs-placement="top"
																data-bs-title="최소 4건">단계별회의록 <i
																	class="bi bi-question-circle"></i></span></span>
															<div class="card-title mb-2">
																<span>총 회의록 ${meetTotalCount == null ? 0 : meetTotalCount}</span>/4
															</div>
														</div>
													</div>
													<div class="level-bottom report-box">
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<span>분석 회의록</span>${meetAnalCount == null ? 0 : meetAnalCount}/1
															<div class="progress-bars bg-primary"
																style="width: ${(meetAnalCount >= 1 ? 100 : 0)}%;">
															</div>
														</div>
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<span>설계 회의록</span>${meetDesignCount == null ? 0 : meetDesignCount}/1
															<div class="progress-bars bg-primary"
																style="width: ${(meetDesignCount >= 1 ? 100 : 0)}%;">
															</div>
														</div>
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<span>구현 회의록</span>${meetAvatarCount == null ? 0 : meetAvatarCount}/1
															<div class="progress-bars bg-primary"
																style="width: ${(meetAvatarCount >= 1 ? 100 : 0)}%;">
															</div>
														</div>
														<div class="progress" role="progressbar"
															aria-label="Danger example" aria-valuenow="100"
															aria-valuemin="0" aria-valuemax="100">
															<span>테스트 회의록</span>${meetTestCount == null ? 0 : meetTestCount}/1
															<div class="progress-bars bg-primary"
																style="width: ${(meetTestCount >= 1 ? 100 : 0)}%;">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- //회의록 -->

										<!-- 순서도 -->
										<div class="col-4 level-con level-info">
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
										<div class="col-4 level-con level-info">
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
										<div class="col-4 level-con level-info">
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
											<a class="icon" href="weeklyReport.action">더보기</a>
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
															<td><strong>${weeklyList.wrNo }</strong></td>
															<td>
																<div class="user-info-container">${weeklyList.wrTitle }</div>
															</td>
															<td
																style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${weeklyList.wrContent }</td>
															<td>${weeklyList.wrDate }</td>
															<td><span class="badge bg-label-primary me-1">${weeklyList.piNickName }</span>
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
																		<a href="../MyPage/NameCard.jsp"> <i class="fa-solid fa-circle-user no-profile"></i>
																		<span class="nickname">${groupHomeItem.piNickName }</span>
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
														<!-- <div class="d-flex member none-event">
															<i class="fa-solid fa-circle-user no-profile-lg no-eva"></i>
															<span class="nickname">평가안함</span>
														</div> -->
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

					<!-- 평가하기 -->
					<div class="eval">
						<button type="button" id="evalInsertBtn" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#evalInsert" value="평가버튼"
							onclick="evaluate01()">
							<i class="bi bi-plus-lg"></i> 평가하기
						</button>
					</div>
					<!-- 평가 모달 -->
					<form role="form" action="evalinsert.action" method="get"
						id="evalForm">
						<div class="modal fade" id="evalInsert" tabindex="-1"
							aria-labelledby="#evalLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content groupPer">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="evalLabel">그룹원 평가</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="modal-contents">
											<div class="con-section complete-list">

												<div class="row">
													<div class="col-md-12">
														<div class="mb-3">
															<table class="table groupPerTbl">
																<c:forEach var="leaderItem" items="${leaderEval }">
																	<tr>
																		<th>${leaderItem.quename }</th>
																		<c:forEach var="groupLeaderItem"
																			items="${groupLeader }">
																			<td><input class="form-check-input groupLeader"
																				type="radio" name="grLeader"
																				value="${groupLeaderItem.pinickname }" />
																				네.</td>
																			<td><input class="form-check-input groupLeader"
																			type="radio" name="grLeader"
																			value=0 />
																			아니요.</td>
																		</c:forEach>
																	</tr>
																</c:forEach>
																<c:forEach var="teamItem" items="${teamEval }">
																	<tr>
																		<th>${teamItem.quename }</th>
																		<c:forEach var="groupPersonItem" items="${groupPersonnel }">
																			<td>
																			<%-- <c:set var="i" value="${i+1 }" >
																			<form action="evalinsert.action" method="get" id="evalinsertBtn"> 
																			<input type="hidden" value="${i }" name="${i }">--%>
																			<input class="form-check-input groupPerson" type="checkbox" name="evalua", id="que_${status.index +1 }"
																				value="${groupPersonItem.pcCode }" />
																				${groupPersonItem.piNickName }
																			<%-- </form>
																			</c:set> --%>
																			</td>
																		</c:forEach>
																	</tr>
																</c:forEach>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">나가기</button>
										<button type="submit" class="btn btn-primary" id="evalu">평가하기</button>

										<span id="err"
											style="color: red; font-weight: bold; display: none;"></span>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
	</div>
	<!-- //바디영역 -->

	<!-- 푸터영역 -->
	<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script src="https://kit.fontawesome.com/81ca059e0e.js"
		crossorigin="anonymous"></script>
	<script>
	
	$(document).ready(function() {
	    // 개설 요청자 닉네임
	    var leaderNickName = "${leaderNickNames}";
	    // 이탈자 닉네임
	    var leaveNickNames = "${leaveNickNames}";
	    // 바뀐 팀장 닉네임
	    var changeNickNames = "${changeNickNames}";

	    // 만약 leaderNickName이 존재한다면 해당 요소에 아이콘 추가
	    if (leaderNickName !== "") {
	        // 각 닉네임 요소에 접근하여 leaderNickName인 경우 아이콘 추가
	        $(".nickname").each(function() {
	            if ($(this).text() === leaderNickName) {
	                $(this).prepend('<i class="fa-solid fa-crown crown"></i>');
	            }
	        });
	    }
	    else if (leaderNickName === leaveNickNames) 
	    {
	    	$(this).find(".crown").remove();
		}
	    else if (changeNickNames !== "") {
	    	if ($(this).text() === changeNickNames) {
                $(this).prepend('<i class="fa-solid fa-crown crown"></i>');
            }
		}
	    else
	    {
	    	$(this).find(".crown").remove();
	   	}
	});
	
		function evaluate01()
		{
			/* $('#evalInsert').load("/eval.action");
			$('#evalInsert').modal(); */
		}

		$(function()
		{
			$("#evalu").click(function()
			{
				//alert("ddd");
				//evalinsertBtn.submit();

			});
			
		})
	</script>
</body>

</html>