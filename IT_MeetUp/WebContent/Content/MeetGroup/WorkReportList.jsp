<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
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
					<select class="form-select" aria-label="업무단계" title="업무단계">
						<option selected>업무단계</option>
						<c:forEach var="schedule" items="${reportScheduleList}">
							<option value="1">${schedule.ssName}</option>
						</c:forEach>
					</select>
				</div>
			</li>
			<li>
				<div class="m-select">
					<select class="form-select" aria-label="업무분류" title="업무분류">
						<option selected>업무분류</option>
						<c:forEach var="output" items="${reportOutputList}">
							<option value="1">${output.ouName}</option>
						</c:forEach>
					</select>
				</div>

				<div class="m-select">
					<select class="form-select" aria-label="담당자" title="담당자">
						<option selected>담당자</option>
						<c:forEach var="person" items="${reportPersonList}">
							<option value="1">${person.piNickName}</option>
						</c:forEach>
					</select>
				</div>
			</li>
		</ul>
	</div>
</div>
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
				<th>첨부파일명</th>
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
					<td>${reportList.repFile}
						<button type="button" class="btn btn-primary btn-plus">
							<i class="bi bi-file-arrow-down"></i>
						</button>
					</td>
					<td>
						<div class="dropdown">
							<button type="button" class="btn p-0 dropdown-toggle hide-arrow"
								data-bs-toggle="dropdown">
								<i class="bi bi-three-dots-vertical"></i>
							</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="javascript:void(0);"
									data-bs-toggle="modal" data-bs-target="#staticBackdrop3"><i
									class="bi bi-pencil-square"></i> 업무처리</a> <a class="dropdown-item"
									href="javascript:void(0);"><i class="bi bi-trash3"></i>보고삭제</a>
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
</div>
<!-- //업무 보고 목록 -->