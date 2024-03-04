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
<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">

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
					<div class="col-md-10 col-lg-6 d-flex flex-column align-items-center justify-content-center">
						<div class="d-flex justify-content-center py-4">
							<a href="index.jsp" class="logo d-flex align-items-center w-auto"> <span class="d-none d-lg-block">IT-MeetUp</span>
							</a>
						</div>
						<!-- End Logo -->
						<div class="card mb-3 join-area">

							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">회원가입</div>
								</div>

								<!-- 회원가입 Swiper -->
								<form action="join.action" name="joinForm01" method="post">
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
												<div class="row g-3 needs-validation">

													<div class="col-12">
														<div class="m-input-box">
															<label for="joinName01" class="form-label h5">이름</label> <input type="text" class="form-control" value="김쌍용" id="joinName01"
																required="required">
															<div class="invalid-feedback">이름을 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="piName" class="form-label h5">아이디</label>
															<div class="row col-12">
																<div class="col-12 col-md-7">
																	<input type="text" class="form-control" value="sist" id="piName" required="required">
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
															<label for="joinPw01" class="form-label h5">비밀번호</label> <input type="text" class="form-control" value="sist1234" id="joinPw01"
																required="required">
															<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<label for="joinPwCheck01" class="form-label h5">비밀번호 확인</label> <input type="text" class="form-control" value="sist1234"
																id="joinPwCheck01" required="required">
															<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
														</div>
													</div>

													<div class="col-12">
														<div class="m-input-box">
															<input type="text" id="piEmail" name="piEmail">
															<label for="joinEmail01" class="form-label h5">이메일</label>
															<div class="row col-12">
																<div class="col-12 col-md-7">
																	<input type="text" class="form-control" value="sist1234" id="joinEmail01" required="required">
																	<div class="invalid-feedback">이메일을 입력해주세요.</div>
																</div>
																<div class="col-12 col-md-5">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" title="email" id="joinEmail02">
																			<option>-선택-</option>
																			<option value="@naver.com" selected="selected">@naver.com</option>
																			<option value="@gmail.com">@gmail.com</option>
																			<option value="@daum.net">@daum.net</option>
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
																	<input type="text" class="form-control" value="쌍용" id="loginPassword01" required="required">
																	<div class="invalid-feedback">닉네임을 입력해주세요.</div>
																</div>
																<div class="col-12 col-md-5">
																	<button class="btn btn-primary w-100" type="button">중복확인</button>
																</div>
															</div>

														</div>
													</div>

													<div class="col-12">
														<button class="btn btn-primary w-100 join-step01" type="button">다음단계</button>
													</div>
												</div>
											</div>
											<!-- //회원가입1 -->
											<!-- 회원가입2 -->
											<div class="swiper-slide">
												<div class="row g-3 needs-validation">

													<div class="col-12">
														<div class="m-input-box">
															<label for="selectJoinJob" class="form-label h5">직무</label>
															<div class="row col-12">
																<div class="col-4">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" title="selectJoinJob">
																			<option>-선택-</option>
																		</select>
																	</div>
																	<div class="invalid-feedback">직무를 입력해주세요.</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<div class="form-label label-tit h5">경력</div>
														<ul class="career-col-box">
															<li>
																<div class="row col-12">
																	<div class="col-12 col-md-3">
																		<div class="m-input-box">
																			<label for="selectJoinCareer" class="form-label">경력직무</label>
																			<div class="m-select">
																				<select class="form-select" aria-label="Default select example" title="selectJoinCareer">
																					<option>-선택-</option>
																				</select>
																			</div>
																			<div class="invalid-feedback">아이디를 입력해주세요.</div>
																		</div>
																	</div>
																	<div class="row col-10 col-md-7 range-datepicker">
																		<div class="col-6 m-input-cal">
																			<label for="job-date-from" class="form-label">시작날짜</label> <input type="text" class="form-control job-date-from" value="2024/02/02" id="date-from">
																		</div>
																		<div class="col-6 m-input-cal">
																			<label for="job-date-to" class="form-label">종료날짜</label> <input type="text" class="form-control job-date-to" value="2024/02/28" id="date-to">
																		</div>
																	</div>
																	<div class="col-2">
																		<span class="form-label no-txt"></span>
																		<button class="btn btn-primary w-100 btn-more-one" type="button" title="경력 추가" onclick="addCareer()">
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
																			<option>-선택-</option>
																			<option value="SIGG_1" selected="selected">서울</option>
																			<option value="SIGG_2">경기도</option>
																			<option value="SIGG_3">인천</option>
																			<option value="SIGG_4">부산</option>
																		</select>
																	</div>
																	<div class="invalid-feedback">선호지역1을(를) 입력해주세요.</div>
																</div>
																<div class="col-6">
																	<div class="m-select">
																		<select class="form-select" aria-label="Default select example" id="jobArea02" title="jobArea02">
																			<option>-선택-</option>
																			<option value="SIGG_1" selected="selected">마포구</option>
																			<option value="SIGG_2">중구</option>
																			<option value="SIGG_3">강서구</option>
																			<option value="SIGG_4">수원시 영통구</option>
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
																		
																	<c:forEach var="meetItem" items="${meets }">
																		<input type="radio" class="btn-check" name="btnradio" id="joinMeet01" autocomplete="off" checked="checked"> 
																		<label class="btn btn-outline-primary" for="joinMeet01">${meetItem.meetName }</label> 
																	</c:forEach>
																	
																	<input type="radio" class="btn-check" name="btnradio" id="joinMeet02" autocomplete="off">
																	<label class="btn btn-outline-primary" for="joinMeet02">오프라인</label>
																	<input type="radio" class="btn-check" name="btnradio" id="joinMeet03" autocomplete="off">
																	<label class="btn btn-outline-primary" for="joinMeet03">온/오프라인 </label>
																</div>
																<div class="invalid-feedback">비밀번호 확인값을 입력해주세요.</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<button class="btn btn-primary w-100 join-step02" type="button">다음단계</button>
													</div>
												</div>
											</div>
											<!-- //회원가입2 -->
											<!-- 회원가입3 -->
											<div class="swiper-slide">
												<div class="row g-3 needs-validation">
													<!-- 희망기술 -->
													<div id="item-2-3" class="col-12">
														<p class="h5">희망기술</p>
														<div class="skill-box">
															<nav>
																<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
																	<button class="nav-link active" id="nav-skill01-tab" data-bs-toggle="tab" data-bs-target="#nav-skill01" type="button" role="tab"
																		aria-controls="nav-skill01" aria-selected="true">프론트</button>
																	<button class="nav-link" id="nav-skill02-tab " data-bs-toggle="tab" data-bs-target="#nav-skill02" type="button" role="tab"
																		aria-controls="nav-skill02" aria-selected="false">백엔드</button>
																	<button class="nav-link" id="nav-skill03-tab" data-bs-toggle="tab" data-bs-target="#nav-skill03" type="button" role="tab"
																		aria-controls="nav-skill03" aria-selected="false">기획, 디자인, 개발툴</button>
																</div>
															</nav>
															<div class="tab-content" id="nav-tabContent">
																<div class="tab-pane fade show active" id="nav-skill01" role="skill01" aria-labelledby="nav-skill01-tab">
																	<ul class="skill-check">
																		<!-- ico_html5_01 -->
																		<!-- 테스트를 위해 값을 미리 채워넣음  checked="checked" -->
																		<li>
																			<div class="form-check skill-item ico_html5_01">
																				<input class="form-check-input" type="checkbox" value="" id="" checked="checked"> <label class="form-check-label"> html5 </label>
																			</div>
																		</li>
																		<!-- ico_css_01 -->
																		<li>
																			<div class="form-check skill-item ico_css_01">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> css </label>
																			</div>
																		</li>
																		<!-- ico_Javascript_01 -->
																		<li>
																			<div class="form-check skill-item ico_Javascript_01">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Javascript </label>
																			</div>
																		</li>
																		<!-- ico_TypeScript -->
																		<li>
																			<div class="form-check skill-item ico_TypeScript">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> TypeScript </label>
																			</div>
																		</li>
																		<!-- ico_React -->
																		<li>
																			<div class="form-check skill-item ico_React">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> React </label>
																			</div>
																		</li>
																		<!-- ico_Vue -->
																		<li>
																			<div class="form-check skill-item ico_Vue">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Vue </label>
																			</div>
																		</li>
																		<!-- ico_Svelte -->
																		<li>
																			<div class="form-check skill-item ico_Svelte">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Svelte </label>
																			</div>
																		</li>
																		<!-- ico_Nextjs -->
																		<li>
																			<div class="form-check skill-item ico_Nextjs">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Nextjs </label>
																			</div>
																		</li>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill02" role="skill02" aria-labelledby="nav-skill02-tab">
																	<ul class="skill-check">

																		<!-- ico_ruby -->
																		<li>
																			<div class="form-check skill-item ico_ruby">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> ruby </label>
																			</div>
																		</li>
																		<!-- ico_Java_01 -->
																		<li>
																			<div class="form-check skill-item ico_Java_01">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Java </label>
																			</div>
																		</li>
																		<!-- ico_jsp -->
																		<li>
																			<div class="form-check skill-item ico_jsp">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> jsp </label>
																			</div>
																		</li>
																		<!-- ico_python -->
																		<li>
																			<div class="form-check skill-item ico_python">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> python </label>
																			</div>
																		</li>
																		<!-- ico_C_plus -->
																		<li>
																			<div class="form-check skill-item ico_C_plus">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> C_plus </label>
																			</div>
																		</li>
																		<!-- ico_C_sharp -->
																		<li>
																			<div class="form-check skill-item ico_C_sharp">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> C_sharp </label>
																			</div>
																		</li>
																		<!-- ico_R -->
																		<li>
																			<div class="form-check skill-item ico_R">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> R </label>
																			</div>
																		</li>
																		<!-- ico_Oracle -->
																		<li>
																			<div class="form-check skill-item ico_Oracle">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Oracle </label>
																			</div>
																		</li>
																		<!-- ico_MySQL -->
																		<li>
																			<div class="form-check skill-item ico_MySQL">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> MySQL </label>
																			</div>
																		</li>
																		<!-- ico_PHP -->
																		<li>
																			<div class="form-check skill-item ico_PHP">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> PHP </label>
																			</div>
																		</li>
																		<!-- ico_Nodejs -->
																		<li>
																			<div class="form-check skill-item ico_Nodejs">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Nodejs </label>
																			</div>
																		</li>
																		<!-- ico_Spring -->
																		<li>
																			<div class="form-check skill-item ico_Spring">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Spring </label>
																			</div>
																		</li>
																		<!-- ico_Jquery -->
																		<li>
																			<div class="form-check skill-item ico_Jquery">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Jquery </label>
																			</div>
																		</li>
																		<!-- ico_Mybatis -->
																		<li>
																			<div class="form-check skill-item ico_Mybatis">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Mybatis </label>
																			</div>
																		</li>
																		<!-- ico_Spring_Boot -->
																		<li>
																			<div class="form-check skill-item ico_Spring_Boot">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Spring_Boot </label>
																			</div>
																		</li>
																		<!-- ico_Rust -->
																		<li>
																			<div class="form-check skill-item ico_Rust">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Rust </label>
																			</div>
																		</li>
																		<!-- ico_scala -->
																		<li>
																			<div class="form-check skill-item ico_scala">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> scala </label>
																			</div>
																		</li>
																		<!-- ico_Kotlin -->
																		<li>
																			<div class="form-check skill-item ico_Kotlin">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Kotlin </label>
																			</div>
																		</li>
																		<!-- ico_unity -->
																		<li>
																			<div class="form-check skill-item ico_unity">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> unity </label>
																			</div>
																		</li>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill03" role="skill03" aria-labelledby="nav-skill03-tab">
																	<ul class="skill-check">

																		<!-- ico_powerMockup -->
																		<li>
																			<div class="form-check skill-item ico_powerMockup">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> powerMockup </label>
																			</div>
																		</li>
																		<!-- ico_protoNow -->
																		<li>
																			<div class="form-check skill-item ico_protoNow">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> protoNow </label>
																			</div>
																		</li>
																		<!-- ico_oven_01 -->
																		<li>
																			<div class="form-check skill-item ico_oven_01">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> oven </label>
																			</div>
																		</li>
																		<!-- ico_Sketch -->
																		<li>
																			<div class="form-check skill-item ico_Sketch">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Sketch </label>
																			</div>
																		</li>
																		<!-- ico_zeplin -->
																		<li>
																			<div class="form-check skill-item ico_zeplin">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> zeplin </label>
																			</div>
																		</li>
																		<!-- ico_Figma -->
																		<li>
																			<div class="form-check skill-item ico_Figma">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Figma </label>
																			</div>
																		</li>
																		<!-- ico_Axure_RP -->
																		<li>
																			<div class="form-check skill-item ico_Axure_RP">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Axure_RP </label>
																			</div>
																		</li>
																		<!-- ico_Adobe_XD -->
																		<li>
																			<div class="form-check skill-item ico_Adobe_XD">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Adobe_XD </label>
																			</div>
																		</li>
																		<!-- ico_Visual_Studio_Code -->
																		<li>
																			<div class="form-check skill-item ico_Visual_Studio_Code">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label">
																					Visual_Studio_Code </label>
																			</div>
																		</li>
																		<!-- ico_Visual_Studio -->
																		<li>
																			<div class="form-check skill-item ico_Visual_Studio">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Visual_Studio </label>
																			</div>
																		</li>
																		<!-- ico_IntelliJ -->
																		<li>
																			<div class="form-check skill-item ico_IntelliJ">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> IntelliJ </label>
																			</div>
																		</li>
																		<!-- ico_Notepad -->
																		<li>
																			<div class="form-check skill-item ico_Notepad">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Notepad </label>
																			</div>
																		</li>
																		<!-- ico_Vim -->
																		<li>
																			<div class="form-check skill-item ico_Vim">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Vim </label>
																			</div>
																		</li>
																		<!-- ico_Android_Studio -->
																		<li>
																			<div class="form-check skill-item ico_Android_Studio">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Android_Studio </label>
																			</div>
																		</li>
																		<!-- ico_PyCharm -->
																		<li>
																			<div class="form-check skill-item ico_PyCharm">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> PyCharm </label>
																			</div>
																		</li>
																		<!-- ico_Eclipse -->
																		<li>
																			<div class="form-check skill-item ico_Eclipse">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Eclipse </label>
																			</div>
																		</li>
																		<!-- ico_Xcode -->
																		<li>
																			<div class="form-check skill-item ico_Xcode">
																				<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Xcode </label>
																			</div>
																		</li>

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
														<button class="btn btn-primary w-100 join-step03" type="submit">회원가입</button>
													</div>
												</div>
											</div>
											<!-- //회원가입3 -->
										</div>
									</div>
									<!-- //회원가입 Swiper -->
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
		<%-- <c:import url="../Components/Footer.jsp"></c:import> --%>
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
								<label for="loginId02" class="form-label h5">가입이메일</label> <input type="text" class="form-control" id="loginId02" required="required">
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
								<label for="loginId02" class="form-label h5">가입이메일</label> <input type="text" class="form-control" id="loginId02" required="required">
								<div class="invalid-feedback">가입이메일을 입력해주세요.</div>
							</div>
						</div>

						<div class="col-12">
							<div class="m-input-box">
								<label for="loginId02" class="form-label h5">아이디</label> <input type="text" class="form-control" id="loginId02" required="required">
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
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>
</body>

</html>