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
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_lhs.css">

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
											<th>닉네임</th>
											<th>직무</th>
											<th>완료/부여</th>
											<th>상태</th>
										</tr>
									</thead>
									<tbody style="text-align: center;">
										
										<c:forEach var="groupSetupItem" items="${groupSetupList }">
										<tr>
											<td><i class="fab fa-angular fa-lg text-danger me-3"></i>
												<strong>${groupSetupItem.opCode }</strong></td>
											<td>
												<div class="user-info-container">
													<ul
														class="list-unstyled users-list m-0 avatar-group d-flex justify-content-center align-items-center">
														<li data-bs-toggle="tooltip" data-popup="tooltip-custom"
															data-bs-placement="top" class="avatar avatar-xs pull-up"
															title=""><a href="../MyPage/NameCard.jsp"
															role="button" class="layer_bottom"> <i
																class="bi bi-person">${groupSetupItem.piNickName }</i>
														</a></li>
													</ul>
												</div>
											</td>
											<td>${groupSetupItem.jobName }</td>
											<td>${groupSetupItem.jobName }</td>
											<td><span class="badge bg-label-primary me-1">${groupSetupItem.leaPcCode }</span>
										</tr>
										</c:forEach>
										
									
										<!-- <tr>
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
											<td>0/2</td>
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
											<td>1/4</td>
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
											<td>2/3</td>
											<td><span class="badge bg-label-warning me-1">이탈자</span>
											</td>
										</tr> -->
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