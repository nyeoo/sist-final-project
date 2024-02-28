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
<title>PostList</title>
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
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">

			<div class="section">
				<div class="container-xl">
					<p class="h1">마감임박</p>

					<!-- 마감 스와이퍼 -->
					<div class="deadline-box">
						<div class="swiper-btn">
							<button type="button" class="swiper-button-prev">
								<i class="bi bi-arrow-left-circle"></i> <span class="blind">이전</span>
							</button>
							<button type="button" class="swiper-button-next">
								<i class="bi bi-arrow-right-circle"></i> <span class="blind">이후</span>
							</button>
						</div>
						<div class="swiper deadlineSwiper">
							<ul class="swiper-wrapper card-list">
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"><img src="" alt="" /></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
								<li class="swiper-slide">
									<div class="card p-4 d-flex flex-column">
										<div class="card-top">
											<!-- 찜하기 -->
											<div class="form-check zzim">
												<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
													class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
											</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
											<div class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
														class="badge-language"><span class="blind">파이썬</span></span>
												</div>
												<!-- 조회수 -->
												<small class="text-body-secondary">view 10</small>
											</div>
										</div>
									</div>
								</li>
							</ul>
							<div class="swiper-pagination"></div>
						</div>
					</div>
					<!-- //마감 스와이퍼 -->

				</div>
			</div>
			<div class="section bg-body-tertiary">
				<div class="container-xl">
					<p class="h1">프로젝트</p>

					<!-- 필터 -->
					<div class="filter-box mb-5">
						<ul class="d-flex">
							<li>
								<div class="m-select">
									<select class="form-select" aria-label="경력" title="경력">
										<option selected>경력</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
							</li>
							<li>
								<div class="dropdown skill-dropdown skill-box">
									<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">보유스킬</button>
									<form class="dropdown-menu p-4">
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
													<li>
														<div class="form-check skill-item ico_html5_01">
															<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> html5 </label>
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
															<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Visual_Studio_Code </label>
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
									</form>
								</div>
							</li>
							<li>
								<div class="d-flex">
									<div class="m-select">
										<select class="form-select" aria-label="선호지역 1단계(시)" title="선호지역 1단계(시)">
											<option selected>Open this select menu</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
									<div class="m-select">
										<select class="form-select" aria-label="선호지역 1단계(도)" title="선호지역 1단계(도)">
											<option selected>Open this select menu</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</div>
							</li>
							<li>
								<div class="m-select">
									<select class="form-select" aria-label="선호 모임방식" title="선호 모임방식">
										<option selected>Open this select menu</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
							</li>
							<li>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="" id=""> <label class="form-check-label"> Default checkbox </label>
								</div>
							</li>
						</ul>
					</div>

					<ul class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language ico_html5_01"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input class="form-check-input" type="checkbox" value="" id="" title="찜하기"> <span
											class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2"> <span class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
									</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span> <span class="badge-language"><span class="blind">파이썬</span></span> <span
												class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
							</div>
						</li>
					</ul>

					<!-- 페이지네이션 -->
					<div class="page-box">
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
					<!-- //페이지네이션 -->
				</div>

			</div>

		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

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