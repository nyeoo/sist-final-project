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
											<button type="button" class="btn btn-primary" id="assBtn">업무할당</button>
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
																						<td>${innerWorkAssignment.ouName}</td>
																						<td><a class="dropdown-item searchBtn" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#staticBackdrop" id="workAss">${innerWorkAssignment.assName}</a></td>
																						<td>${innerWorkAssignment.assDate}</td>
																						<td>${innerWorkAssignment.assStartDate}</td>
																						<td>${innerWorkAssignment.assEndDate}</td>
																						<td>${innerWorkAssignment.piNickName}</td>
																						<td style="display: none;">${innerWorkAssignment.assContent}</td>
																						<td>
																							<div class="dropdown">
																								<button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" id="dropdownToggle_${innerWorkAssignment.charger}">
																								    <i class="bi bi-three-dots-vertical"></i>
																								</button>
																								<div class="dropdown-menu">
																									<a class="dropdown-item repBtn" id="reportWrite${loop.index}">
																									    <i class="bi bi-pencil-square"></i> 업무보고
																									</a>
																									<a class="dropdown-item" id="assRemove${loop.index}"
																										href="javascript:void(0);"> <i
																										class="bi bi-trash3"></i>할당삭제
																									</a>
																									<input type="hidden" name="assPcCode" value="${innerWorkAssignment.charger}">
																									<input type="hidden" name="assCode" value="${innerWorkAssignment.assCode}">
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
										<%-- <!-- 필터 -->
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
															<c:forEach var="output" items="${assOutputList}">
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
																<option value="${person.pcCode}">${person.piNickName}</option>
															</c:forEach>
														</select>
													</div>
												</li>

											</ul>
										</div>
										<!--// 필터 --> --%>
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
															<td><a class="dropdown-item selectBtn" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" id="selectWork">${reportList.repTitle}</a></td>	
															<td>${reportList.piNickName}</td>
															<td style="display: none;">${reportList.repContent}</td>
															<td style="display: none;">${reportList.repStartDate}</td>
															<td style="display: none;">${reportList.repEndDate}</td>
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
																		<a class="dropdown-item apBtn" href="javascript:void(0);"
																			data-bs-toggle="modal"
																			data-bs-target="#staticBackdrop3${loop.index}"
																			id="workProcess${loop.index}"><i
																			class="bi bi-pencil-square"></i> 업무처리</a> <a
																			class="dropdown-item delBtn" href="javascript:void(0);" id="reportDeleteBtn${loop.index}"><i
																			class="bi bi-trash3"></i>보고삭제</a>
																			<input type="hidden" name="chaPcCode" value="${reportList.chaPcCode}">
																			<input type="hidden" name="repNumber" value="${reportList.repNumber}">
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
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="staticBackdropLabel">할당된 업무</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal"
				                    aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <div id="item-1" class="comp_tit">
				                    제목(주제) <input type="text" class="form-control" id="title"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				
				                <div id="item-2" class="comp_tit">
				                    내용
				                    <textarea class="form-control" id="content" rows="3" id="content"
				                        style="width: 450px;" disabled="disabled"></textarea>
				                </div>
				                <br>
				                <hr>
				                <div id="item-3" class="d-flex comp_tit">
				                    업무 분류 <input type="text" class="form-control" id="assOuName"
				                        style="width: 250px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-4" class="comp_tit">
				                    시작일 <input type="text" class="form-control" id="startDate"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				                <div id="item-5" class="comp_tit">
				                    종료일 <input type="text" class="form-control" id="endDate"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-5" class="d-flex comp_tit">
				                    담당자<input type="text" class="form-control" id="piNickName"
				                        style="width: 250px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				
				            </div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-secondary"
				                    data-bs-dismiss="modal">닫기</button>
				            </div>
				        </div>
				    </div>
				</div>
				<!--// Modal  -->
				
				<!-- Modal2 -->
				<div class="modal fade" id="staticBackdrop2"
				    data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
				    aria-labelledby="staticBackdropLabel2" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="staticBackdropLabel">보고된 업무</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal"
				                    aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <div id="item-1" class="comp_tit">
				                    제목(주제) <input type="text" class="form-control" id="repTitle"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				
				                <div id="item-2" class="comp_tit">
				                    내용
				                    <input type="text" class="form-control" id="repContent"
				                        style="width: 450px; height: auto;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-3" class="d-flex comp_tit">
				                    업무 단계 <input type="text" class="form-control" id="repSsName"
				                        style="width: 250px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-4" class="d-flex comp_tit">
				                    업무 분류 <input type="text" class="form-control" id="repOuName"
				                        style="width: 250px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-5" class="comp_tit">
				                    실제 시작일 <input type="text" class="form-control" id="repStartDate"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				                <div id="item-6" class="comp_tit">
				                    종료일 <input type="text" class="form-control" id="repEndDate"
				                        style="width: 450px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				                <div id="item-7" class="d-flex comp_tit">
				                    담당자<input type="text" class="form-control" id="repPiNickName"
				                        style="width: 250px;"disabled="disabled">
				                </div>
				                <br>
				                <hr>
				
				            </div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-secondary"
				                    data-bs-dismiss="modal">닫기</button>
				            </div>
				        </div>
				    </div>
				</div>
				<!--// Modal2  -->

				<!-- Modal3 -->
				<div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="staticBackdropLabel">업무 결재</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <form id="decisionForm" action="<%=cp%>/approval.action" method="POST">
				                	<input type="hidden" id="decision" name="decision">
				                	<input type="hidden" id="repNumberInput" name="repNumberInput">
				                	<input type="hidden" id="memCode" name="memCode">
				                    <div class="form-check">
				                        <input class="form-check-input" type="radio" name="decision" id="approve" value="approve">
				                        <label class="form-check-label" for="approve"> 승인 </label>
				                    </div>
				                    <div class="form-check">
				                        <input class="form-check-input" type="radio" name="decision" id="reject" value="reject">
				                        <label class="form-check-label" for="reject"> 반려 </label>
				                    </div>
				                    <!-- 추가: 폼 내에서 제출 버튼 -->
				                    <div class="modal-footer">
					                    <button type="submit" class="btn btn-primary modalBtn" id="submitBtn">제출</button>
						                <button type="button" class="btn btn-secondary modalBtn" data-bs-dismiss="modal">취소</button>
				            		</div>
				                </form>
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

		// 방장일 경우에만 가능한 업무 기능 노출 처리
		$(document).ready(
		function()
		{
			// 방장일 경우 회원 업무할당가능
			var PcCode = "${pcCode}"; // 개인의 참여확인코드
			var leaderPcCode = "${leaderPcCode}"; // 방장의 참여확인코드
			var leavePcCode = "${leavePcCode}"; // 이탈자의 참여확인코드
			var changeleaderPcCode = "${changeLeaderPcCode}"; // 변경된 방장의 회원코드
			var assBtn = document.getElementById('assBtn');		// 버튼의 id

			// 업무 처리 버튼을 모두 선택한다.
			var dropDownItems = document
					.querySelectorAll('[id^="workProcess"]');

			// 각 업무 처리 버튼에 대해 처리한다.
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
			
			// 할당 삭제를 모두 선택한다.
			var assRemoveItems = document.querySelectorAll('[id^="assRemove"]');

			// 각 할당 삭제 버튼에 대해 처리한다.
			assRemoveItems.forEach(function(assRemoveItem) 
			{
			    // 메모코드가 방장의 회원코드와 동일한 경우에만 버튼을 보이도록 한다.
			    if (PcCode == leaderPcCode && leavePcCode == '')
			    {
			        assRemoveItem.style.display = 'block'; // "할당삭제" 버튼을 보이게 설정한다.
			    }
			    // 메모코드가 변경된 방장의 회원코드와 동일한 경우에도 버튼을 보이도록 한다.
			    else if (PcCode == changeleaderPcCode) 
			    {
			        assRemoveItem.style.display = 'block'; // "할당삭제" 버튼을 보이게 설정한다.
			    } else
			    {
			        assRemoveItem.style.display = 'none'; // 그 외의 경우에는 버튼을 숨긴다.
			    }
			});
			
			
			// 업무할당 페이지 이동
			$("#assBtn").click(function()
			{
				window.location.href = "<%=cp%>/assignment.action?memCode=${sessionScope.loginDTO.piMemCode}";
			});
			
			
			// 업무보고 페이지 이동
			$(".repBtn").click(function()
			{
		        var assCode = $(this).siblings("input[name='assCode']").val(); // 해당 버튼의 assCode 가져오기
		        var assPcCode = $(this).siblings("input[name='assPcCode']").val();
		        var memCode = "${sessionScope.loginDTO.piMemCode}"; // 세션에서 memCode 가져오기

		        if (PcCode == assPcCode)
				{
		        	window.location.href = "<%=cp%>/report.action?memCode=" + memCode + "&assCode=" + assCode;
				}
		        else
		        {
		        	alert("사용자에게 할당된 업무가 아닙니다.");
		        }
		        
		        
		    });
			
			
			$(".delBtn").click(function()
			{
			    var chaPcCode = $(this).siblings("input[name='chaPcCode']").val();
			    var $row = $(this).closest('tr'); // 클릭된 버튼이 속한 행 선택
			    var appDate = $row.find('td:eq(8)').text(); // 담당자 데이터 가져오기
			    
			    if (PcCode == chaPcCode && appDate == "") 
			    {
			        // 사용자가 확인한 경우 보고를 삭제한다.
			        // 삭제하는 코드를 여기에 추가.
			    } 
			    else if (appDate != "") {
					alert("이미 결재처리가 되었습니다.");
				}
			    else {
			        alert("사용자가 보고한 업무가 아닙니다.");
			    }
			});

		
			// 모달창으로 데이터 전달
			$(".apBtn").click(function()
			{
			    var repNumberInput = $(this).siblings("input[name='repNumber']").val();
			    var memCode = "${sessionScope.loginDTO.piMemCode}"; // 세션에서 memCode 가져오기
			    $("#staticBackdrop3").modal('show');
			    $("#staticBackdrop3").find("#memCode").val(memCode);
			    $("#staticBackdrop3").find("#repNumberInput").val(repNumberInput);
			    
			});
			
			// 업무할당 조회 데이터 모달로 전달 
			$(".searchBtn").click(function()
			{
			    var $row = $(this).closest('tr'); // 클릭된 버튼이 속한 행 선택
			    var assOuName = $row.find('td:eq(0)').text(); // 주제 데이터 가져오기
			    var assName = $row.find('td:eq(1)').text(); // 제목 데이터 가져오기
			    var assContent = $row.find('td:eq(6)').text(); // 내용 데이터 가져오기
			    var assStartDate = $row.find('td:eq(3)').text(); // 시작일 데이터 가져오기
			    var assEndDate = $row.find('td:eq(4)').text(); // 종료일 데이터 가져오기
			    var piNickName = $row.find('td:eq(5)').text(); // 담당자 데이터 가져오기
			    
			    // 모달 내 필드에 데이터 설정
			    $("#staticBackdrop").modal('show');
			    $("#title").val(assName);
			    $("#assOuName").val(assOuName);
			    $("#startDate").val(assStartDate);
			    $("#endDate").val(assEndDate);
			    $("#piNickName").val(piNickName);
			    $("#content").val(assContent);
			});
			
			// 업무보고 조회 데이터 모달로 전달 
			$(".selectBtn").click(function()
			{
			    var $row = $(this).closest('tr'); // 클릭된 버튼이 속한 행 선택
			    var repSsName = $row.find('td:eq(0)').text(); // 주제 데이터 가져오기
			    var repOuName = $row.find('td:eq(1)').text(); // 주제 데이터 가져오기
			    var repTitle = $row.find('td:eq(2)').text(); // 제목 데이터 가져오기
			    var repContent = $row.find('td:eq(4)').text(); // 내용 데이터 가져오기
			    var repStartDate = $row.find('td:eq(5)').text(); // 시작일 데이터 가져오기
			    var repEndDate = $row.find('td:eq(6)').text(); // 종료일 데이터 가져오기
			    var piNickName = $row.find('td:eq(3)').text(); // 담당자 데이터 가져오기
			    console.log(repContent);
			    // 모달 내 필드에 데이터 설정
			    $("#staticBackdrop2").modal('show'); // 두 번째 모달 호출
			    $("#repSsName").val(repSsName);
			    $("#repOuName").val(repOuName);
			    $("#repTitle").val(repTitle);
			    $("#repContent").val(repContent);
			    $("#repStartDate").val(repStartDate);
			    $("#repEndDate").val(repEndDate);
			    $("#repPiNickName").val(piNickName);
			});


			
			// 승인 / 반려에 대한 데이터 변환
			$("#decisionForm").submit(function(e)
			{
		        var decisionValue;
		        if ($("#approve").is(":checked"))
		        {
		            decisionValue = "WS_1"; // 승인을 선택한 경우
		        } else if ($("#reject").is(":checked")) {
		            decisionValue = "WS_2"; // 반려를 선택한 경우
		        }

		        // 폼의 숨겨진 인풋 필드에 해당 값을 설정
		        $("#decision").val(decisionValue);
		    });
			
			
			
			

		});
		
	</script>


</body>

</html>