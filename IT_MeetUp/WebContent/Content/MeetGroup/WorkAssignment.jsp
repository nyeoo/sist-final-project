<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WorkAssignment.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<!-- 컴포넌트 전용 css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/component.css">
<style type="text/css">

/* #csslabel
  {
  	background-image: url("images/ico_css.png");
  	   
  } */
</style>
</head>
<body>

	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<div
			class="section register join min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-md-10 col-lg-6 d-flex flex-column align-items-center justify-content-center">
						<div class="card mb-3 join-area">
							<!-- 사이드 영역 -->
							<c:import url="../Components/Side.jsp"></c:import>
							<!-- //사이드 영역 -->
							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">업무할당</div>
									<hr>
								</div>
									<!-- 제목 -->
									<div id="item-1" class="comp_tit ">
										<div class="m-input-box">
											<label for="assignmentTitle" class="form-label"> 제목 </label>
											<input type="text" class="form-control" id="title"
												name="title" style="width: 350px;"
												value="">
											<div class="invalid-feedback">제목을 입력해주세요.</div>
										</div>
									</div>
									<!--// 제목 -->
									<br>
									<!-- 내용 -->
									<div id="item-2" class="comp_tit ">
										<div class="m-textarea">
											<label for="assignmentContent" class="form-label"> 내용
											</label>
											<textarea class="form-control" id="content" name="content"
												rows="15" style="width: 700px;"></textarea>
										</div>
										<div class="invalid-feedback">내용을 입력하세요</div>
									</div>
									<!-- //내용 -->
									<br>
									<div id="#item-3" class="comp_tit">
										업무 단계:
										<div class="btn-group" role="group"
											aria-label="Basic radio toggle button group"
											style="border-radius: 500px;">
											<c:forEach var="reportSchedule" items="${assScheduleList}">
												<input type="radio" class="btn-check" name="btnradio"
													id="${reportSchedule.ssName}" autocomplete="off">
												<label class="btn btn-light" for="${reportSchedule.ssName}">${reportSchedule.ssName}</label>
											</c:forEach>
										</div>
									</div>
									<br>
									<div id="#item-4" class="d-flex comp_tit">
										업무 분류 :
										<div class="m-select">
											<select class="form-select" aria-label="업무분류" title="업무분류"
												id="si" onchange="selectSi()">
												<option selected>선택하세요</option>
												<c:forEach var="outputList" items="${assOutputList}">
													<option value="3">${outputList.ouName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<br>
									<div id="#item-5" class="comp_tit">
										업무 수행 기간
										<div style="display: flex;">
											<span>시작일 <input type="date" class="form-control"
												id="startDate" onchange="startDateCheck()"
												style="width: 150px;">
											</span> <span>종료일 <input type="date" class="form-control"
												id="endDate" onchange="endDateCheck()" style="width: 150px;">
											</span>
										</div>
									</div>
									<br>
									<div id="#item-6" class="d-flex comp_tit">
										담당자
										<div class="m-select">
											<select class="form-select" aria-label="담당자" title="담당자"
												id="si" onchange="selectSi()">
												<option selected>선택하세요</option>
												<c:forEach var="person" items="${assignmentList}">
													<option value="${person.piNickName}">${person.piNickName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<br> <br>
									<!-- 첨부파일 -->
									<div id="#item-7" class="comp_tit ">
										첨부파일
										<div class="m-file">
											<label for="formFile" class="form-label">file</label> <input
												class="form-control" type="file" id="formFile">
										</div>
									</div>
									<!-- //첨부파일 -->

									<br>
									<!-- 제출 및 취소 버튼 -->
									<div style="text-align: center;">
										<button class="btn btn-primary" type="submit">제출</button>
										<button class="btn btn-secondary" id="reSetButton">취소</button>
									</div>
									<!-- //제출 및 취소 버튼 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터영역 -->
	<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() 
	{
	    $("#reSetButton").click(function() {
	        var url = "<%=cp%>/workManage.action?memCode=${sessionScope.loginDTO.piMemCode}";
	        window.location.href = url;
	    });
	    
	});

	
	
	</script>

</body>
</html>