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
<title>Login</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<%-- <c:import url="../Components/Header.jsp"></c:import> --%>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<!-- <section class="m-body-area">
      <div class="container-xl"> -->

		<!-- 콘텐츠 내용 -->
		<div
			class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-lg-4 col-md-8 d-flex flex-column align-items-center justify-content-center">

						<div class="d-flex justify-content-center py-4">
							<a href="index.jsp" class="logo d-flex align-items-center w-auto">
								<span class="d-none d-lg-block">IT-MeetUp</span>
							</a>
						</div>
						<!-- End Logo -->

						<div class="card mb-3">

							<div class="card-body">

								<div class="pt-4 pb-2">
									<div class="h5 card-title text-center pb-0 fs-4">로그인</div>
								</div>

								<form action="loginok.action" method="get" id="loginForm"
									class="row g-3 needs-validation" novalidate>
									<div class="col-12 d-flex justify-content-end">
										<div class="form-check">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="admin" id="admin" name="admin">
												관리자
											</label>
										</div>
									</div>
									<div class="col-12">
										<div class="m-input-box">
											<label for="piId" class="form-label">아이디</label> <input
												type="text" class="form-control" id="piId" name="piId"
												required="required">
											<div class="invalid-feedback">아이디를 입력해주세요.</div>
										</div>
									</div>

									<div class="col-12">
										<div class="m-input-box">
											<label for="piPw" class="form-label">비밀번호</label> <input
												type="text" class="form-control" id="piPw" name="piPw"
												required="required">
											<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
										</div>
									</div>

									<div class="col-12">
										<button class="btn btn-primary w-100" type="submit">로그인</button>
									</div>

									<div class="col-12 login-search-box list-bar">
										<ul>
											<li><a href="javascript:;">회원가입</a></li>
											<li><a href="javascript:;" data-bs-toggle="modal"
												data-bs-target="#FindId">아이디찾기</a></li>
											<li><a href="javascript:;" data-bs-toggle="modal"
												data-bs-target="#ResetPassword">비밀번호찾기</a></li>
										</ul>
									</div>

									<div class="col-12 login-interlock list-bar">
										<p class="login-bar">or</p>
										<ul>
											<li><a href="javascript:;">구글</a></li>
											<li><a href="javascript:;">네이버</a></li>
											<li><a href="javascript:;">카카오</a></li>
										</ul>
									</div>
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>

		</div>


		<!-- </div>
    </section> -->
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<%-- <c:import url="../Components/Footer.jsp" ></c:import> --%>
		<!-- //푸터영역 -->

	</div>

	<!-- 회원가입 -->
	<div class="modal fade" id="Join" tabindex="-1"
		aria-labelledby="FindIdLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="FindIdLabel">아이디찾기</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>아이디를 메일로 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="piEmail" class="form-label">가입이메일</label> <input
									type="text" class="form-control" id="piEmail" name="piEmail"
									required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" type="submit">아이디찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //회원가입 -->
	<!-- 아이디찾기 -->
	<div class="modal fade" id="FindId" tabindex="-1"
		aria-labelledby="FindIdLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="FindIdLabel">아이디찾기</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>아이디를 메일로 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="piEmail" class="form-label">가입이메일</label> <input
									type="text" class="form-control" id="piEmail"
									required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" id="btn-findId" type="button">아이디찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //아이디찾기 -->
	<!-- 비밀번호찾기 -->
	<div class="modal fade" id="ResetPassword" tabindex="-1"
		aria-labelledby="ResetPasswordLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="ResetPasswordLabel">비밀번호</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>비밀번호 재설정 메일을 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>
						
						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label">가입이메일</label> <input
									type="text" class="form-control" id="loginId02"
									required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label">아이디</label> <input
									type="text" class="form-control" id="loginId02"
									required="required">
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" type="submit">비밀번호
								찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //비밀번호찾기 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script>
	$(function(){
		$("#btn-findId").click(function(){
			let piId = "";

			var ajaxRequest03 = null;

			if (ajaxRequest03 !== null) {
				ajaxRequest03.abort();
			}

			ajaxRequest03 = $.ajax(
			{
				type : "GET"
				, url : ""
				, data : { piNickname : piNickname }
				, success : function(searchNicknameCount){
					if (searchNicknameCount > 0) {
						piNicknameStr.next(".invalid-feedback").text("닉네임이 같습니다.");
						piNicknameStr.removeClass("is-valid").addClass("is-invalid");
						piNicknameStr.focus();
					} else {
						piNicknameStr.removeClass("is-invalid").addClass("is-valid");
					}
				}, error : function()
				{
					alert("닉네임 중복체크에 문제가 있습니다.");
				}
			});
		});
		
	});
	</script>
</body>

</html>