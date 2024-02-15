<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); String cp=request.getContextPath(); %>
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
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">

			<div class="section">
				<div class="container-xl">
					<p class="h1">
						마감임박 <i class="bi bi-fire"></i>
					</p>

					<!-- 마감 스와이퍼 -->
					<div class="deadline-box">
						<div class="deadline-swiper-btn">
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-3)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-4)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-6)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-7)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-1)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline" style="color: red;">(D-2)</span>2.4 -
												3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
												<label class="form-check-label"> <input
													class="form-check-input" type="checkbox" value="" id=""
													title="찜하기"> <span class="icon-box"><i
														class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
												</label>
											</div>
											<!-- 데드라인/ 시작예정일 - 예상기간 -->
											<div class="mb-1 text-body-secondary">
												<span class="deadline">(D-100)</span>2.4 - 3.19
											</div>
											<!-- 직무 -->
											<div class="d-flex job-box">
												<span class="badge rounded-pill bg-primary">프론트</span> <span
													class="badge rounded-pill bg-secondary">백</span> <span
													class="badge rounded-pill bg-success">기획</span> <span
													class="badge rounded-pill bg-danger">디자인</span>
											</div>
										</div>
										<div class="card-bottom">
											<!-- 작성자 -->
											<strong class="mb-2 text-primary-emphasis writer"><span
												class="leader-level"></span>작성자닉네임</strong>
											<!-- 제목 -->
											<a href="javascript:;" class="card-tit mb-2">
												<span class="h3">
													제목입니다.제목입니다.<br>제목입니다.제목입니다.
												</span>
											</a>
											<!-- 상세내용 -->
											<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
												내용입니다. 내용입니다. 내용입니다.</p>
											<div
												class="d-flex justify-content-between align-items-center">
												<!-- 사용언어 -->
												<div class="language-box">
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
													<span class="badge-language"><span class="blind">파이썬</span></span>
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
										<option value="1">0 ~ 1미만</option>
										<option value="2">1 ~ 3미만</option>
										<option value="3">3 ~ 5미만</option>
										<option value="4">5 ~ 7미만</option>
										<option value="5">7 ~~~</option>
									</select>
								</div>
							</li>
							<li>
								<div class="dropdown skill-dropdown">
									<button type="button"
										class="btn btn-outline-dark dropdown-toggle"
										data-bs-toggle="dropdown" aria-expanded="false"
										data-bs-auto-close="outside">보유스킬</button>
									<form class="dropdown-menu p-4">
										<nav>
											<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
												<button class="nav-link active" id="nav-home-tab"
													data-bs-toggle="tab" data-bs-target="#nav-home"
													type="button" role="tab" aria-controls="nav-home"
													aria-selected="true">프론트</button>
												<button class="nav-link" id=av-profile-tab
													" data-bs-toggle="tab" data-bs-target="#nav-profile"
													type="button" role="tab" aria-controls="nav-profile"
													aria-selected="false">백엔드</button>
												<button class="nav-link"
													id자인av-contact-tab" data-bs-toggle="tab"
													data-bs-target="#nav-contact" type="button" role="tab"
													aria-controls="nav-contact" aria-selected="false">기획,
													디자인, 개발툴</button>
											</div>
										</nav>
										<div class="tab-content" id="nav-tabContent">
											<div class="tab-pane fade show active" id="nav-home"
												role="skill01" aria-labelledby="nav-home-tab">
												<ul class="skill-check">
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																HTML5 <!-- <img alt="hmmaa" src="images/ico_html5.png"> -->
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																CSS
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																JavaScript
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																TypeScript
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																React
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Vue
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Svelte
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Nextjs
															</label>
														</div>
													</li>
												</ul>
											</div>
											<div class="tab-pane fade" id="nav-profile" role="skill02"
												aria-labelledby="nav-profile-tab">
												<ul class="skill-check">
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Ruby
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Java
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																JSP
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Python
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																C#
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																C++
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																C
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																ORACLE
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																MySQL
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																React
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																PHP
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Node.js
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Spring
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Jquery
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Mybatis
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Javascript
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Spring Boot
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Rust
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																스칼라
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																코틀린
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																유니티
															</label>
														</div>
													</li>
												</ul>
											</div>
											<div class="tab-pane fade" id="nav-contact" role="skill03"
												aria-labelledby="nav-contact-tab">
												<ul class="skill-check">
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																파워목업
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																네이버 프로토 나우
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																카카오오븐
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Sketch
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Zeplin
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Axure RP
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Adobe XD
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Visual Studio Code
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Visual Studio
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																IntelliJ
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Notepad++
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Vim
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Android Studio
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																PyCharm
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Eclipse
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Xcode
															</label>
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
										<select class="form-select" aria-label="선호지역 1단계(시)"
											title="선호지역 1단계(시)" id="si" onchange="selectSi()">
											<option selected="selected">선호지역(시)</option>
											<option value="1">서울특별시</option>
											<option value="2">인천광역시</option>
											<option value="3">대구광역시</option>
											<option value="4">대전광역시</option>
											<option value="5">광주광역시</option>
											<option value="6">울산광역시</option>
											<option value="7">부산광역시</option>
											<option value="8">경기도</option>
										</select>
									</div>
									<div class="m-select">
										<select class="form-select" aria-label="선호지역 1단계(도)"
											title="선호지역 1단계(도)" id="do" disabled="disabled">
											<option selected="selected">선호지역(도)</option>
											<option value="1">수원특례시</option>
											<option value="2">고양시</option>
											<option value="3">의정부시</option>
											<option value="3">부천시</option>
											<option value="3">부평시</option>
											<option value="3">하남시</option>
											<option value="3">화성시</option>
										</select>
									</div>
								</div>
							</li>
							<li>
								<div class="m-select">
									<select class="form-select" aria-label="선호 모임방식"
										title="선호 모임방식">
										<option selected="selected">선호 모임방식</option>
										<option value="1">오프라인</option>
										<option value="2">온라인</option>
										<option value="3">온오프라인</option>
									</select>
								</div>
							</li>
							<li>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="" id="">
										진행중
									</label>

								</div>
								<div class="form-check">
									<label class="form-check-label"> <input
										class="form-check-input" type="checkbox" value="" id="">
										모집 마감
									</label>
								</div>
							</li>
						</ul>
					</div>

					<ul
						class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> <input
											class="form-check-input" type="checkbox" value="" id=""
											title="찜하기"> <span class="icon-box"><i
												class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline">(D-100)</span>2.4 - 3.19
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
										<span class="badge rounded-pill bg-primary">프론트</span> <span
											class="badge rounded-pill bg-secondary">백</span> <span
											class="badge rounded-pill bg-success">기획</span> <span
											class="badge rounded-pill bg-danger">디자인</span>
									</div>
								</div>
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer"><span
										class="leader-level"></span>작성자닉네임</strong>
									<!-- 제목 -->
									<a href="javascript:;" class="card-tit mb-2">
										<span class="h3">
											제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
									</a>
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
										내용입니다. 내용입니다. 내용입니다.</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<div class="language-box">
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
											<span class="badge-language"><span class="blind">파이썬</span></span>
										</div>
										<!-- 조회수 -->
										<small class="text-body-secondary">view 10</small>
									</div>
								</div>
						</li>
					</ul>

					<!-- 페이지네이션 -->
					<div class="page-box">
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
					<!-- //페이지네이션 -->
				</div>

			</div>

		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<div role="footer" data-include="../Components/Footer.jsp"
			class="mt-auto"></div>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/swiper-bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		$(function()
		{
			//alert("hmm");

		});

		function selectSi()
		{
			$("#do").attr("disabled", false)

		}
	</script>
</body>

</html>