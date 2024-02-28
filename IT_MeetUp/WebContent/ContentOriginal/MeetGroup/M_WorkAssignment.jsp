<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<div class="modal-body">
	<div id="#item-1" class="comp_tit">
		제목(주제) <input type="text" class="form-control" id="title"
			required="required" style="width: 450px;">
	</div>

	<div id="#item-2" class="comp_tit">
		내용
		<textarea class="form-control" id="content" rows="3"
			style="width: 450px;" required="required"></textarea>
	</div>
	<br>
	<div id="#item-3" class="comp_tit">
		업무 단계:
		<div class="btn-group" role="group"
			aria-label="Basic radio toggle button group"
			style="border-radius: 500px;">
			<input type="radio" class="btn-check" name="btnradio" id="분석"
				autocomplete="off"> <label class="btn btn-light" for="분석">분석</label>
			<input type="radio" class="btn-check" name="btnradio" id="설계"
				autocomplete="off"> <label class="btn btn-light" for="설계">설계</label>
			<input type="radio" class="btn-check" name="btnradio" id="구현"
				autocomplete="off"> <label class="btn btn-light" for="구현">구현</label>
			<input type="radio" class="btn-check" name="btnradio" id="테스트"
				autocomplete="off"> <label class="btn btn-light" for="테스트">테스트</label>
		</div>
	</div>
	<br>
	<hr>
	<div id="#item-4" class="d-flex comp_tit">
		업무 분류 :
		<div class="m-select">
			<select class="form-select" aria-label="업무분류" title="업무분류" id="si"
				onchange="selectSi()">
				<option selected>선택하세요</option>
				<option value="1">회의록</option>
				<option value="2">요구분석서</option>
				<option value="3">최종보고서</option>
			</select>
		</div>
	</div>
	<br>
	<hr>
	<div id="#item-5" class="comp_tit">
		업무 수행 기간
		<div style="display: flex;">
			<span>시작일 <input type="date" class="form-control"
				id="startDate" onchange="startDateCheck()" style="width: 150px;">
			</span> <span>종료일 <input type="date" class="form-control"
				id="endDate" onchange="endDateCheck()" style="width: 150px;">
			</span>
		</div>
	</div>
	<br>
	<hr>
	<div id="#item-6" class="d-flex comp_tit">
		담당자
		<div class="m-select">
			<select class="form-select" aria-label="담당자" title="담당자" id="si"
				onchange="selectSi()">
				<option selected>선택하세요</option>
				<option value="1">문정환</option>
				<option value="2">박나영</option>
				<option value="3">엄재용</option>
			</select>
		</div>
	</div>
	<br>
	<hr>
	<div id="#item-7" class="comp_tit ">
		첨부파일
		<div class="m-file">
			<label for="formFile" class="form-label">file</label> <input
				class="form-control" type="file" id="formFile">
		</div>
	</div>
	<br>
</div>