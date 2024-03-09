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
					<p class="h3">Myinfo</p>
					<br>
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
									<p class="h2">${member.piNickname }</p>
									<p class="h5">@${member.piId }</p>
								</div>
							</div>

						</div>

						<div class="col-xl-8">

							<div class="card">
								<div class="card-body pt-3">
									<!-- Profile Edit Form -->
									<form>
										<input type="text" id="piMemCode" value="${member.piMemCode }">
										<input type="text" id="modifyFlag" name="modifyFlag" value="0">

										<div class="row mb-3">
											<label for="myId" class="col-md-4 col-lg-3 col-form-label">아이디</label>
											<div class="col-md-8 col-lg-9">
												<div class="input-group">
													<input name="myId" type="text"
														class="form-control form-control-plaintext" id="myId"
														value="${member.piId }" disabled="disabled">
													<button class="input-group-text btn btn-primary hidden" type="button" id="checkId">중복확인</button>
												</div>
											</div>
										</div>



										<div class="row mb-3">
											<label for="piPw" class="col-md-4 col-lg-3 col-form-label">비밀번호</label>
											<div class="col-md-8 col-lg-9">
												<input name="piPw" type="password" class="form-control"
													id="piPw" value="${member.piPw }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="piName" class="col-md-4 col-lg-3 col-form-label">이름</label>
											<div class="col-md-8 col-lg-9">
												<input name="piName" type="text" class="form-control"
													id="piName" value="${member.piName }">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">이메일</label>
											<div class="col-md-8 col-lg-9">
												<input name="piEmail" type="text" class="form-control"
													id="piEmail" value="${member.piEmail }">
											</div>
										</div>

										<div class="col-12 btn-box">
											<div class="btn-center">
												<button type="button" class="btn btn-primary"
													id="btn-myinfo-save" disabled="disabled">저장하기</button>
												<button type="button"
													class="btn btn-secondary btn-myinfo-modify"
													id="btn-myinfo-modify" data-bs-toggle="modal"
													data-bs-target="#modifyModal">수정하기</button>
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
										<c:forEach var="blockListItem" items="${blockList }">
											<tbody>
												<tr>
													<td class="num"><span class="tag_txt">${blockListItem.bloNo }</span></td>
													<td class="date">${blockListItem.bloDate }</td>
													<td class="name">${blockListItem.nickname }</td>
													<td class="category">
														<button type="button" class="btn btn-secondary btn-block"
															value="${blockListItem.bloNo }" id="unblock">차단
															해제</button>
													</td>
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
							</div>
							<!-- //차단관리 -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

		<!-- 본인확인 팝업 -->
		<div class="modal fade" id="modifyModal" tabindex="-1"
			aria-labelledby="modifyModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title fs-5 h1" id="modifyModalLabel">본인확인</div>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="row">
							<label for="piPwCheck" class="col-md-4 col-lg-3 col-form-label">비밀번호</label>
							<div class="col-md-8 col-lg-9">
								<input name="piPwCheck" type="text" class="form-control"
									id="piPwCheck" value="ljh1234">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							id="btn-myinfo-modify-action">확인</button>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
		$(function()
		{
			$(".btn-block").click(
					function()
					{
						//alert("확인~!!");
						if (confirm("해당 회원을 차단 해제 하시겠습니까?"))
						{

							$(location).attr("href",
									"remove.action?bloNo=" + $(this).val());
						}

					});

			// 비밀번호 확인
			$("#btn-myinfo-modify-action").click(
					function()
					{
						alert("확인");
						let piMemCode = $("#piMemCode").val();
						let piPwCheckStr = $("#piPwCheck");
						let piPwCheck = $("#piPwCheck").val();
						piPwCheckStr.removeClass("is-valid");

						var ajaxRequest = null;

						if (ajaxRequest !== null)
						{
							ajaxRequest.abort();
						}
						var params = "piMemCode=" + piMemCode + "&piPw="
								+ piPwCheck;
						ajaxRequest = $.ajax(
						{
							type : "get",
							url : "checkPw.action",
							data : params,
							success : function(searchPwCount)
							{
								if (searchPwCount < 0)
								{
									piPwCheckStr.next(".invalid-feedback")
											.text("비밀번호가 맞지 않습니다.");
									piPwCheckStr.removeClass("is-valid")
											.addClass("is-invalid");
									piPwCheckStr.focus();
								} else
								{
									piPwCheckStr.removeClass("is-invalid")
											.addClass("is-valid");
									$("#modifyFlag").val("1");
									$("#modifyModal .btn-close").trigger(
											"click");
									modifyCheck();
								}
							},
							error : function()
							{
								alert("비밀번호 확인에 문제가 있습니다.");
							}
						});
					});

			// 비밀번호 확인 되었을 경우 html 처리
			function modifyCheck()
			{
				var modifyFlag = $("#modifyFlag").val();
				var myId = $("#myId");
				var piPw = $("#piPw");
				var piName = $("#piName");
				var piEmail = $("#piEmail");
				var btnModify = $("#btn-myinfo-modify");
				var btnSave = $("#btn-myinfo-save");
				var btnCheckId = $("#checkId");

				if (modifyFlag == 0)
				{
					myId.addClass("form-control-plaintext").attr("disabled",
							true);
					piPw.addClass("form-control-plaintext").attr("disabled",
							true).attr("type", "password");
					;
					piName.addClass("form-control-plaintext").attr("disabled",
							true);
					piEmail.addClass("form-control-plaintext").attr("disabled",
							true);
				} else if (modifyFlag == 1)
				{
					myId.removeClass("form-control-plaintext").attr("disabled",
							false);
					piPw.removeClass("form-control-plaintext").attr("disabled",
							false).attr("type", "text");
					;
					piName.removeClass("form-control-plaintext").attr(
							"disabled", false);
					piEmail.removeClass("form-control-plaintext").attr(
							"disabled", false);
					btnModify.attr("disabled", true);
					btnSave.attr("disabled", false);
				}
			}

			modifyCheck();
		});
	</script>
</body>

</html>