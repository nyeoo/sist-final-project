<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); String cp=request.getContextPath(); %>
	<!DOCTYPE html>
	<html lang="ko">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>MyInfo</title>
		<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
		<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
		<meta name="title" content="IT MeetUp">
		<meta name="author" content="Sist 2Team">
		<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

		<!-- css -->
		<link rel="stylesheet" href="../../asset/css/style.css">

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
						<p class="h3">MyInfo</p>
						<!-- 브레드크럼블 -->
						<c:import url="../Components/Breadcrumb.jsp"></c:import>
						<!-- //브레드크럼블 -->
					</div>

					<div class="section mypage">
						<div class="tab-box mypage-box">

							<nav>
								<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab01" role="tablist">
									<button class="nav-link " id="nav-myInfo-tab" data-bs-toggle="tab"
										data-bs-target="#nav-myInfo" type="button" role="tab"
										aria-controls="nav-myInfo" aria-selected="true">myInfo</button>
									<button class="nav-link active" id="nav-nameCard-tab" data-bs-toggle="tab"
										data-bs-target="#nav-nameCard" type="button" role="tab"
										aria-controls="nav-nameCard" aria-selected="false">nameCard</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent01">
								<div class="tab-pane fade" id="nav-myInfo" role="tabpanel"
									aria-labelledby="nav-myInfo-tab">
									
									<!-- MyInfo 영역 -->
									<c:import url="../MyPage/MyInfo.jsp"></c:import>
									<!-- //myInfo 영역 -->

								</div>
								<div class="tab-pane fade show active" id="nav-nameCard" role="tabpanel"
									aria-labelledby="nav-nameCard-tab">
									
									<!-- 네임카드영역 -->
									<c:import url="../MyPage/NameCard.jsp"></c:import>
									<!-- //네임카드영역 -->

								</div>
							</div>
						</div>


					</div>

				</div>
		</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp" ></c:import>
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