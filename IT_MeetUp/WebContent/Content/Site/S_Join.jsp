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
<title>Join</title>
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
		<%-- <c:import url="../Components/Header.jsp"></c:import> --%>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<!-- <section class="m-body-area">
      <div class="container-xl"> -->

		<!-- 콘텐츠 내용 -->
		<div class="section register join min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10 col-lg-8 d-flex flex-column align-items-center justify-content-center">
						<div class="d-flex justify-content-center py-4">
							<a href="index.jsp" class="logo d-flex align-items-center w-auto"> <span class="d-none d-lg-block"><a class="navbar-brand" href="#">Meet
										Up</a></span>
							</a>
						</div>
						<!-- End Logo -->
						<div class="card mb-3 join-area">

							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">회원가입</div>
								</div>

								<!-- 회원가입 Swiper -->
								<div class="swiper join-swiper">
									<div class="swiper-btn">
										<button type="button" class="swiper-button-prev">
											<i class="bi bi-arrow-left-circle"></i> <span class="blind">이전</span>
										</button>
										<button type="button" class="swiper-button-next">
											<i class="bi bi-arrow-right-circle"></i> <span class="blind">이후</span>
										</button>
									</div>
									<div class="swiper-pagination"></div>
									<div class="swiper-wrapper">
										<!-- 회원가입1 -->
										<div class="swiper-slide">
											<form class="row g-3 needs-validation" novalidate>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinName01" class="form-label h5">이름</label> <input type="text" class="form-control" id="joinName01" required="">
														<div class="invalid-feedback">이름을 입력해주세요.</div>
													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinId01" class="form-label h5">아이디</label>
														<div class="row col-12">
															<div class="col-12 col-md-7">
																<input type="text" class="form-control" id="joinId01" required="">
																<div class="invalid-feedback">아이디를 입력해주세요.</div>
															</div>
															<div class="col-12 col-md-5">
																<button class="btn btn-primary w-100" type="button">중복확인</button>
															</div>
														</div>
													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinPw01" class="form-label h5">비밀번호</label> <input type="text" class="form-control" id="joinPw01" required="">
														<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinPwCheck01" class="form-label h5">비밀번호 확인</label> <input type="text" class="form-control" id="joinPwCheck01" required="">
														<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinEmail01" class="form-label h5">이메일</label>
														<div class="row col-12">
															<div class="col-12 col-md-7">
																<input type="text" class="form-control" id="joinEmail01" required="">
																<div class="invalid-feedback">이메일을 입력해주세요.</div>
															</div>
															<div class="col-12 col-md-5">
																<div class="m-select">
																	<select class="form-select" aria-label="Default select example" title="selectTitle01">
																		<option selected="">-선택-</option>
																		<option value="1">@naver.com</option>
																		<option value="2">@gmail.com</option>
																		<option value="3">@daum.net</option>
																	</select>
																</div>
															</div>
														</div>

													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="loginPassword01" class="form-label h5">닉네임</label>
														<div class="row col-12">
															<div class="col-12 col-md-7">
																<input type="text" class="form-control" id="loginPassword01" required="">
																<div class="invalid-feedback">닉네임을 입력해주세요.</div>
															</div>
															<div class="col-12 col-md-5">
																<button class="btn btn-primary w-100" type="button">중복확인</button>
															</div>
														</div>

													</div>
												</div>

												<div class="col-12">
													<button class="btn btn-primary w-100" type="submit">다음단계</button>
												</div>
											</form>
										</div>
										<!-- //회원가입1 -->
										<!-- 회원가입2 -->
										<div class="swiper-slide">
											<form class="row g-3 needs-validation" novalidate>

												<div class="col-12">
													<div class="m-input-box">
														<label for="selectJoinJob" class="form-label h5">직무</label>
														<div class="row col-12">
															<div class="col-4">
																<div class="m-select">
																	<select class="form-select" aria-label="Default select example" title="selectJoinJob">
																		<option selected="">-선택-</option>
																		<option value="1">기획</option>
																		<option value="2">디자인</option>
																		<option value="3">프론트개발</option>
																		<option value="4">백엔드개발</option>
																	</select>
																</div>
																<div class="invalid-feedback">직무를 입력해주세요.</div>
															</div>
														</div>
													</div>
												</div>

												<div class="col-12">
													<ul class="career-col-box">
														<li>
															<div class="form-label label-tit h5">경력</div>
															<div class="row col-12">
																<div class="col-12 col-md-4">
																	<div class="m-input-box">
																		<label for="selectJoinCareer" class="form-label">경력직무</label>
																		<div class="m-select">
																			<select class="form-select" aria-label="Default select example" title="selectJoinCareer">
																				<option selected="">-선택-</option>
																				<option value="1">기획</option>
																				<option value="2">디자인</option>
																				<option value="3">프론트개발</option>
																				<option value="4">백엔드개발</option>
																			</select>
																		</div>
																		<div class="invalid-feedback">아이디를 입력해주세요.</div>
																	</div>
																</div>
																<div class="row col-10 col-md-6 range-datepicker">
																	<div class="col-6 m-input-cal">
																		<label for="job-date-from" class="form-label">시작날짜</label> <input type="text" class="form-control job-date-from" id="date-from">
																	</div>
																	<div class="col-6 m-input-cal">
																		<label for="job-date-to" class="form-label">종료날짜</label> <input type="text" class="form-control job-date-to" id="date-to">
																	</div>
																</div>
																<div class="col-2">
																	<span class="form-label no-txt"></span>
																	<button class="btn btn-primary w-100 btn-more-one" type="button" title="경력 추가">
																		<i class="bi bi-plus-circle-dotted"></i>
																	</button>
																</div>
															</div>
														</li>
													</ul>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="jobArea01" class="form-label h5">활동지역</label>
														<div class="row col-12">
															<div class="col-6">
																<div class="m-select">
																	<select class="form-select" aria-label="Default select example" id="jobArea01" title="jobArea01">
																		<option selected="">-선택-</option>
																		<option value="1">서울</option>
																		<option value="2">경기도</option>
																		<option value="3">인천</option>
																		<option value="4">부산</option>
																	</select>
																</div>
																<div class="invalid-feedback">선호지역1을(를) 입력해주세요.</div>
															</div>
															<div class="col-6">
																<div class="m-select">
																	<select class="form-select" aria-label="Default select example" id="jobArea02" title="jobArea02">
																		<option selected="">-선택-</option>
																		<option value="1">마포구</option>
																		<option value="2">중구</option>
																		<option value="3">강서구</option>
																		<option value="4">수원시 영통구</option>
																	</select>
																</div>
																<div class="invalid-feedback">선호지역2을(를) 입력해주세요.</div>
															</div>
														</div>
													</div>
												</div>

												<div class="col-12">
													<div class="m-input-box">
														<label for="joinMeet" class="form-label h5">모임방식</label>
														<div class="row col-12">
															<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
																<input type="radio" class="btn-check" name="btnradio" id="joinMeet01" autocomplete="off" checked=""> <label
																	class="btn btn-outline-primary" for="joinMeet01">온라인</label> <input type="radio" class="btn-check" name="btnradio" id="joinMeet02"
																	autocomplete="off"> <label class="btn btn-outline-primary" for="joinMeet02">오프라인</label> <input type="radio" class="btn-check"
																	name="btnradio" id="joinMeet03" autocomplete="off"> <label class="btn btn-outline-primary" for="joinMeet03">온/오프라인 </label>
															</div>
															<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
														</div>
													</div>
												</div>

												<div class="col-12">
													<button class="btn btn-primary w-100" type="submit">다음단계</button>
												</div>
											</form>
										</div>
										<!-- //회원가입2 -->
										<!-- 회원가입3 -->
										<div class="swiper-slide">
											<form class="row g-3 needs-validation" novalidate>
												<!-- 희망기술 -->
												<div id="item-2-3" class="col-12">
													<p class="h5">희망기술</p>
													<div class="skill-box">
														<nav>
															<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
																<button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab"
																	aria-controls="nav-home" aria-selected="true">프론트</button>
																<button class="nav-link" id=av-profile-tab " data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab"
																	aria-controls="nav-profile" aria-selected="false">백엔드</button>
																<button class="nav-link" id자인av-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab"
																	aria-controls="nav-contact" aria-selected="false">기획, 디자인, 개발툴</button>
															</div>
														</nav>
														<div class="tab-content" id="nav-tabContent">
															<div class="tab-pane fade show active" id="nav-home" role="skill01" aria-labelledby="nav-home-tab">
																<ul class="skill-check">
																	<li><input class="btn-check skil" type="checkbox" value="HTML5" id="html" autocomplete="off"> <label
																		class="btn btn-light" for="html"> HTML5 </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="CSS" id="css" autocomplete="off"> <label class="btn btn-light"
																		for="css" id="csslabel"> CSS </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="JavaScript" id="javasSript" autocomplete="off"> <label
																		class="btn btn-light" for="javasSript"> JavaScript </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="TypeScript" id="typeScript" autocomplete="off"> <label
																		class="btn btn-light" for="typeScript"> TypeScript </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="React" id="react" autocomplete="off"> <label
																		class="btn btn-light" for="react"> React </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Vue" id="vue" autocomplete="off"> <label class="btn btn-light"
																		for="vue"> Vue </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Svelte" id="svelte" autocomplete="off"> <label
																		class="btn btn-light" for="svelte"> Svelte </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Next.js" id="next.js" autocomplete="off"> <label
																		class="btn btn-light" for="next.js"> Next.js </label></li>
																</ul>
															</div>
															<div class="tab-pane fade" id="nav-profile" role="skill02" aria-labelledby="nav-profile-tab">
																<ul class="skill-check">
																	<li><input class="btn-check skil" type="checkbox" value="Ruby" id="Ruby" autocomplete="off"> <label
																		class="btn btn-outline-primary" for="Ruby"> Ruby </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="JAVA" id="java" autocomplete="off"> <label
																		class="btn btn-outline-dark" for="java"> JAVA </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="JSP" id="jsp" autocomplete="off"> <label
																		class="btn btn-outline-light" for="jsp"> JSP </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Python" id="Python" autocomplete="off"> <label
																		class="btn btn-outline-info" for="Python"> Python </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="C#" id="C#"> <label class="btn btn-outline-warning" for="C#">
																			C# </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="C++" id="C++"> <label class="btn btn-outline-danger" for="C++">
																			C++ </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="C" id="C"> <label class="btn btn-outline-success" for="C">
																			C </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="ORACLE" id="ORACLE"> <label class="btn btn-outline-secondary"
																		for="ORACLE"> ORACLE </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="MySQL" id="MySQL"> <label class="btn btn-success" for="MySQL">
																			MySQL </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="React" id="React"> <label class="btn btn-danger" for="React">
																			React </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="" id="PHP"> <label class="btn btn-info" for="PHP"> PHP
																	</label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Node.js" id="Node.js"> <label class="btn btn-warning"
																		for="Node.js"> Node.js </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Spring" id="Spring"> <label class="btn btn-warning"
																		for="Spring"> Spring </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Jquery" id="Jquery"> <label class="btn btn-warning"
																		for="Jquery"> Jquery </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Mybatis" id="Mybatis"> <label class="btn btn-warning"
																		for="Mybatis"> Mybatis </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Javascript" id="Javascript"> <label class="btn btn-dark"
																		for="Javascript"> Javascript </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Spring_Boot" id="Spring Boot"> <label class="btn btn-dark"
																		for="Spring Boot"> Spring Boot </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Rust" id="Rust"> <label class="btn btn-dark" for="Rust">
																			Rust </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Scala" id="Scala"> <label class="btn btn-dark" for="Scala">
																			Scala </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Kotlin" id="Kotlin"> <label class="btn btn-dark" for="Kotlin">
																			Kotlin </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Unity" id="Unity"> <label class="btn btn-dark" for="Unity">
																			Unity </label></li>
																</ul>
															</div>
															<div class="tab-pane fade" id="nav-contact" role="skill03" aria-labelledby="nav-contact-tab">
																<ul class="skill-check">
																	<li><input class="btn-check skil" type="checkbox" value="파워목업" id="power"> <label class="btn btn-outline-primary"
																		for="power"> 파워목업 </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="네이버 프로토 나우" id="naver"> <label class="btn btn-outline-primary"
																		for="naver"> 네이버 프로토 나우 </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="카카오 오븐" id="kakao"> <label class="btn btn-outline-primary"
																		for="kakao"> 카카오 오븐 </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Sketch" id="Sketch"> <label class="btn btn-outline-primary"
																		for="Sketch"> Sketch </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Zeplin" id="Zeplin"> <label class="btn btn-outline-primary"
																		for="Zeplin"> Zeplin </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Axure RP" id=" Axure RP"> <label
																		class="btn btn-outline-primary" for=" Axure RP"> Axure RP </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Adobe XD" id=" Adobe XD"> <label
																		class="btn btn-outline-primary" for=" Adobe XD"> Adobe XD </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Visual Studio Code" id=" VSCode"> <label
																		class="btn btn-outline-primary" for=" VSCode"> Visual Studio Code </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Visual Studio" id="VS"> <label class="btn btn-outline-primary"
																		for="VS"> Visual Studio </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="IntelliJ" id="IntelliJ"> <label class="btn btn-outline-primary"
																		for="IntelliJ"> IntelliJ </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Notepad++" id=" Notepad++"> <label
																		class="btn btn-outline-primary" for=" Notepad++"> Notepad++ </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Vim" id=" Vim"> <label class="btn btn-outline-primary"
																		for=" Vim"> Vim </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Android Studio" id="Android Studio"> <label
																		class="btn btn-outline-primary" for="Android Studio"> Android Studio </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="PyCharm" id="PyCharm"> <label class="btn btn-outline-primary"
																		for="PyCharm"> PyCharm </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Eclipse" id="Eclipse"> <label class="btn btn-outline-primary"
																		for="Eclipse"> Eclipse </label></li>
																	<li><input class="btn-check skil" type="checkbox" value="Xcode" id="Xcode"> <label class="btn btn-outline-primary"
																		for="Xcode"> Xcode </label></li>
																</ul>
															</div>

														</div>
													</div>
												</div>
												<!-- //희망기술 -->

												<div class="col-12">
													<div class="sikll-box" id="skilArea">
														<!-- 내가 체크한 기술 나오는 공간 -->
													</div>
												</div>

												<div class="col-12">
													<button class="btn btn-primary w-100" type="submit">회원가입</button>
												</div>
											</form>
										</div>
										<!-- //회원가입3 -->
									</div>
								</div>
								<!-- //회원가입 Swiper -->

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


	<!-- 아이디찾기 -->
	<div class="modal fade" id="FindId" tabindex="-1" aria-labelledby="FindIdLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="FindIdLabel">아이디찾기</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>아이디를 메일로 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">가입이메일</label> <input type="text" class="form-control" id="loginId02" required="">
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
	<!-- //아이디찾기 -->
	<!-- 비밀번호찾기 -->
	<div class="modal fade" id="ResetPassword" tabindex="-1" aria-labelledby="ResetPasswordLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title fs-5 h1" id="ResetPasswordLabel">비밀번호</div>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="mb-4">
						가입한 이메일을 작성해주세요. <br>비밀번호 재설정 메일을 보내드립니다.
					</p>
					<form class="row g-3 needs-validation" novalidate>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">가입이메일</label> <input type="text" class="form-control" id="loginId02" required="">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">아이디</label> <input type="text" class="form-control" id="loginId02" required="">
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<button class="btn btn-primary w-100" type="submit">비밀번호 찾기</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- //비밀번호찾기 -->

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/swiper-bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		
	</script>
</body>

</html>