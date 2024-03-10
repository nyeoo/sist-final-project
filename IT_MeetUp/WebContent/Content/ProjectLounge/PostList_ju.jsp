

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">

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
					<p class="h1">
						마감임박 <i class="bi bi-fire"></i>
					</p>

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
												<span class="badge rounded-pill bg-primary">프론트</span> 
												<span class="badge rounded-pill bg-secondary">백</span> 
												<span class="badge rounded-pill bg-success">기획</span> 
												<span class="badge rounded-pill bg-danger">디자인</span>
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
									<select class="form-select category" aria-label="카테고리" title="카테고리">
										<option selected>카테고리</option>
										<c:forEach var ="categorys" items="${cateList }" varStatus="status"  >
										 
											<option value= "CAT_${status.index +1}" >${categorys }</option>
										
										</c:forEach>
										<!--
											<option value="1">교육</option>
											<option value="2">1 ~ 3미만</option>
											<option value="3">의료</option>
											<option value="4">모집</option>
											<option value="5">기타</option> 
										-->
									</select>
								</div>
							</li>
							<li>
								<div class="m-select">
									<select class="form-select" aria-label="경력" title="경력">
										<option selected>경력</option>
										<c:forEach var ="carList" items="${carList }" varStatus="status"  >
											<option value="CAR_${status.index +1}">${carList }</option>
										</c:forEach>
										<!-- 
										<option value="1">0 ~ 1미만</option>
										<option value="2">1 ~ 3미만</option>
										<option value="3">3 ~ 5미만</option>
										<option value="4">5 ~ 7미만</option>
										<option value="5">7 ~~~</option>
										 -->
									</select>
								</div>
							</li>
							<li>
								<div class="dropdown skill-dropdown skill-box">
									<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">보유스킬</button>
									<form class="dropdown-menu p-4">
										<div id="item-2-3" class="col-12">
														<p class="h5">희망기술</p>
														<div class="skill-box">
														<nav>
																

																<div class="nav nav-tabs mb-3" id="nav-tab"
																	role="tablist">
																	<c:forEach var="skill" items="${skillCategorys}" varStatus="status">
																		<button class="nav-link 
																		<c:if test="${status.index == 0}">active</c:if>"
																			id="nav-skill${status.index + 1}-tab"
																			data-bs-toggle="tab"
																			data-bs-target="#nav-skill${status.index + 1}"
																			type="button" role="tab"
																			aria-controls="nav-skill${status.index + 1}"
																			aria-selected="true" value="${skill.scCode}">${skill.scName}
																		</button>
																	</c:forEach>
																</div>

														</nav>
															<div class="tab-content" id="nav-tabContent">
																<div class="tab-pane fade show active" id="nav-skill1"
																	role="skill1" aria-labelledby="nav-skill1-tab">
																	<ul class="skill-check">
																		<c:forEach var="skillItem" items="${skills }" varStatus="status">
																			<c:if test="${skillItem.skScCode == 'SC_1' }">
																				<li>
																					<div class="form-check skill-item 
																					<c:forEach var="entry" items="${skProcessors}">
																						 <c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill " type="checkbox" name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}"> 
																						<label class="form-check-label" > ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill2" role="skill2"
																	aria-labelledby="nav-skill2-tab">
																	<ul class="skill-check">
																		<c:forEach var="skillItem" items="${skills }"
																			varStatus="status">

																			<c:if test="${skillItem.skScCode == 'SC_2' }">
																				<li>
																					<div
																						class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill " type="checkbox"  name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}"> 
																						<label class="form-check-label"> ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>

																</div>
																<div class="tab-pane fade" id="nav-skill3" role="skill3"
																	aria-labelledby="nav-skill3-tab">
																	<ul class="skill-check">

																		<c:forEach var="skillItem" items="${skills }"
																			varStatus="status">

																			<c:if test="${skillItem.skScCode == 'SC_3' }">
																				<li>
																					<div
																						class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
																						<input class="form-check-input skill " type="checkbox" name="hopeskills" value="${skillItem.skCode }"id="${status.index +1}"> 
																						<label class="form-check-label"> ${skillItem.skName } </label>
																					</div>
																				</li>
																			</c:if>
																		</c:forEach>

																	</ul>
																</div>
															</div>
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
											<c:forEach var ="sidoList" items="${sidoList }" varStatus="status"  >
												<option value="SIDO_${status.index +1}">${sidoList }</option>
											</c:forEach>
											
										</select>
									</div>
									<div class="m-select">
										<select class="form-select" aria-label="선호지역 1단계(도)"
											title="선호지역 1단계(도)" id="do" disabled="disabled">
											<option selected="selected">선호지역(도)</option>
											<c:forEach var ="siggList" items="${siggList }" varStatus="status"  >
												<option value="SIGG_${status.index +1}">${siggList }</option>
											</c:forEach>
											<!-- 
											<option value="1">수원특례시</option>
											<option value="2">고양시</option>
											<option value="3">의정부시</option>
											<option value="3">부천시</option>
											<option value="3">부평시</option>
											<option value="3">하남시</option>
											<option value="3">화성시</option>
											 -->
										</select>
									</div>
								</div>
							</li>
							<li>
								<div class="m-select">
									<select class="form-select" aria-label="선호 모임방식" 	title="선호 모임방식">
										<option selected="selected">선호 모임방식</option>
										<option value="1">오프라인</option>
										<option value="2">온라인</option>
										<option value="3">온오프라인</option>
									</select>
								</div>
							</li>
							<li>
								<div class="form-check">
									<label class="form-check-label"> 
										<input class="form-check-input" type="checkbox" value="" id="">
										진행중
									</label>

								</div>
								<div class="form-check">
									<label class="form-check-label"> 
										<input class="form-check-input" type="checkbox" value="" id="">
										모집 마감
									</label>
								</div>
							</li>
						</ul>
					</div>

					<ul class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
						<c:forEach var ="opList" items="${openList }">
						<li class="col-12 col-sm-6 col-md-4 col-lg-3">
							<div class="card p-4 d-flex flex-column">
								<div class="card-top">
									<!-- 찜하기 -->
									<div class="form-check zzim">
										<label class="form-check-label"> 
										<input class="form-check-input" type="checkbox" value="${opList.code }" id="wish" title="찜하기">
										<span class="icon-box">
											<i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i>
										</span>
										</label>
									</div>
									<!-- 데드라인/ 시작예정일 - 예상기간 -->
									<div class="mb-1 text-body-secondary">
										<span class="deadline"> D - ${opList.day} 일 </span>${opList.start} - ${opList.end}
									</div>
									<!-- 직무 -->
									<div class="d-flex job-box">
								    <c:forEach var="jobItem" items="${jobInfo[opList.code]}">
								        <c:set var="jobNames" value="${fn:split(jobItem.jobName, ' ')}" />
								        <c:forEach var="jobName" items="${jobNames}">
								            <c:choose>
								                <c:when test="${jobName eq '기획자'}">
								                    <span class="badge rounded-pill bg-success">기획자</span> 
								                </c:when>
								                <c:when test="${jobName eq '디자이너'}">
								                    <span class="badge rounded-pill bg-danger">디자이너</span> 
								                </c:when>
								                <c:when test="${jobName eq '프론트엔드'}">
								                    <span class="badge rounded-pill bg-primary">프론트엔드</span> 
								                </c:when>
								                <c:when test="${jobName eq '백엔드'}">
								                    <span class="badge rounded-pill bg-secondary">백엔드</span> 
								                </c:when>   
								                <c:otherwise>
								                    <span class="badge rounded-pill bg-primary">${jobName}</span>   
								                </c:otherwise>                                   
								            </c:choose>
								        </c:forEach>
								    </c:forEach>
									</div>
								</div> <!-- card-top -->
								<div class="card-bottom">
									<!-- 작성자 -->
									<strong class="mb-2 text-primary-emphasis writer">
										<span class="leader-level"></span>${opList.nickname}
									</strong>
									<!-- 카테고리 -->
									<strong class="mb-2 text-primary-emphasis writer">
										${opList.category} 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${opList.sido} ${opList.sigg} 
									</strong>
									<!-- 지역 -->
									
									
									
									<!-- 제목 -->
									<a href="PostDetail.action?code=${opList.code}"   class="card-tit mb-2">
									
									 
										<span class="h3"> ${opList.title} </span>
									</a>   
									<!-- 상세내용 -->
									<p class="card-text text-truncate mb-2"> ${opList.content}</p>
									<div class="d-flex justify-content-between align-items-center">
										<!-- 사용언어 -->
										<%-- <div class="language-box">
												<span class="badge-language"><span class="blind">${skills[opList.code] }</span></span> 
										</div> --%>
										<c:forEach var ="skill" items="${skill[opList.code] }">
										<%-- <c:set var="skillName" value="${fn:split(skill, ' ')}" /> --%> 
										<%-- <c:set var="i" value="0" /> --%>
											 ${skill } 
										<%-- 	 <c:forEach var="skills" items="${skillName}">
										        <span class="badge-language">${skills[i]}<span class="blind"></span></span> 
										        <c:set var="i" value="${i + 1}" /> <!-- i를 1씩 증가 -->
										    </c:forEach> --%>
											 
										</c:forEach>
										<!-- 조회수 -->
										<small class="text-body-secondary">${opList.view}</small>
									</div>
								</div>
								</div>
						</li>
						</c:forEach>
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
				</div> <!-- container end -->

			</div>

		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>
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