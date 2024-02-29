<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!-- 업무할당표  -->

<h5 class="comp_tit">
    업무할당표
    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
            data-bs-target="#staticBackdrop" style="float: right;">업무할당
    </button>
</h5>
<hr>

<div class="accordion" id="accordionExample">
    <div class="accordion-item">
        <h2 class="accordion-header">
            <button class="accordion-button" type="button"
                    data-bs-toggle="collapse" data-bs-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">${ssName}</button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show"
             data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- 데이터 출력 부분 -->
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
                            </tr>
                        </thead>
                        <tbody>
							<c:forEach var="item" items="${ssName}">
                                <tr>
                                    <td>${item.assName}</td>
                                    <td>${item.assDate}</td>
                                    <td>${item.assStartDate}</td>
                                    <td>${item.assEndDate}</td>
                                    <td>${item.piNickName}</td>
                                    <td>없음</td>
                                    <td>없음</td>
                                    <td>${item.ouName}</td>
                                </tr>
                            </c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseTwo"
				aria-expanded="false" aria-controls="collapseTwo">${ssName}</button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse"
			data-bs-parent="#accordionExample">
			<div class="accordion-body"></div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseThree"
				aria-expanded="false" aria-controls="collapseThree">${ssName}</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse"
			data-bs-parent="#accordionExample">
			<div class="accordion-body"></div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#collapseFour"
				aria-expanded="false" aria-controls="collapseFour">${ssName}</button>
		</h2>
		<div id="collapseFour" class="accordion-collapse collapse"
			data-bs-parent="#accordionExample">
			<div class="accordion-body"></div>
		</div>
	</div>
</div>
<!--// 업무할당표  -->