<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WorkManage</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_jaeyong.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<div role="header" class="sticky-top">
			<c:import url="../Components/Header.jsp"></c:import>
		</div>

		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">

			<div class="container-xl">

				<!-- 사이드 영역 -->
				<c:import url="../Components/Side.jsp"></c:import>
				<!-- //사이드 영역 -->

				<!-- 탭 -->
				<div class="comp_box">
					<h2 class="comp_tit">업무관리</h2>
					<div class="tab-box">
						<nav>
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
								role="tablist">
								<button class="nav-link active" id="nav-home-tab"
									data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
									role="tab" aria-controls="nav-home" aria-selected="true">일정관리</button>
								<button class="nav-link" id="nav-profile-tab"
									data-bs-toggle="tab" data-bs-target="#nav-profile"
									type="button" role="tab" aria-controls="nav-profile"
									aria-selected="false">업무할당표</button>
								<button class="nav-link" id="nav-contact-tab"
									data-bs-toggle="tab" data-bs-target="#nav-contact"
									type="button" role="tab" aria-controls="nav-contact"
									aria-selected="false">업무 보고 목록</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<!-- 첫 번째 탭: 일정 관리 -->
							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab">
								<div id="scheduleContent">
									<!-- 일정관리 -->
									<div class="card tbl-card">
										<h5 class="card-header">일정</h5>
										<div class="table-responsive text-nowrap tbl-border">
											<table class="table">
												<colgroup>
													<col style="width: 30px;">
													<col>
													<col>
													<col>
													<col>
													<col>
													<col>
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>주제</th>
														<th>시작일</th>
														<th>종료일</th>
														<th>실제시작일</th>
														<th>실제종료일</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="scheduleDetails" items="${scheduleList }">
														<tr class="range-datepicker">
															<td><strong>${scheduleDetails.ssName }</strong></td>
															<td>
																<div class="m-input-cal">
																	<input type="text" class="form-control date-from"
																		disabled="disabled"
																		value="${scheduleDetails.seStartDate }">
																</div>
															</td>
															<td>
																<div class="m-input-cal">
																	<input type="text" class="form-control date-to"
																		disabled="disabled"
																		value="${scheduleDetails.sdEndDate }">
																</div>
															</td>
															<td>
																<div class="m-input-cal">
																	<input type="text" class="form-control date-from"
																		disabled="disabled">
																</div>
															</td>
															<td>
																<div class="m-input-cal">
																	<input type="text" class="form-control date-to"
																		disabled="disabled">
																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<!-- //일정관리 -->
								</div>
							</div>

							<!-- 두 번째 탭: 업무 할당표 -->
							<div class="tab-pane fade" id="nav-profile" role="tabpanel"
								aria-labelledby="nav-profile-tab">
								<div id="assignmentContent">
									<!-- 업무할당표  -->

									<div class="card tbl-card">
										<div
											class="card-header d-flex justify-content-between align-items-center">
											<h5 style="display: inline;">업무할당표</h5>
											<button type="button" class="btn btn-primary" id="assBtn"
												data-bs-toggle="modal" data-bs-target="#staticBackdrop">업무할당</button>
										</div>
										<div class="accordion" id="accordionExample">
											<c:set var="seenTopics" value="" />
											<c:forEach var="workAssignment" items="${assignmentList}">
												<c:if
													test="${not fn:contains(seenTopics, workAssignment.ssName)}">
													<c:set var="seenTopics"
														value="${seenTopics},${workAssignment.ssName}" />
													<div class="accordion-item">
														<h2 class="accordion-header">
															<button class="accordion-button" type="button"
																data-bs-toggle="collapse"
																data-bs-target="#collapse_${workAssignment.ssName}"
																aria-expanded="true"
																aria-controls="collapse_${workAssignment.ssName}">
																${workAssignment.ssName}</button>
														</h2>
														<div id="collapse_${workAssignment.ssName}"
															class="accordion-collapse collapse show"
															data-bs-parent="#accordionExample">
															<div class="accordion-body">
																<div class="table-responsive text-nowrap tbl-border">
																	<table class="table">
																		<colgroup>
																			<col style="width: 30px;">
																			<col>
																			<col>
																			<col>
																			<col>
																			<col>
																			<col>
																			<col>
																		</colgroup>
																		<thead>
																			<tr>
																				<th>주제</th>
																				<th>제목</th>
																				<th>할당일</th>
																				<th>시작일</th>
																				<th>종료일</th>
																				<th>담당자</th>
																				<th>작성하기</th>
																				<th>조회</th>
																			</tr>
																		</thead>
																		<tbody>
																			<c:forEach var="innerWorkAssignment"
																				items="${assignmentList}">
																				<c:if
																					test="${workAssignment.ssName eq innerWorkAssignment.ssName}">
																					<tr class="range-datepicker">
																						<td><input type="button"
																							class="form-control form-control-plaintext"
																							id="validationCustom01"
																							value="${innerWorkAssignment.ouName}"></td>
																						<td>${innerWorkAssignment.assName}</td>
																						<td>${innerWorkAssignment.assDate}</td>
																						<td>${innerWorkAssignment.assStartDate}</td>
																						<td>${innerWorkAssignment.assEndDate}</td>
																						<td>${innerWorkAssignment.piNickName}</td>
																						<td>
																							<div class="dropdown">
																								<button type="button"
																									class="btn p-0 dropdown-toggle hide-arrow"
																									data-bs-toggle="dropdown">
																									<i class="bi bi-three-dots-vertical"></i>
																								</button>
																								<div class="dropdown-menu">
																									<a class="dropdown-item"
																										href="javascript:void(0);"
																										data-bs-toggle="modal"
																										data-bs-target="#staticBackdrop2"> <i
																										class="bi bi-pencil-square"></i> 업무보고
																									</a> <a class="dropdown-item"
																										href="javascript:void(0);"> <i
																										class="bi bi-trash3"></i>할당삭제
																									</a>
																								</div>
																							</div>
																						</td>
																						<td>
																							<button type="button"
																								class="btn btn-primary btn-plus"
																								style="background-color: green;">
																								<i class="bi bi-list-task"></i>
																							</button>
																						</td>
																					</tr>
																				</c:if>
																			</c:forEach>
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>

									<!--// 업무할당표  -->


								</div>
							</div>
							<!--// 탭종료 -->
							<!-- 세 번째 탭: 업무 보고 목록 -->
							<div class="tab-pane fade" id="nav-contact" role="tabpanel"
								aria-labelledby="nav-contact-tab">
								<div id="reportListContent">
									<!-- 업무 보고 목록 -->
									<div class="card tbl-card">
										<div class="card-header">
											<h5>업무보고목록</h5>
										</div>
										<!-- 필터 -->
										<div class="filter-box mb-3" style="margin: auto;">
											<ul class="d-flex">
												<li>
													<div class="m-select">
														<select class="form-select" aria-label="일정단계" title="일정단계">
															<option selected>일정단계</option>
															<c:forEach var="reportSchedule" items="${scheduleList}">
																<option value="${reportSchedulee.ssName}">${reportSchedule.ssName}</option>
															</c:forEach>
														</select>
													</div>
												</li>
												<li>
													<div class="m-select">
														<select class="form-select" aria-label="업무분류" title="업무분류">
															<option selected>업무분류</option>
															<c:forEach var="output" items="${reportOutputList}">
																<option value="${output.ouName}">${output.ouName}</option>
															</c:forEach>
														</select>
													</div>
												</li>
												<li>
													<div class="m-select">
														<select class="form-select" aria-label="담당자" title="담당자">
															<option selected>담당자</option>
															<c:forEach var="person" items="${reportPersonList}">
																<option value="${person.piNickName}">${person.piNickName}</option>
															</c:forEach>
														</select>
													</div>
												</li>

											</ul>
										</div>
										<!--// 필터 -->
										<div class="table-responsive text-nowrap tbl-border">
											<table class="table">
												<colgroup>
													<col style="width: 30px;">
													<col>
													<col>
													<col>
													<col>
													<col>
													<col>
													<col>
												</colgroup>
												<thead>
													<tr>
														<th>업무단계</th>
														<th>업무분류</th>
														<th>제목</th>
														<th>담당자</th>
														<th>보고일자</th>
														<th>결재일자</th>
														<th>결재결과</th>
														<th>처리</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="reportList" items="${reportList}">
														<tr class="range-datepicker">
															<td><strong>${reportList.ssName}</strong></td>
															<td><strong>${reportList.ouName}</strong></td>
															<td><input type="button"
																class="form-control form-control-plaintext"
																id="validationCustom01" value="${reportList.repTitle}"></td>
															<td>${reportList.piNickName}</td>
															<td>${reportList.repDate}</td>
															<td>${reportList.appDate}</td>
															<td><c:choose>
																	<c:when test="${reportList.wsName == '반려'}">
																		<span class="badge bg-label-warning me-1">${reportList.wsName}</span>
																	</c:when>
																	<c:when test="${reportList.wsName == '완료'}">
																		<span class="badge bg-label-success me-1">${reportList.wsName}</span>
																	</c:when>
																	<c:otherwise>
																		<span class="badge bg-label-primary me-1">진행중</span>
																	</c:otherwise>
																</c:choose></td>
															<td>
																<div class="dropdown">
																	<button type="button"
																		class="btn p-0 dropdown-toggle hide-arrow"
																		data-bs-toggle="dropdown">
																		<i class="bi bi-three-dots-vertical"></i>
																	</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="javascript:void(0);"
																			data-bs-toggle="modal"
																			data-bs-target="#staticBackdrop3_${loop.index}"
																			id="workProcess${loop.index}"><i
																			class="bi bi-pencil-square"></i> 업무처리</a> <a
																			class="dropdown-item" href="javascript:void(0);"><i
																			class="bi bi-trash3"></i>보고삭제</a>
																	</div>

																</div>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>

											<!-- 페이지네이션 -->
											<div class="page-box">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a></li>
														<li class="page-item"><a class="page-link" href="#">1</a></li>
														<li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Next"> <span aria-hidden="true">&raquo;</span>
														</a></li>
													</ul>
												</nav>
											</div>
											<!-- //페이지네이션 -->
										</div>
										<!-- //업무 보고 목록 -->
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- 탭 -->

				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<c:import url="../MeetGroup/WorkAssignment.jsp"></c:import>
				</div>
				<!--// Modal  -->

				<!-- Modal2 -->
				<div class="modal fade" id="staticBackdrop2"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">업무보고</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<c:import url="../MeetGroup/WorkReport.jsp"></c:import>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary">제출</button>
							</div>
						</div>
					</div>
				</div>
				<!-- //Modal2 -->

				<!-- Modal3 -->
				<div class="modal fade" id="staticBackdrop3"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">업무 결재</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form id="decisionForm">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="decision"
											id="approve" value="approve"> <label
											class="form-check-label" for="approve"> 승인 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="decision"
											id="reject" value="reject"> <label
											class="form-check-label" for="reject"> 반려 </label>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary"
									onclick="submitDecision()">제출</button>
							</div>
						</div>
					</div>
				</div>
				<!--// Modal3  -->
			</div>
		</section>
	</div>
	<!-- 푸터영역 -->
	<div role="footer" class="mt-auto">
		<c:import url="../Components/Footer.jsp"></c:import>
	</div>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
		var useskills = new Array;

		$("#input:checkbox[name='useskills']:checked").each(function(idx)
		{
			useskills.push($(this).val());
		})

		// 기술 체크할떄마다 span 구역에 나오게 함수
		$(".skill").change(function()
		{
			var skilArea = $("#skilArea"); // div 영역 가져오기 
			/* var skillName = $(this).attr("id") 		  	// 기술이름가져오기 */
			var skillName = $(this).val() // 기술이름가져오기
			//alert(skillName);

			// 체크된 기술 
			var checkSkill = skilArea.find("span");
			if ($(this).is(":checked"))
			{

				// 선택된 기술이 5개 미만인 경우에만 추가
				if (checkSkill.length < 5)
				{
					skilArea.append("<span>" + skillName + "&ensp; </span>");

				} else
				{
					$(this).prop("checked", false);
					alert("최대 5개까지 선택 가능합니다.");
				}
			} else
			{
				// 체크를 해제 하면 해당 기술을 삭제
				checkSkill.each(function()
				{
					if ($(this).text().indexOf(skillName) !== -1)
						$(this).remove();
				});
			}

		});

		$(document).ready(
				function()
				{
					// 방장일 경우 회원 업무할당가능
					var PcCode = "${pcCode}"; // 개인의 참여확인코드
					var leaderPcCode = "${leaderPcCode}"; // 방장의 참여확인코드
					var leavePcCode = "${leavePcCode}"; // 이탈ㅈ의 참여확인코드
					var changeleaderPcCode = "${changeLeaderPcCode}"; // 변경된 방장의 회원코드

					var assBtn = document.getElementById('assBtn');

					// 업무 처리 버튼을 모두 선택합니다.
					var dropDownItems = document
							.querySelectorAll('[id^="workProcess"]');

					// 각 업무 처리 버튼에 대해 처리합니다.
					dropDownItems.forEach(function(dropDownItem)
					{
						// 업무 할당 처리
						// 메모코드가 방장의 회원코드와 동일하고, leavePcCode가 null인 경우에만 버튼을 보이도록 한다.
						if (PcCode == leaderPcCode && leavePcCode == '')
						{
							assBtn.style.display = 'block'; // 버튼을 보이게 설정한다.
							dropDownItem.style.display = 'block'; // "업무처리" 메뉴를 보이게 설정한다.
						}
						// 메모코드가 변경된 방장의 회원코드와 동일한 경우에도 버튼을 보이도록 한다.
						else if (PcCode == changeleaderPcCode)
						{
							assBtn.style.display = 'block'; // 버튼을 보이게 설정한다.
							dropDownItem.style.display = 'block'; // "업무처리" 메뉴를 보이게 설정한다.
						}
						// 그 외의 경우에는 버튼을 숨깁니다.
						else
						{
							assBtn.style.display = 'none'; // 버튼을 숨긴다.
							dropDownItem.style.display = 'none'; // "업무처리" 메뉴를 숨긴다.
						}
					});
				});
	</script>


</body>

</html>