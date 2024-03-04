<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!-- 업무할당표  -->

<div class="card-header">
	<h5 style="display: inline;">업무할당표</h5>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
            data-bs-target="#staticBackdrop" style="float: right;">업무할당
    </button>
</div>
<div class="accordion" id="accordionExample">
	<c:forEach var="workAssignment" items="${assignmentList }">
    <div class="accordion-item">
        <h2 class="accordion-header">
            <button class="accordion-button" type="button"
                    data-bs-toggle="collapse" data-bs-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">${workAssignment.ssName}</button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show"
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
								<th>할당일</th>
								<th>시작일</th>
								<th>종료일</th>
								<th>작성자</th>
								<th>실제시작일</th>
								<th>실제종료일</th>
								<th>업무상태</th>
								<th>작성하기</th>
								<th>추가/조회</th>
							</tr>
						</thead>
						<tbody>
							<tr class="range-datepicker">
								<td><input type="button"
									class="form-control form-control-plaintext"
									id="validationCustom01" value="${workAssignment.ouName}"></td>
								<td>${workAssignment.assDate}</td>
								<td>
									<div class="m-input-cal">
										<input type="text" class="form-control date-from"
											disabled="disabled" value="${workAssignment.assStartDate}">
									</div>
								</td>
								<td>
									<div class="m-input-cal">
										<input type="text" class="form-control date-to"
											disabled="disabled" value="${workAssignment.assEndDate}">
									</div>
								</td>
								<td>
									<div class="m-select">
										<select class="form-select"
											aria-label="Default select example" title="selectTitle00">
											<option selected="selected">담당자명</option>
											<option value="1">${workAssignment.piNickName}</option>
										</select>
									</div>
								</td>
								<td>
									<div class="m-input-cal">
										<input type="text" class="form-control date-from">
									</div>
								</td>
								<td>
									<div class="m-input-cal">
										<input type="text" class="form-control date-to">
									</div>
								</td>
								<td>
									<div class="m-select">
										<span class="badge bg-label-success me-1">Completed</span>
									</div>
								</td>
								<td>
									<div class="dropdown">
										<button type="button"
											class="btn p-0 dropdown-toggle hide-arrow"
											data-bs-toggle="dropdown">
											<i class="bi bi-three-dots-vertical"></i>
										</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="javascript:void(0);"
												data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i
												class="bi bi-pencil-square"></i> 업무보고</a> <a
												class="dropdown-item" href="javascript:void(0);"><i
												class="bi bi-trash3"></i>할당삭제</a>
										</div>
									</div>
								</td>
								<td>
									<button type="button" class="btn btn-primary btn-plus"
										style="background-color: green;">
										<i class="bi bi-list-task"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
</div>
<!--// 업무할당표  -->