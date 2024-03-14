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
						<div class="col-md-4">
							<div class="card">
								<div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

									<div class="profile-img-box">
										<div class="profile-img">
											<img src="<%=cp %>/asset/images/img_sample00.jpg" alt="썸네일샘플">
										</div>
										<div class="pt-2 profile-img-btn">
											<a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a> <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
										</div>
									</div>
									<p class="h2">${member.piNickname }</p>
									<p class="h5">@${member.piId }</p>
								</div>
							</div>

						</div>

						<div class="col-md-8">

							<div class="card">
								<div class="card-body pt-3">
									<!-- Profile Edit Form -->
									<form method="get" name="myinfoForm">
										<input type="text" id="piMemCode" name="piMemCode" value="${member.piMemCode }">
										<input type="text" id="modifyFlag" name="modifyFlag" value="0">

										<div class="row mb-3">
											<label for="piId" class="col-md-4 col-lg-3 col-form-label">아이디</label>
											<div class="col-md-8 col-lg-9">
												<div class="input-group">
													<input name="piId" type="text" class="form-control form-control-plaintext" id="piId" value="${member.piId }" disabled="disabled" oninput="regexCheck(this,id_check);modifyConfirm();">
													<button class="input-group-text btn btn-primary hidden" type="button" id="myinfoCheckId">중복확인</button>
													<div class="invalid-feedback">아이디를 입력해주세요.</div>
													<div class="invalid-regx">영문 소문자, 숫자 6~12자리 / 특수문자X, 한글X</div>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="piId" class="col-md-4 col-lg-3 col-form-label">닉네임</label>
											<div class="col-md-8 col-lg-9">
												<div class="input-group">
													<input name="piNickname" type="text" class="form-control form-control-plaintext" id="piNickname" value="${member.piNickname }" disabled="disabled" oninput="regexCheck(this,nickname_check);modifyConfirm();">
													<button class="input-group-text btn btn-primary hidden" type="button" id="myInfoCheckNickname">중복확인</button>
													<div class="invalid-feedback">닉네임을 입력해주세요.</div>
													<div class="invalid-regx">한글, 영문 2~8자리</div>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="piPw" class="col-md-4 col-lg-3 col-form-label" oninput="pwCheck(this)">비밀번호</label>
											<div class="col-md-8 col-lg-9">
												<input name="piPw" type="password" class="form-control" id="piPw" value="${member.piPw }" oninput="regexCheck(this,pw_check);modifyConfirm();">
												<div class="invalid-regx">영문 소문자, 숫자 6~12자리 / 특수문자O, 한글X</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="piName" class="col-md-4 col-lg-3 col-form-label">이름</label>
											<div class="col-md-8 col-lg-9">
												<input name="piName" type="text" class="form-control" id="piName" value="${member.piName }" oninput="regexCheck(this,name_check);modifyConfirm();">
												<div class="invalid-regx">한글 2~8자리</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="Email" class="col-md-4 col-lg-3 col-form-label">이메일</label>
											<div class="col-md-8 col-lg-9">
												<input name="piEmail" type="text" class="form-control" id="piEmail" value="${member.piEmail }" oninput="regexCheck(this,email_check);modifyConfirm();">
												<div class="invalid-regx">이메일형식</div>
											</div>
										</div>

										<div class="col-12 btn-box">
											<div class="btn-center">
												<button type="button" class="btn btn-primary" id="btn-myinfo-save" id="btn-myinfo-modify" disabled="disabled"
												<%-- data-bs-toggle="modal" data-bs-target="#infoModal"--%>>저장하기</button>
												<button type="button" class="btn btn-secondary btn-myinfo-modify" id="btn-myinfo-modify" data-bs-toggle="modal" data-bs-target="#modifyModal">수정하기</button>
											</div>
										</div>
										
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
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab" role="tablist">
								<!-- 탭 버튼 에는 active  -->
								<button class="nav-link active" id="nav-block-tab" data-bs-toggle="tab" data-bs-target="#nav-block" type="button" role="tab" aria-controls="nav-block" aria-selected="false">차단관리</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<!-- 차단관리 -->
							<div class="tab-pane fade show active" id="nav-block" role="tabpanel" aria-labelledby="nav-block-tab">

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
														<button type="button" class="btn btn-secondary btn-block" value="${blockListItem.bloNo }" id="unblock">차단 해제</button>
													</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>

									<div class="comp_box">
										<nav aria-label="Page navigation example">
											<ul class="pagination">
												<li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
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

		<!-- 수정완료안내 팝업 -->
		<div class="modal fade" id="infoModal" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title fs-5 h1" id="modifyModalLabel">수정확인</div>
						<!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
					</div>
					<div class="modal-body">
						<div class="modal-txt">수정되었습니다.</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="btn-myinfo-confirm" data-bs-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 본인확인 팝업 -->
		<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="modifyModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title fs-5 h1" id="modifyModalLabel">본인확인</div>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="row">
							<label for="piPwCheck" class="col-md-4 col-lg-3 col-form-label">비밀번호</label>
							<div class="col-md-8 col-lg-9">
								<input name="piPwCheck" type="text" class="form-control" id="piPwCheck" value="ljh1234">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="btn-myinfo-modify-action">확인</button>
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
	
	let get_piId = document.querySelector("#piId");
	let get_piNickName = document.querySelector("#piNickname");
	let get_piPw = document.querySelector("#piPw");
	let get_piName = document.querySelector("#piName");
	let get_piEmail = document.querySelector("#piEmail");
	let btn_myinfo_save = document.querySelector("#btn-myinfo-save");
	
	// input 중복체크후 입력시
	function inputOninput(target)
	{
		target.classList.remove("is-valid");
	}
	
	/* 정규표현식 ---------------------------------------------------------------- */
	// 아이디 - 영문 소문자, 숫자 6~12자리 / 특수문자X, 한글X
	const id_check = /^[a-z0-9\S][^[#?!@$ %^&*가-힣ㄱ-ㅎ]{5,11}$/;
	// 비밀번호 - 영문 소문자, 숫자 6~12자리 / 특수문자O, 한글X
	const pw_check = /^[a-z0-9\S*?[#?!@$ %^&*][^가-힣A-Z]{5,11}$/;
	///[^?a-zA-Z0-9/]/
	//const password =/^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	// 특문
	const special_char = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/;
	const comma_char = /,/g;
	const blank = /[\s]/g;
	// 닉네임 - 한글, 영문 2~8자리
	const nickname_check =/^[가-힣a-zA-Z]{1,8}$/;
	// 이름 - 한글 2~8자리
	const name_check =/^[가-힣]{1,7}$/;
	// 이메일 형식
	var email_check =/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	// 정규화 체크
	function regexCheck(target, checkname)
	{
		let text = target.value;
		if(checkname.test(text)){
			target.classList.remove("is-uncheck");
			target.classList.add("is-check");
		}else{
			target.classList.remove("is-check");
			target.classList.add("is-uncheck");
		}
	}
	
	// 수정가능 여부에 따른 버튼 노출
	function modifyConfirm()
	{
		if(get_piId.classList.contains("is-check")
			&& 	get_piNickName.classList.contains("is-check")
			&& 	get_piPw.classList.contains("is-check")
			&& 	get_piName.classList.contains("is-check")
			&& 	get_piEmail.classList.contains("is-check")
		){
			btn_myinfo_save.disabled=false;
		}else{
			btn_myinfo_save.disabled=true;
		}
	}
	
	$(function()
	{
		let piId = $("#piId");
		let piNickName = $("#piNickname");
		let piPw = $("#piPw");
		let piName = $("#piName");
		let piEmail = $("#piEmail");
		
		$(".btn-block").click(
			function()
			{
				if (confirm("해당 회원을 차단 해제 하시겠습니까?"))
				{
					$(location).attr("href","remove.action?bloNo=" + $(this).val());
				}
			}
		);
		
		/* ajax 관련 ---------------------------------------------------------------- */
		// 수정안내 팝업
		$("#btn-myinfo-save").click(function(){
			let checkIdFlag = false;
			let checkNicknameFlag = false;
			
			// 아이디 중복체크 여부
			if(piId.hasClass("is-valid"))
			{
				checkIdFlag = true;
			}else{
				piId.next().next(".invalid-feedback").text("중복체크 확인해주세요");
				piId.addClass("is-invalid").focus();
			}
			
			// 비밀번호 중복체크 여부
			if(piNickName.hasClass("is-valid"))
			{
				checkNicknameFlag = true;
			}else{
				piNickName.next().next(".invalid-feedback").text("중복체크 확인해주세요");
				piNickName.addClass("is-invalid").focus();
			}

			if(checkIdFlag==true && checkNicknameFlag==true){
				$('#infoModal').modal('show');
			}
		});
		
		$("#btn-myinfo-confirm").click(function(){
			let f = document.myinfoForm;
			f.action = "<%=cp%>/myinfomodify.action";
			f.submit();				
		});
		
		// 비밀번호 확인
		$("#btn-myinfo-modify-action").click(function(){
			let piMemCode = $("#piMemCode").val();
			let piPwCheckStr = $("#piPwCheck");
			let piPwCheck = $("#piPwCheck").val();
			piPwCheckStr.removeClass("is-valid");
			let params = "piMemCode=" + piMemCode + "&piPw=" + piPwCheck;

			let ajaxRequest = null;
			if (ajaxRequest !== null){ ajaxRequest.abort();}
			ajaxRequest = $.ajax(
			{
				type : "get",
				url : "checkPw.action",
				data : params,
				success : function(searchPwCount)
				{
					if (searchPwCount <= 0)
					{
						piPwCheckStr.next(".invalid-feedback").text("비밀번호가 맞지 않습니다.");
						piPwCheckStr.removeClass("is-valid").addClass("is-invalid");
						piPwCheckStr.focus();
					} else
					{
						piPwCheckStr.removeClass("is-invalid").addClass("is-valid");
						$("#modifyFlag").val("1");
						$("#modifyModal .btn-close").trigger("click");
						modifyCheck();
					}
				}, error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});

		// 비밀번호 확인 되었을 경우 html 처리
		function modifyCheck()
		{
			let modifyFlag = $("#modifyFlag").val();
			let btnModify = $("#btn-myinfo-modify");
			let btnSave = $("#btn-myinfo-save");
			let btnCheckId = $("#myinfoCheckId");
			let btnCheckNickname = $("#myInfoCheckNickname");

			if (modifyFlag == 0) // 조회
			{
				piId.addClass("form-control-plaintext").removeClass("is-check").attr("disabled",true);
				piNickName.addClass("form-control-plaintext").removeClass("is-check").attr("disabled",true);
				piPw.addClass("form-control-plaintext").removeClass("is-check").attr("disabled",true).attr("type", "password");
				piName.addClass("form-control-plaintext").removeClass("is-check").attr("disabled",true);
				piEmail.addClass("form-control-plaintext").removeClass("is-check").attr("disabled",true);
			} else if (modifyFlag == 1) // 수정
			{
				piId.removeClass("form-control-plaintext").addClass("is-check").attr("disabled",false);
				piNickName.removeClass("form-control-plaintext").addClass("is-check").attr("disabled",false).attr("type", "text");
				piPw.removeClass("form-control-plaintext").addClass("is-check").attr("disabled",false).attr("type", "text");
				piName.removeClass("form-control-plaintext").addClass("is-check").attr("disabled", false);
				piEmail.removeClass("form-control-plaintext").addClass("is-check").attr("disabled", false);
				btnModify.attr("disabled", true);
				btnSave.attr("disabled", false);
				btnCheckId.removeClass("hidden");
				btnCheckNickname.removeClass("hidden");
			}
		}

		modifyCheck();
		
		
		// 아이디 중복체크
		$("#myinfoCheckId").click(function(){
			let piIdStr = $("#piId");
			let piId = $("#piId").val();
			let piMemCode = $("#piMemCode").val();
			let params = "piMemCode=" + piMemCode + "&piId=" + piId;
			
			let ajaxRequest = null;
			if (ajaxRequest !== null) {ajaxRequest.abort();}
			ajaxRequest = $.ajax(
			{
				type: "GET"
				, url: "myinfocheckid.action"
				, data: params
				, success: function(searchCount)
				{
					if(searchCount>0)
					{
						piIdStr.next(".invalid-feedback").text("아이디가 같습니다.");
						piIdStr.removeClass("is-valid").addClass("is-invalid");
						piIdStr.focus();
					}else{
						piIdStr.removeClass("is-invalid").addClass("is-valid").attr("readonly",true);
					}
				}
				, error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});
		
		// 닉네임 중복체크
		$("#myInfoCheckNickname").click(function(){
			let piNicknameStr = $("#piNickname");
			let piNicknameVal = $("#piNickname").val();
			let piMemCode = $("#piMemCode").val();
			let params = "piMemCode=" + piMemCode + "&piNickname=" + piNicknameVal;

			let ajaxRequest02 = null;
			if (ajaxRequest02 !== null) {ajaxRequest02.abort();}
			ajaxRequest02 = $.ajax(
			{
				type : "GET"
				, url : "myinfochecknickname.action"
				, data : params
				, success : function(searchNicknameCount){
					if (searchNicknameCount > 0) {
						piNicknameStr.next(".invalid-feedback").text("닉네임이 같습니다.");
						piNicknameStr.removeClass("is-valid").addClass("is-invalid");
						piNicknameStr.focus();
					} else {
						piNicknameStr.removeClass("is-invalid").addClass("is-valid").attr("readonly",true);
					}
				}, error:function(request,status,error){
					console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			});
		});

	});
	</script>
</body>

</html>