<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!-- 업무 보고 목록 -->
<h5 class="card-header">업무 보고 목록</h5>
<!-- 필터 -->
<div class="filter-box mb-5" style="margin: auto;">
	<ul class="d-flex">
		<li>
			<div class="m-select">
				<select class="form-select" aria-label="업무단계" title="업무단계">
					<option selected>업무단계</option>
					<option value="1">분석</option>
					<option value="2">설계</option>
					<option value="3">구현</option>
					<option value="4">테스트</option>
				</select>
			</div>
		</li>
		<li>
			<div class="d-flex">
				<div class="m-select">
					<select class="form-select" aria-label="업무분류" title="업무분류">
						<option selected>업무분류</option>
						<option value="1">회의록</option>
						<option value="2">요구사항분석서</option>
						<option value="3">최종보고서</option>
					</select>
				</div>
				<div class="m-select">
					<select class="form-select" aria-label="담당자" title="담당자">
						<option selected>담당자</option>
						<option value="1">오수경</option>
						<option value="2">임하성</option>
						<option value="3">이주형</option>
					</select>
				</div>
			</div>
		</li>
	</ul>
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
			<tr class="range-datepicker">
				<td><strong>분석</strong></td>
				<td><strong>회의록</strong></td>
				<td><input type="button"
					class="form-control form-control-plaintext" id="validationCustom01"
					value="1차 회의록"></td>
				<td>담당자명</td>
				<td>2024-01-18</td>
				<td>첨부한파일1.hwp
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
			<tr class="range-datepicker">
				<td><strong>설계</strong></td>
				<td><strong>요구분석서</strong></td>
				<td><input type="button"
					class="form-control form-control-plaintext" id="validationCustom01"
					value="요구분석서1차"></td>
				<td>담당자명</td>
				<td>2024-01-31</td>
				<td>첨부한파일2.pdf
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
		</tbody>
	</table>
</div>
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
<!-- //업무 보고 목록 -->