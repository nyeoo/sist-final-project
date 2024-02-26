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
/* .LayerMore {
	position: absolute;
	left: auto;
	right: 0;
	top: 100%;
	z-index: 1;
	max-height: 416px;
	padding: 8px 0;
	border: 1px solid rgba(0, 0, 0, .06);
	border-radius: 6px;
	box-shadow: 0 1px 12px 0 rgba(0, 0, 0, .06);
	background-color: #fff;
	box-sizing: border-box;
	color: #000;
} */
.modal-content {
	width: 350px;
}

.user-info-container {
	position: relative;
}

.col-md-4 .thumbnail {
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.thumbnail {
	background-color: #f0f0f0;
	height: 100%
}

/* .form-select {
	width: auto;
} */

/* .state-select {
	display: flex;
	justify-content: center;
} */

.h3 {padding: 20px;}
.content_tit {padding-bottom: 20px;}
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
						<h5 class="card-header">그룹원 설정</h5>
					</div>

					<div class="row">
						<div class="card tbl-card">


							<div class="h3">
								meet조
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#teamnameUpdate">
									<i class="bi bi-plus-lg"></i> 팀명 수정
								</button>
							</div>

							<div class="modal fade" id="teamnameUpdate" tabindex="-1"
								aria-labelledby="completeListLabel" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered">
									<div class="modal-content">
										<div class="modal-header">
											<h1 class="modal-title fs-5" id="completeListLabel">그룹원
												수정</h1>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="modal-contents">
												<div class="con-section complete-list">

													<div class="row">
														<div class="col-md-8">
															<div class="mb-3">
																<label for="teamName" class="form-label">팀명</label> <input
																	type="text" class="form-control" id="teamName"
																	name="teamName" value="meet조">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">나가기</button>
											<button type="button" class="btn btn-primary">수정하기</button>
										</div>
									</div>
								</div>
							</div>

							<div class="table-responsive text-nowrap">
								<table class="table">
									<thead>
										<tr>
											<th>번호</th>
											<th>아이디</th>
											<th>직무</th>
											<th>완료/부여</th>
											<th>상태</th>
										</tr>
									</thead>
									<tbody style="text-align: center;">

										<tr>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>1</strong></td>
											<td>
												<div class="user-info-container">
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex justify-content-center align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title=""><a href="#" role="button"
															class="layer_bottom"> <i class="bi bi-person">오수경</i>
														</a></li>
													</ul>
													<!-- <div id="writeNickNameMenu" role="menu" class="LayerMore"
															style="display: none;">
															<ul class="layer_list">
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">네임카드</a></li>
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">차단하기</a></li>
																<li class="layer_item"><a href="#" role="button"
																	class="layer_bottom">신고하기</a></li>
															</ul>
														</div> -->
												</div>
											</td>
											<td>기획</td>
											<td>분석</td>
											<td><span class="badge bg-label-primary me-1">진행중</span>
												<!-- <div class="state-select"
														style="text-align: center;">
														<select class="form-select" aria-label="상태" title="현재상태"
															id="state">
															<option value="1">진행중</option>
															<option value="2">이탈자</option>
														</select>
													</div> --></td>
											<!-- <td>
												<div class="updatedeletebtn">
													<button type="button" class="btn btn-primary">네임카드</button>
													<button type="button" class="btn btn-danger">차단하기</button>
													<button type="button" class="btn btn-secondary">신고하기</button>
												</div>
											</td> -->
										</tr>
										<tr>
											<td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>2</strong></td>
											<td>
												<ul
													class="list-unstyled users-list m-0 avatar-group d-flex justify-content-center align-items-center">
													<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
														data-bs-placement="top" class="avatar avatar-xs pull-up"
														title="" data-bs-original-title="Lilian Fuller"><i
														class="bi bi-person">엄재용</i></li>
												</ul>
											</td>
											<td>디자인</td>
											<td>설계</td>
											<td><span class="badge bg-label-warning me-1">이탈자</span>
											</td>
										</tr>
										<tr>
											<td><i class="fab fa-vuejs fa-lg text-success me-3"></i>
												<strong>3</strong></td>
											<td>
												<ul
													class="list-unstyled users-list m-0 avatar-group d-flex justify-content-center align-items-center">
													<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
														data-bs-placement="top" class="avatar avatar-xs pull-up"
														title="" data-bs-original-title="Lilian Fuller"><i
														class="bi bi-person">박나영</i></li>
												</ul>
											</td>
											<td>프론트엔드</td>
											<td>기획</td>
											<td><span class="badge bg-label-primary me-1">진행중</span>
											</td>
										</tr>
										<tr>
											<td><i class="fab fa-bootstrap fa-lg text-primary me-3"></i>
												<strong>4</strong></td>
											<td>
												<ul
													class="list-unstyled users-list m-0 avatar-group d-flex justify-content-center align-items-center">
													<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
														data-bs-placement="top" class="avatar avatar-xs pull-up"
														title="" data-bs-original-title="Lilian Fuller"><i
														class="bi bi-person">문정환</i></li>
												</ul>
											</td>
											<td>백엔드</td>
											<td>테스트</td>
											<td><span class="badge bg-label-warning me-1">이탈자</span>
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
		</section>
		<!-- //바디영역 -->

		<!-- 탭 -->
		<!-- <nav>
						<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
							role="tablist">
							<button class="nav-link" id="nav-profile-tab"
								data-bs-toggle="tab" data-bs-target="#nav-tab02" type="button"
								role="tab" aria-controls="nav-tab02" aria-selected="false">그룹원
								정보 조회/설정</button>
						</div>
					</nav> -->
		<!-- <div class="tab-content" id="nav-tabContent">
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
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#groupUpdate">
									<i class="bi bi-plus-lg"></i> 그룹 수정
								</button>
								<button type="button" class="btn btn-primary">그룹 나가기</button>
							</div>
							

							<div class="modal fade completeList-popup" id="groupUpdate"
								tabindex="-1" aria-labelledby="completeListLabel"
								aria-hidden="true">
								<div class="modal-dialog modal-dialog-scrollable">
									<div class="modal-content">
										<div class="modal-header">
											<h1 class="modal-title fs-5" id="completeListLabel">그룹
												수정</h1>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<div class="modal-contents" style="height: 500px;">

												<div class="con-section complete-list">

													<div class="row">
														<div class="col-md-6">
															<div class="mb-3">
																<label for="projectName" class="form-label">제목</label> <input
																	type="text" class="form-control" id="projectName"
																	name="projectName" value="어쩌구저쩌구 프로젝트">
															</div>
															<div class="mb-3">
																<label for="description" class="form-label">내용</label>
																<textarea class="form-control" id="description"
																	name="description" rows="5">내용을 수정하세요.</textarea>
															</div>
															<div class="mb-3">
																<label for="languages" class="form-label">사용기술</label> <input
																	type="text" class="form-control" id="languages"
																	name="languages" value="HTML, CSS, JavaScript">
															</div>
															<div class="mb-3">
																<label for="languages" class="form-label">역할별인원수</label>
																<input type="text" class="form-control" id="inwon"
																	name="languages" value="inwonsu~" disabled="disabled">
															</div>
														</div>
														<div class="col-md-6">
															<div class="mb-2" style="width: 200px; padding: 10px;">
																<label for="imagesss" class="form-label">썸네일 이미지</label>
																<div class="thumbnail rounded">
																	<img src="../../asset/images/ico_language_python.png">
																</div>
																<input type="file" id="thumbnailInput" accept="image/*">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">나가기</button>
											<button type="button" class="btn btn-primary">수정하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div> -->
		<!-- 푸터영역 -->
		<!-- <c:import url="../Components/Footer.jsp" ></c:import> -->
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script type="text/javascript">
		document.getElementById('writeNickNameButton').addEventListener(
				'click',
				function(event)
				{
					var menu = document.getElementById('writeNickNameMenu');
					if (menu.style.display === 'none'
							|| menu.style.display === '')
					{
						menu.style.display = 'block';
						menu.style.left = event.target.offsetLeft
								+ event.target.offsetWidth + 'px';
					} else
					{
						menu.style.display = 'none';
					}
				});

		document
				.getElementById('thumbnailInput')
				.addEventListener(
						'change',
						function(event)
						{
							var file = event.target.files[0];
							var thumbnailPreview = document
									.getElementById('thumbnailPreview');

							if (file)
							{
								var reader = new FileReader();
								reader.onload = function(e)
								{
									thumbnailPreview.innerHTML = '<img src="' + e.target.result + '">';
								}
								reader.readAsDataURL(file);
							}
						});
	</script>
</body>

</html>