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
<title>GroupSetup</title>
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

							<c:forEach var="groupTeamNameItem" items="${groupTeamName }">
								<div class="h3">
									<span>${groupTeamNameItem.teamName}</span>
									<button type="button" id="teamnameUpdateButton"
										class="btn btn-primary" data-bs-toggle="modal"
										data-bs-target="#teamnameUpdate" value="${groupTeamNameItem.teamName}" onclick="NameModify()">
										<i class="bi bi-plus-lg"></i> 팀명 수정
									</button>
								</div>
							</c:forEach>

							<c:import url="../MeetGroup/M_GroupSetup.jsp"></c:import>


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
												<td>${groupSetupItem.repSuccess }/
													${groupSetupItem.repGrant }</td>
												<td><span class="badge bg-label-primary me-1">${groupSetupItem.leaPcCode }</span>
											</tr>
										</c:forEach>
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
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
				
		function NameModify()
		{
			$(location).attr("href", "groupSetupUpdate.action?code=" + $(this).val());
			$('#teamnameUpdate').load("../MeetGroup/M_GroupSetup.jsp");
			$('#teamnameUpdate').modal();
		}
	</script>

</body>

</html>