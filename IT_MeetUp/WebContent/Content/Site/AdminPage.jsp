
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
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="content_tit">
					<p class="h3">관리자 리스트</p>
					<br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<!-- 관리자 리스트 테이블 -->
				<h3>관리자 리스트</h3>
				<table class="table table-hover">
					<caption>목록 : 번호, ID, 닉네임, 가입일자, 로그인 일자(마지막), 탈퇴여부</caption>
					<colgroup>
						<col class="num">
						<col class="id">
						<col class="nickName">
						<col class="joindate">
						<col class="date">
						<col class="category">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" class="num">번호</th>
							<th scope="col" class="id">ID</th>
							<th scope="col" class="nickName">닉네임</th>
							<th scope="col" class="joindate">가입일자</th>
							<th scope="col" class="date">로그인 일자(마지막)</th>
							<th scope="col" class="category">탈퇴 여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="num"><span class="tag_txt">1</span></td>
							<td class="id">admin1234</td>
							<td class="nickName">흑곰발바닥</td>
							<td class="joindate">2022.12.01</td>
							<td class="date">2023.01.11</td>
							<td class="category">
								<button type="button">
									<span class="badge text-bg-secondary">탈퇴하기</span>
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td class="num"><span class="tag_txt">2</span></td>
							<td class="id">hihihi</td>
							<td class="nickName">멋쟁이 주형이</td>
							<td class="joindate">2022.11.24</td>
							<td class="date">2023.01.22</td>
							<td class="category">
								<button type="button">
									<span class="badge text-bg-secondary">탈퇴하기</span>
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td class="num"><span class="tag_txt">3</span></td>
							<td class="id">wjdghks123</td>
							<td class="nickName">하성이형님</td>
							<td class="joindate">2021.12.01</td>
							<td class="date">2022.01.01</td>
							<td class="category">
								<button type="button">
									<span class="badge text-bg-secondary">탈퇴하기</span>
								</button>
							</td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<td class="num"><span class="tag_txt">4</span></td>
							<td class="id">gd19973</td>
							<td class="nickName">수경누나,나영이 면접 화이팅</td>
							<td class="joindate">2022.12.01</td>
							<td class="date">2023.01.01</td>
							<td class="category">
								<button type="button">
									<span class="badge text-bg-secondary">탈퇴하기</span>
								</button>
							</td>
						</tr>
					</tbody>
				</table>

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
				<!-- //관리자 리스트 테이블 -->
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
		
	</script>
</body>

</html>