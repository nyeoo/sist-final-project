<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!-- 일정관리 -->
<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
	aria-labelledby="nav-home-tab">
	<div>
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
							<th>업무상태</th>
						</tr>
					</thead>
					<tbody>
						<tr class="range-datepicker">
							<td><strong>분석</strong></td>
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
							<td>
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle01">
										<option selected="selected">업무상태를 선택하세요.</option>
										<option value="1">시작예정</option>
										<option value="2">진행중</option>
										<option value="3">완료</option>
									</select>
								</div>
							</td>
						</tr>
						<tr class="range-datepicker">
							<td><strong>설계</strong></td>
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
							<td>
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle01">
										<option selected="selected">업무상태를 선택하세요.</option>
										<option value="1">시작예정</option>
										<option value="2">진행중</option>
										<option value="3">완료</option>
									</select>
								</div>
							</td>
						</tr>
						<tr class="range-datepicker">
							<td><strong>구현</strong></td>
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
							<td>
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle01">
										<option selected="selected">업무상태를 선택하세요.</option>
										<option value="1">시작예정</option>
										<option value="2">진행중</option>
										<option value="3">완료</option>
									</select>
								</div>
							</td>
						</tr>
						<tr class="range-datepicker">
							<td><strong>테스트</strong></td>
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
							<td>
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle01">
										<option selected="selected">업무상태를 선택하세요.</option>
										<option value="1">시작예정</option>
										<option value="2">진행중</option>
										<option value="3">완료</option>
									</select>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- //일정관리 -->