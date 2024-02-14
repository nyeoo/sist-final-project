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
<title>GroupHome</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">
<style type="text/css">
.icon {
	text-align: center;
}

.LayerMore {
	overflow-y: auto;
	position: absolute;
	top: auto;
	left: 0;
	z-index: 1;
	max-height: 416px;
	padding: 8px 0;
	border: 1px solid rgba(0, 0, 0, .06);
	border-radius: 6px;
	box-shadow: 0 1px 12px 0 rgba(0, 0, 0, .06);
	background-color: #fff;
	box-sizing: border-box;
	color: #000;
}

.user-info-container {
	position: relative;
}

#writeNickNameMenu {
	position: absolute;
	top: 100%;
	left: 0;
	transform: translateX(-100%);
}

.button-right {
	text-align: right;
	margin-top: 10px;
}

.col-md-4 .thumbnail {
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.thumbnail {background-color: #f0f0f0; height: 100%}

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

				<!-- 사이드 영역 -->
				<c:import url="../Components/Side.jsp"></c:import>
				<!-- //사이드 영역 -->

				<!-- 콘텐츠 -->
				<div class="content">

					<div class="content_tit">
						<p class="h3">그룹 정보 설정</p>
					</div>

					<!-- 탭 -->
					<nav>
						<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
							role="tablist">
							<button class="nav-link active" id="nav-tab01-tab"
								data-bs-toggle="tab" data-bs-target="#nav-tab01" type="button"
								role="tab" aria-controls="nav-tab01" aria-selected="true">그룹
								정보 조회/수정</button>
							<button class="nav-link" id="nav-profile-tab"
								data-bs-toggle="tab" data-bs-target="#nav-tab02" type="button"
								role="tab" aria-controls="nav-tab02" aria-selected="false">그룹원
								정보 조회/설정</button>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-tab01"
							role="tabpanel" aria-labelledby="nav-tab01-tab">

							<div class="row">
								<h5 class="card-header">그룹 설정</h5>

								<div class="col-md-8">
									<div class="card-body pt-3">
										<form>

											<div class="row mb-3">
												<label for="title" class="col-md-3 col-lg-2 col-form-label">제목</label>
												<div class="col-md-9 col-lg-10">자바 프로젝트</div>
											</div>

											<div class="row mb-3">
												<label for="content"
													class="col-md-3 col-lg-2 col-form-label">내용</label>
												<div class="col-md-9 col-lg-10">
													<textarea name="content" class="form-control" id="content"
														style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
												</div>
											</div>

											<div class="row mb-3">
												<label for="useSkill"
													class="col-md-3 col-lg-2 col-form-label">사용기술</label>
												<div class="col-md-9 col-lg-10">
													<ul class="skill-check">
														<li>
															<div class="form-check skill-item">
																<label class="form-check-label"> <input
																	class="form-check-input" type="checkbox" value="" id="">
																	Default checkbox
																</label>
															</div>
														</li>
														<li>
															<div class="form-check skill-item">
																<label class="form-check-label"> <input
																	class="form-check-input" type="checkbox" value="" id="">
																	Default checkbox
																</label>
															</div>
														</li>
														<li>
															<div class="form-check skill-item">
																<label class="form-check-label"> <input
																	class="form-check-input" type="checkbox" value="" id="">
																	Default checkbox
																</label>
															</div>
														</li>
														<li>
															<div class="form-check skill-item">
																<label class="form-check-label"> <input
																	class="form-check-input" type="checkbox" value="" id="">
																	Default checkbox
																</label>
															</div>
														</li>
														<li>
															<div class="form-check skill-item">
																<label class="form-check-label"> <input
																	class="form-check-input" type="checkbox" value="" id="">
																	Default checkbox
																</label>
															</div>
														</li>
													</ul>
												</div>
											</div>

											<div class="row mb-3">
												<label for="partPerson"
													class="col-md-3 col-lg-2 col-form-label">역할별 인원수</label>
												<div class="col-md-9 col-lg-10 m-select">
													<div class="row">
														<div class="col-6 m-select">???</div>
													</div>
												</div>
											</div>


										</form>
									</div>

								</div>
								<div class="col-md-4">
									<div class="thumbnail rounded">
										<img src="../../asset/images/ico_language_python.png">
									</div>
								</div>
							</div>
							<div class="button-right">
								<button type="button" class="btn btn-primary">그룹 수정</button>
								<button type="button" class="btn btn-primary">그룹 나가기</button>
							</div>

						</div>
						<div class="tab-pane fade" id="nav-tab02" role="tabpanel"
							aria-labelledby="nav-tab02-tab">


							<div class="card tbl-card">
								<h5 class="card-header">그룹원 설정</h5>
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead>
											<tr>
												<th>번호</th>
												<th>역할</th>
												<th>아이디</th>
												<th>Status</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
													<strong>1</strong></td>
												<td>분석</td>
												<td>
													<div class="user-info-container">
														<ul
															class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
															<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
																data-bs-placement="top" class="avatar avatar-xs pull-up"
																title="">
																<button id="writeNickNameButton" class="nickName">
																	<i class="bi bi-person">오수경</i>
																</button>
															</li>
														</ul>
														<div id="writeNickNameMenu" role="menu" class="LayerMore"
															style="display: none;">
															<ul class="layer_list">
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">네임카드</a></li>
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">차단하기</a></li>
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">신고하기</a></li>
															</ul>
														</div>
													</div>
												</td>
												<td><span class="badge bg-label-primary me-1">Active</span></td>
												<td>
													<div class="dropdown">
														<button type="button"
															class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bi bi-three-dots-vertical"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-pencil-square"></i> 수정</a> <a
																class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-trash3"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>2</strong></td>
												<td>설계</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><i
															class="bi bi-person">엄재용</i></li>
													</ul>
												</td>
												<td><span class="badge bg-label-success me-1">Completed</span></td>
												<td>
													<div class="dropdown">
														<button type="button"
															class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bi bi-three-dots-vertical"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-pencil-square"></i> Edit</a> <a
																class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-trash3"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-vuejs fa-lg text-success me-3"></i>
													<strong>3</strong></td>
												<td>기획</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><i
															class="bi bi-person">박나영</i></li>
													</ul>
												</td>
												<td><span class="badge bg-label-info me-1">Scheduled</span></td>
												<td>
													<div class="dropdown">
														<button type="button"
															class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bi bi-three-dots-vertical"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-pencil-square"></i> Edit</a> <a
																class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-trash3"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td><i class="fab fa-bootstrap fa-lg text-primary me-3"></i>
													<strong>4</strong></td>
												<td>테스트</td>
												<td>
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title="" data-bs-original-title="Lilian Fuller"><i
															class="bi bi-person">문정환</i></li>
													</ul>
												</td>
												<td><span class="badge bg-label-warning me-1">Pending</span></td>
												<td>
													<div class="dropdown">
														<button type="button"
															class="btn p-0 dropdown-toggle hide-arrow"
															data-bs-toggle="dropdown">
															<i class="bi bi-three-dots-vertical"></i>
														</button>
														<div class="dropdown-menu">
															<a class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-pencil-square"></i> Edit</a> <a
																class="dropdown-item" href="javascript:void(0);"><i
																class="bi bi-trash3"></i> Delete</a>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- 탭 -->

				</div>
				<!-- //콘텐츠 -->

			</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<!-- <c:import url="../Components/Footer.jsp" ></c:import> -->
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		document.getElementById('writeNickNameButton').addEventListener(
				'click',
				function()
				{
					var menu = document.getElementById('writeNickNameMenu');
					if (menu.style.display === 'none'
							|| menu.style.display === '')
					{
						menu.style.display = 'block';
					} else
					{
						menu.style.display = 'none';
					}
				});
	</script>
</body>

</html>