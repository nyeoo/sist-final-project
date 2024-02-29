
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
<title>indict.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<style type="text/css">
.comp_box {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination li {
	display: inline-block;
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
					<p class="h3">신고처리</p>
					<br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<!-- 라운지 / Meet 그룹 신고 처리 -->
				<div class="row">
					<div class="my-detail">
						<div class="tab-content" id="nav-tabContent">
							<!-- 탭상세 첫번째에는 show active 만 붙여줬어~ -->
							<!-- [틀] 라운지 / Meet 그룹 신고 탭 -->
							<div class="tab-pane fade show active" id="nav-management"
								role="tabpanel" aria-labelledby="nav-management-tab">
								<!-- [틀내용] 라운지 / Meet 그룹 신고 내용 -->
								<nav>
									<div class="nav nav-tabs nav-tabs-bordered mb-3"
										id="nav-tab-1dep" role="tablist">
										<button class="nav-link active" id="nav-1dep-applied01-tab"
											data-bs-toggle="tab" data-bs-target="#nav-1dep-applied01"
											type="button" role="tab" aria-controls="nav-1dep-applied01"
											aria-selected="true">라운지 신고</button>
										<button class="nav-link" id="nav-1dep-group01-tab"
											data-bs-toggle="tab" data-bs-target="#nav-1dep-group01"
											type="button" role="tab" aria-controls="nav-1dep-group01"
											aria-selected="false">Meet 그룹 신고</button>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent-1dep">
									<!-- 1dep-라운지 신고 탭 -->
									<div class="tab-pane fade show active" id="nav-1dep-applied01"
										role="tabpanel" aria-labelledby="nav-1dep-applied01-tab"
										tabindex="0">
										<nav>
											<div class="nav nav-tabs" id="nav-tab" role="tablist">
												<button class="nav-link active" id="nav-team-open-tab"
													data-bs-toggle="tab" data-bs-target="#nav-team-open"
													type="button" role="tab" aria-controls="nav-team-open"
													aria-selected="true">팀 개설요청 신고</button>
												<button class="nav-link" id="nav-comment-tab"
													data-bs-toggle="tab" data-bs-target="#nav-comment"
													type="button" role="tab" aria-controls="nav-comment"
													aria-selected="false">댓글 신고</button>
												<button class="nav-link" id="nav-recomment-tab"
													data-bs-toggle="tab" data-bs-target="#nav-recomment"
													type="button" role="tab" aria-controls="nav-recomment"
													aria-selected="false">대댓글 신고</button>
											</div>
										</nav>
										<div class="tab-content" id="nav-tabContent">
											<!-- 2dep-팀 개설요청 신고 -->
											<div class="tab-pane fade show active" id="nav-team-open"
												role="tabpanel" aria-labelledby="nav-team-open-tab"
												tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 신고사유, 일자, 상태, 처리자, 처리일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="ProjectDetail.jsp">욕설</a>
																</td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-팀 개설요청 신고 -->
											<!-- 2dep-댓글 신고 -->
											<div class="tab-pane fade" id="nav-comment" role="tabpanel"
												aria-labelledby="nav-comment-tab" tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 신고사유, 일자, 상태, 처리자, 처리일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="ProjectDetail.jsp">욕설</a>
																</td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">2</span></td>
																<td class="reason"><a href="ProjectDetail.jsp">광고및
																		홍보</a></td>
																<td class="date">2023.02.08</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.10</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-댓글 신고 -->
											<!-- 2dep-대댓글 신고 -->
											<div class="tab-pane fade" id="nav-recomment" role="tabpanel"
												aria-labelledby="nav-recomment-tab" tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 신고사유, 일자, 상태, 처리자, 처리일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="ProjectDetail.jsp">욕설</a>
																</td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-대댓글 신고 -->
										</div>
									</div>
									<!-- //1dep-라운지 신고 탭 -->

									<!-- 1dep-Meet 그룹 신고 탭 -->
									<div class="tab-pane fade" id="nav-1dep-group01"
										role="tabpanel" aria-labelledby="nav-1dep-group01-tab"
										tabindex="0">
										<nav>
											<div class="nav nav-tabs" id="nav-tab" role="tablist">
												<button class="nav-link active" id="nav-task-tab"
													data-bs-toggle="tab" data-bs-target="#nav-task"
													type="button" role="tab" aria-controls="nav-task"
													aria-selected="true">업무할당 신고</button>
												<button class="nav-link" id="nav-report-tab"
													data-bs-toggle="tab" data-bs-target="#nav-report"
													type="button" role="tab" aria-controls="nav-report"
													aria-selected="false">업무보고 신고</button>
												<button class="nav-link" id="nav-weekly-tab"
													data-bs-toggle="tab" data-bs-target="#nav-weekly"
													type="button" role="tab" aria-controls="nav-weekly"
													aria-selected="false">주간업무보고 신고</button>
											</div>
										</nav>
										<div class="tab-content" id="nav-tabContent">
											<!-- 2dep-업무할당 신고 -->
											<div class="tab-pane fade show active" id="nav-task"
												role="tabpanel" aria-labelledby="nav-task-tab" tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 현재상태, 제목, 시작일, 종료일, 신청일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="#">업무보고 신고</a></td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">2</span></td>
																<td class="reason"><a href="#">업무할당 신고</a></td>
																<td class="date">2023.02.08</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.10</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-업무할당 개설요청 신고 -->
											<!-- 2dep-업무보고 신고 -->
											<div class="tab-pane fade" id="nav-report" role="tabpanel"
												aria-labelledby="nav-report-tab" tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 현재상태, 제목, 시작일, 종료일, 신청일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="#">업무보고 신고</a></td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">2</span></td>
																<td class="reason"><a href="#">업무할당 신고</a></td>
																<td class="date">2023.02.08</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.10</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-업무보고 신고 -->
											<!-- 2dep-주간업무보고 신고 -->
											<div class="tab-pane fade" id="nav-weekly" role="tabpanel"
												aria-labelledby="nav-weekly-tab" tabindex="0">
												<div class="board_list">
													<table class="table table-hover">
														<caption>목록 : 번호, 현재상태, 제목, 시작일, 종료일, 신청일자</caption>
														<colgroup>
															<col class="num" style="width: 70px">
															<col class="reason">
															<col class="date">
															<col class="category" style="width: 120px;">
															<col class="indict_date" style="width: 120px;">
															<col class="indicter" style="width: 120px;">
														</colgroup>
														<thead>
															<tr>
																<th scope="col" class="num">번호</th>
																<th scope="col" class="reason">신고사유</th>
																<th scope="col" class="date">일자</th>
																<th scope="col" class="category">상태</th>
																<th scope="col" class="indict_process">처리</th>
																<th scope="col" class="indicter">처리자</th>
																<th scope="col" class="indict_date">처리일자</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">1</span></td>
																<td class="reason"><a href="#">업무보고 신고</a></td>
																<td class="date">2023.02.12</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.14</td>
															</tr>
														</tbody>
														<tbody>
															<tr>
																<td class="num"><span class="tag_txt">2</span></td>
																<td class="reason"><a href="#">업무할당 신고</a></td>
																<td class="date">2023.02.08</td>
																<td class="category"><select class="form-select"
																	style="width: 105px;">
																		<option value="1">신고자</option>
																		<option value="2">피신고자</option>
																		<option value="3">중재</option>
																</select></td>
																<td class="indict_process">
																	<button type="button" class="btn btn-secondary">처리</button>
																</td>
																<td class="indicter">관리자 ID</td>
																<td class="indict_date">2023.02.10</td>
															</tr>
														</tbody>
													</table>
												</div>

												<div class="comp_box">
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
											</div>
											<!-- //2dep-주간업무보고 신고 -->
										</div>

									</div>
									<!-- // 1dep-Meet 그룹 신고 탭 -->
								</div>
								<!-- // [틀내용] 라운지 / Meet 그룹 신고 내용 -->
							</div>
							<!-- // [틀] 라운지 / Meet 그룹 신고 탭 -->
						</div>
					</div>
				</div>
			</div>

			<div class="modal fade" id="indictprocess" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">신고 처리</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="decisionForm">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="decision"
										id="approve" value="approve"> <label
										class="form-check-label" for="approve"> 신고자 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="decision"
										id="reject" value="reject"> <label
										class="form-check-label" for="reject"> 피신고자 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="decision"
										id="reject" value="reject"> <label
										class="form-check-label" for="reject"> 중재 </label>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary"
								onclick="submitDecision()">처리 완료</button>
						</div>
					</div>
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
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		$(document).ready(function()
		{
			// 수정 버튼 클릭 시 모달 표시
			$('.btn-secondary').click(function()
			{
				$('#indictprocess').modal('show');
			});
		});
	</script>
</body>

</html>