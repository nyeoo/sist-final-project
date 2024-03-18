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
<title>ProjectManagement.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">
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
					<p class="h3">모집/신청 관리</p>
					<br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<!-- 모집/신청관리 -->
				<div class="row">
					<div class="my-detail">
						<div class="tab-content" id="nav-tabContent">
							<!-- 탭상세 첫번째에는 show active 만 붙여줬어~ -->
							<!-- 모집/신청 관리 탭 -->
							<div class="tab-box">
								<nav>
									<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
										role="tablist">
										<button class="nav-link active" id="nav-applied-1dep-tab"
											data-bs-toggle="tab" data-bs-target="#nav-applied-1dep"
											type="button" role="tab" aria-controls="nav-applied-1dep"
											aria-selected="true">신청한 모집공고</button>
										<button class="nav-link" id="nav-created-1dep-tab"
											data-bs-toggle="tab" data-bs-target="#nav-created-1dep"
											type="button" role="tab" aria-controls="nav-created-1dep"
											aria-selected="false">작성한 모집공고</button>
									</div>
								</nav>

								<div class="tab-content" id="nav-tabContent">
									<!-- 신청한 모집 공고 글 -->
									<div class="tab-pane fade show active" id="nav-applied-1dep"
										role="tabpanel" aria-labelledby="nav-applied-1dep-tab"
										tabindex="0">
										<div class="board_list">
											<table class="table table-hover">
												<caption>목록 : 번호, 현재상태, 제목, 시작일, 종료일, 신청일자</caption>
												<colgroup>
													<col class="num" style="width: 70px">
													<col class="category">
													<col class="tit">
													<col class="strat_date" style="width: 120px;">
													<col class="end_date" style="width: 120px;">
													<col class="join_date" style="width: 120px;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col" class="num">번호</th>
														<th scope="col" class="category">구분</th>
														<th scope="col" class="tit">제목</th>
														<th scope="col" class="start_date">시작일</th>
														<th scope="col" class="end_date">종료일</th>
														<th scope="col" class="join_date">신청일자</th>
													</tr>
												</thead>
												<c:forEach var="applyProjectItem" items="${applyProject }">
												<c:set var ="i" value="${i+1 }"></c:set>
												<tbody>
													<tr class ="appProject">
														<td class="num"><span class="tag_txt">${i}</span></td>
														<td class="category">
															<span class="badge text-bg-danger">모집중</span>
														</td>
														<td class="title"><a href="PostDetail.action?code=${applyProjectItem.opCode }">
																${applyProjectItem.title }</a></td>
														<td class="start_date">${applyProjectItem.startDate }</td>
														<td class="end_date">${applyProjectItem.endDate }</td>
														<td class="join_date">${applyProjectItem.paDate }</td>
														<td id = "memCode" style="display: none;">${applyProjectItem.memCode }</td>
														<td id = "opMem" style="display: none;">${applyProjectItem.opMemCode }</td>
													</tr>
												</tbody>
												</c:forEach>
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
										</div>
									</div> <!-- // 신청한 모집 공고 글 -->
									
									<!-- 작성한 모집공고 글 -->
									<div class="tab-pane fade" id="nav-created-1dep"
										role="tabpanel" aria-labelledby="nav-created-1dep-tab"
										tabindex="0">
										<div class="board_list">
											<table class="table table-hover">
												<caption>목록 : 번호, 현재상태, 제목, 시작일, 종료일, 작성일자</caption>
												<colgroup>
													<col class="num" style="width: 70px">
													<col class="category">
													<col class="tit">
													<col class="strat_date" style="width: 120px;">
													<col class="end_date" style="width: 120px;">
													<col class="join_date" style="width: 120px;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col" class="num">번호</th>
														<th scope="col" class="category">구분</th>
														<th scope="col" class="tit">제목</th>
														<th scope="col" class="start_date">시작일</th>
														<th scope="col" class="end_date">종료일</th>
														<th scope="col" class="join_date">작성일자</th>
													</tr>
												</thead>
												<c:forEach var="writeProjectItem" items="${writeProject }">
												<c:set var ="j" value="${j+1 }"></c:set>
												<tbody>
													<tr>
														<td class="num"><span class="tag_txt">${j}</span></td>
														<td class="category">
															<span class="badge text-bg-danger">모집중</span>
														</td>
														<td class="title">
															<a href="PostDetail.action?code=${writeProjectItem.opCode }">
																${writeProjectItem.title }
															</a>
														</td>
														<td class="start_date">${writeProjectItem.startDate }</td>
														<td class="end_date">${writeProjectItem.endDate }</td>
														<td class="join_date">${writeProjectItem.opDate }</td>
													</tr>
												</tbody>
												</c:forEach>
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
										</div>
									</div> <!-- //작성한 모집공고 글 -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- //바디영역 -->


	<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp" ></c:import> 
	<!-- //푸터영역 -->


	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
	    $('.appProject').each(function() {
	        var $row = $(this).closest('tr');
	        var memCode = $row.find('td:eq(6)').text();
	        var opMemCode = $row.find('td:eq(7)').text();
	        if (memCode == opMemCode) {
	            $row.hide(); // 해당 행을 숨깁니다.
	        }
	    });
	});
		
	</script>
</body>

</html>