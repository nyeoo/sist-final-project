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
<title>WeeklyReportList</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">
			
				<!-- 사이드 영역 -->
				<c:import url="../Components/Side.jsp"></c:import>
				<!-- //사이드 영역 -->

				<div class="content_tit">
					<p class="h3">
						주간업무 보고서
						<button type="button" class="btn btn-primary"
							style="float: right;">작성하기</button>
					</p>
					<br>
				</div>

				<!-- 리스트 -->
				<div class="board_list">
					<table class="table table-hover">
						<colgroup>
							<col class="num" style="width: 70px">
							<col class="tit">
							<col class="date" style="width: 120px;">
							<col class="w_writer" style="width: 70px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="num">번호</th>
								<th scope="col" class="tit">제목</th>
								<th scope="col" class="date">작성일</th>
								<th scope="col" class="w_writer">작성자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="weeklyReport" items="${weeklyReport}">
								<tr>
									<td class="num"><span class="tag_txt">${weeklyReport.countWeekly}</span></td>
									<td class="tit new"><a href="javascript:;">${weeklyReport.wrTitle}<!-- <span
											class="ico_att_new">new</span> -->
									</a></td>
									<td class="date">${weeklyReport.wrDate}</td>
									<td class="w_writer">${weeklyReport.piNickName}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 리스트 -->
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

		</section>
		<!-- //바디영역 -->


		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		
	</script>
</body>

</html>