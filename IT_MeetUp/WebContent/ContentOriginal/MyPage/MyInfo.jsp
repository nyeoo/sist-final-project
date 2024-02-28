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
<title>Myinfo</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">
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
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="content_tit">
					<p class="h3">Myinfo</p><br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<div class="section mypage">

					<!-- 내정보 -->
					<div class="row">
						<div class="col-xl-4">
							<div class="card">
								<div
									class="card-body profile-card pt-4 d-flex flex-column align-items-center">

									<div class="profile-img rounded-circle">
										<img src="" alt="Profile">
										<div class="pt-2">
											<a href="#" class="btn btn-primary btn-sm"
												title="Upload new profile image"><i class="bi bi-upload"></i></a>
											<a href="#" class="btn btn-danger btn-sm"
												title="Remove my profile image"><i class="bi bi-trash"></i></a>
										</div>
									</div>
									<p class="h2">닉네임</p>
									<p class="h5">@아이디</p>
								</div>
							</div>

						</div>

						<div class="col-xl-8">

							<div class="card">
								<div class="card-body pt-3">
									<!-- Profile Edit Form -->
									<form>

										<div class="row mb-3">
											<label for="myId" class="col-md-4 col-lg-3 col-form-label">아이디</label>
											<div class="col-md-8 col-lg-9">
												<input name="myId" type="text" class="form-control"
													id="myId" value="Kevin Anderson">
											</div>
										</div>

										<div class="row mb-3">
											<label for="myId" class="col-md-4 col-lg-3 col-form-label">비밀번호</label>
											<div class="col-md-8 col-lg-9">
												<input name="myPassword" type="password"
													class="form-control" disabled="" id="myPassword">
											</div>
										</div>

										<div class="row mb-3">
											<label for="myId" class="col-md-4 col-lg-3 col-form-label">이름</label>
											<div class="col-md-8 col-lg-9">
												<input name="myId" type="text" class="form-control"
													id="myId" value="Kevin Anderson">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">이메일</label>
											<div class="col-md-8 col-lg-9">
												<input name="email" type="email" class="form-control"
													readonly="" id="Email" value="meetup@example.com">
											</div>
										</div>

										<div class="col-12 btn-box">
											<div class="btn-center">
												<button type="button" class="btn btn-primary">저장하기</button>
											</div>
										</div>


										<!-- <div class="row mb-3">
											<label for="about" class="col-md-4 col-lg-3 col-form-label">짧은 자기소개</label>
											<div class="col-md-8 col-lg-9">
												<textarea name="about" class="form-control" id="about"
													style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
											</div>
										</div> -->
									</form>
									<!-- End Profile Edit Form -->

								</div>
							</div>

						</div>

						<div class="col-12">
							<a href="javascript:;" class="text-muted float-end">탈퇴하기</a>
						</div>
					</div>
					<!-- //내정보 -->
				</div>
				<!-- 차단관리 -->
				<div class="row">
					<div class="my-detail">
						<nav>
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
								role="tablist">
								<!-- 탭 버튼 에는 active  -->
								<button class="nav-link active" id="nav-block-tab"
									data-bs-toggle="tab" data-bs-target="#nav-block" type="button"
									role="tab" aria-controls="nav-block" aria-selected="false">차단관리</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<!-- 차단관리 -->
							<div class="tab-pane fade show active" id="nav-block"
								role="tabpanel" aria-labelledby="nav-block-tab">

								<!-- 차단관리 연결할 예정 -->
								<div class="board_list">
									<!-- 차단 관리에 관련된 목록과 내용 -->
									<table class="table table-hover">
										<caption>목록 : 번호, 차단 날짜, 차단한 닉네임, 차단여부</caption>
										<colgroup>
											<col class="num" style="width: 70px">
											<col class="date" style="width: 300px;">
											<col class="name">
											<col class="category">
										</colgroup>
										<thead>
											<tr>
												<th scope="col" class="num">번호</th>
												<th scope="col" class="date">차단 날짜</th>
												<th scope="col" class="name">차단 닉네임</th>
												<th scope="col" class="category">차단 여부</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="num"><span class="tag_txt">1</span></td>
												<td class="date">2023.02.06</td>
												<td class="name">흑곰발바닥</td>
												<td class="category"><button type="button"
														class="btn btn-primary">차단 해제</button></td>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<td class="num"><span class="tag_txt">2</span></td>
												<td class="date">2022.02.01</td>
												<td class="name">이주형은 멋쟁이</td>
												<td class="category"><button type="button"
														class="btn btn-primary">차단 해제</button></td>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<td class="num"><span class="tag_txt">3</span></td>
												<td class="date">2021.11.26</td>
												<td class="name">2조 화이팅</td>
												<td class="category"><button type="button"
														class="btn btn-primary">차단 해제</button></td>
											</tr>
										</tbody>
										<tbody>
											<tr>
												<td class="num"><span class="tag_txt">4</span></td>
												<td class="date">2020.12.21</td>
												<td class="name">하성이형 아웃</td>
												<td class="category"><button type="button"
														class="btn btn-primary">차단 해제</button></td>
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
								</div>

							</div>
							<!-- //차단관리 -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<div role="footer" data-include="../Components/Footer.jsp"
			class="mt-auto"></div>
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