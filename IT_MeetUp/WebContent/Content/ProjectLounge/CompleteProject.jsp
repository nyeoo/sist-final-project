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
<title>CompletProject.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_bny.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area c-body-section">
			<!-- <div class="section bg-body-tertiary"> -->
			<div class="container-xl">
				<p class="h1"><a href="completeproject.action">완료된 프로젝트</a></p>

				<!-- 필터(카테고리) -->
				<div class="filter-box mb-4">
					<select class="form-select" aria-label="Default select example"
						style="width: 13%">
						<option value="">전체</option>
						<c:forEach var="cat" items="${catList }">
						<option value="${cat.catCode }" ${param.category == cat.catCode ? 'selected' : ''}>${cat.catName }</option>
						</c:forEach>
					</select>
				</div>
				<!-- //필터(카테고리) -->
				<div class="con-section complete-list">
					<ul
						class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
						<!-- //이미지 썸네일 -->
						<!-- 텍스트 썸네일 -->
						<c:forEach var="cp" items="${cpList }">
							<li class="col-12 col-sm-6 col-md-4 col-lg-4">
								<div class="card p-3 d-flex flex-column add-zzim cp-card">
									<div class="card-top">
										<!-- 썸네일 텍스트 -->
										<div class="thumbnail-box thumnail-txt">
											<div class="thumbnail-tit text-truncate">${cp.title }</div>
											<div class="thumbnail-txt text-truncate">#${cp.teamName}</div>
										</div>
									</div>
									<div class="card-bottom">
										<!-- 제목 -->
										<span class="h4 d-block text-truncate mt-2">[${cp.catName}] ${cp.title }</span>
										
										<!-- 상세내용 -->
										<p class="card-text text-truncate mb-2">${cp.content }</p>
									</div>
									<input type="hidden" id="code" value="${cp.cpCode }">
								</div>
							</li>
						</c:forEach>
						<!-- //텍스트 썸네일 -->
					</ul>

					<!-- 페이지네이션 -->
					<div class="page-box">
						<nav aria-label="Page navigation example">
							<ul class="pagination">${indexList }</ul>
						</nav>
					</div>
					<!-- //페이지네이션 -->
				</div>

			</div>

		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
		$(document).ready(function()
		{
			$('select.form-select').change(function ()
			{
	            // 선택된 값 가져오기
	            var selectedValue = $(this).val();
	            
	            if (selectedValue==null)
				{
					selectedValue="";
				}
	            
	            // 생성한 URL로 이동
	            $(location).attr("href", "completeproject.action?category=" + selectedValue);
	        });
			
			var sessionScopePiMemCode = $("#sessionScopePiMemCode").val();
			
			// 세션에 회원번호가 없는 상황이라면
			if(sessionScopePiMemCode == "")
			{
				$('.cp-card').click(function()
				{
					alert("로그인이 필요한 기능입니다.");
					$(location).attr("href", "login.action");
				});

			}
			else
			{
				$('.cp-card').click(function()
				{
					// 각 프로젝트의 op_code 가져오기
					var cpCode = $(this).find('#code').val();
					
					// 완료 프로젝트 상세 페이지로 이동할 때 코드를 넘겨주기
					$(location).attr("href", "completeprojectdetail.action?cpCode=" + cpCode);
				});
			}


		});
	</script>
</body>
</html>