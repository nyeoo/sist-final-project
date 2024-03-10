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
<title>NameCard</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">
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
					<p class="h3">NameCard</p>
					<br>
				</div>

				<div class="section mypage">
					<!-- 내정보 -->
					<div class="row con-section">
						<div class="col-md-4 my-user">

							<!-- 프로필영역 -->
							<c:import url="../MyPage/Profile.jsp"></c:import>
							<!-- //프로필영역 -->

						</div>

						<div class="col-md-8">
							<!-- 네임카드 -->
							<div class="card">
								<div class="card-body pt-3">
									<form>

										<div class="row mb-3">
											<label for="myId" class="col-md-3 col-lg-2 col-form-label">직무</label>
											<div class="col-md-9 col-lg-10">
												<span class="badge rounded-pill bg-secondary">백엔드</span>
											</div>
										</div>

										<div class="row mb-3">
											<label for="myId" class="col-md-3 col-lg-2 col-form-label">희망기술</label>
											<div class="col-md-9 col-lg-10">
												<ul class="skill-check">
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Default checkbox
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Default checkbox
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Default checkbox
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Default checkbox
															</label>
														</div>
													</li>
													<li>
														<div class="form-check skill-item">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox" value="" id="">
																Default checkbox
															</label>
														</div>
													</li>
												</ul>
											</div>
										</div>

										<div class="row mb-3">
											<label for="myId" class="col-md-3 col-lg-2 col-form-label">선호지역</label>
											<div class="col-md-9 col-lg-10 m-select">
												<div class="row">
													<div class="col-6 m-select">
														<select class="form-select"
															aria-label="Default select example" title="selectTitle01">
															<option selected>Open this select menu</option>
															<option value="1">One</option>
															<option value="2">Two</option>
															<option value="3">Three</option>
														</select>
													</div>
													<div class="col-6 m-select">
														<select class="form-select"
															aria-label="Default select example" title="selectTitle01">
															<option selected>Open this select menu</option>
															<option value="1">One</option>
															<option value="2">Two</option>
															<option value="3">Three</option>
														</select>
													</div>
												</div>
											</div>
										</div>

										<div class="row mb-3">
											<label for="about" class="col-md-3 col-lg-2 col-form-label">자기소개</label>
											<div class="col-md-9 col-lg-10">
												<textarea name="about" class="form-control" id="about"
													style="height: 100px">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</textarea>
											</div>
										</div>

										<div class="col-12 btn-box">
											<div class="btn-center">
												<button type="button" class="btn btn-primary">수정하기</button>
												<button type="button" class="btn btn-primary">저장하기</button>
											</div>
										</div>

									</form>
								</div>
							</div>
							<!-- //네임카드 -->

						</div>
					</div>
					<div class="row con-section level">

						<!-- 경력 -->
						<div class="col-12 col-md-4">
							<div class="card career">
								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"
										aria-expanded="false"><i class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow"
										style="">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<div class="card-title">
									<c:forEach var="totalCareerItem" items="${totalCareer }">
										<p class="h5">
											경력 <span>${totalCareerItem.totalYear }년 ${totalCareerItem.totalMonth }개월 </span>
										</p>
									</c:forEach>
									</div>

									<ul class="activity">
										<c:forEach var="careerItem" items="${careerList }">
											<li class="activity-item d-flex">
												<div class="activite-label">
													<p class="career-from">${careerItem.startDate }</p>
													<p>
														~ <span class="career-to">${careerItem.endDate }</span>
													</p>
												</div> <i
												class="bi bi-circle-fill activity-badge text-primary align-self-start"></i>
												<div class="activity-content">
													<p href="#" class="fw-bold text-dark">${careerItem.comName }</p>
													<p class="career-text">
														<span class="badge rounded-pill bg-primary">${careerItem.jobName }</span> <span
															class="career-sub-year">${careerItem.years }년 ${careerItem.months }개월</span>
													</p>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>

						</div>
						<!-- //경력 -->

						<!-- 레벨 & 점수 -->
						<div class="col-12 col-md-8">
							<div class="row">
								<!-- 계정레벨 -->
								<div class="col-4 level-con level-info">
									<div class="card">
										<div class="card-body">
											<div
												class="card-title d-flex align-items-start justify-content-between">
												<div class="avatar flex-shrink-0">
													<i class="bi bi-rocket-takeoff text-gray-300"></i>
												</div>
											</div>
											<div class="level-bottom">
												<span class="fw-semibold d-block mb-1"><span
													data-bs-toggle="tooltip" data-bs-placement="top"
													data-bs-title="프로젝트경험횟수">계정레벨 <i
														class="bi bi-question-circle"></i></span></span>
												<div class="card-title mb-2">
													<span style="vertical-align: inherit;">10건</span>
												</div>
												<small class="text-success fw-semibold"><i
													class="bx bx-up-arrow-alt"></i>레벨1</small>
												<!-- <div class="progress progress-sm mr-2">
								<div class="progress-bar bg-success" role="progressbar"
									style="width: 10%" aria-valuenow="10" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div> -->
											</div>
										</div>
									</div>
								</div>
								<!-- //계정레벨 -->

								<!-- 리더십점수 -->
								<div class="col-4 level-con level-reader">
									<div class="card">
										<div class="card-body">
											<div
												class="card-title d-flex align-items-start justify-content-between">
												<div class="avatar flex-shrink-0">
													<i class="bi bi-microsoft-teams text-gray-300"></i>
												</div>
											</div>
											<div class="level-bottom">
												<span class="fw-semibold d-block mb-1"><span
													data-bs-toggle="tooltip" data-bs-placement="top"
													data-bs-title="팀장활동점수">리더십점수 <i
														class="bi bi-question-circle"></i></span></span>
												<div class="card-title mb-2">
													<span style="vertical-align: inherit;">10점</span>
												</div>
												<small class="text-success fw-semibold"><i
													class="bx bx-up-arrow-alt"></i>레벨1</small>
												<div class="progress progress-sm mr-2">
													<div class="progress-bar bg-success" role="progressbar"
														style="width: 10%" aria-valuenow="10" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //리더십점수 -->

								<!-- 팀원평가점수 -->
								<div class="col-4 level-con level-team">
									<div class="card">
										<div class="card-body">
											<div
												class="card-title d-flex align-items-start justify-content-between">
												<div class="avatar flex-shrink-0">
													<i class="bi bi-wechat text-gray-300"></i>
												</div>
											</div>
											<div class="level-bottom">
												<span class="fw-semibold d-block mb-1"><span
													data-bs-toggle="tooltip" data-bs-placement="top"
													data-bs-title="프로젝트 후 평가">팀원평가점수 <i
														class="bi bi-question-circle"></i></span></span>
												<div class="card-title mb-2">
													<span style="vertical-align: inherit;">80점</span>
												</div>
												<small class="text-success fw-semibold"><i
													class="bx bx-up-arrow-alt"></i>아이스아메리카노</small>
												<div class="progress progress-sm mr-2">
													<div class="progress-bar bg-success" role="progressbar"
														style="width: 80%" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //팀원평가점수 -->
							</div>
						</div>
						<!-- //레벨 & 점수 -->
					</div>
					<div class="con-section complete-list">

						<ul
							class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
							<!-- 이미지 썸네일 -->
							<li class="col-12 col-sm-6 col-md-4 col-lg-4">
								<div class="card p-4 d-flex flex-column">
									<div class="card-top">
										<!-- 고정하기 -->
										<div class="form-check zzim fixed">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" id=""
												title="고정하기"> <span class="icon-box"><i
													class="bi bi-pin-angle"></i><i class="bi bi-pin-angle-fill"></i></span>
											</label>
										</div>
										<!-- 썸네일 이미지 -->
										<div class="thumbnail-box img-box">
											<img src="../../asset/images/img_sample00.jpg" alt="썸네일샘플" />
										</div>
									</div>
									<div class="card-bottom">
										<!-- 제목 -->
										<a href="javascript:;" class="card-tit mb-2"> <span
											class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
										</a>
										<!-- 상세내용 -->
										<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
											내용입니다. 내용입니다. 내용입니다.</p>
									</div>
								</div>
							</li>
							<!-- //이미지 썸네일 -->
							<!-- 텍스트 썸네일 -->
							<li class="col-12 col-sm-6 col-md-4 col-lg-4">
								<div class="card p-4 d-flex flex-column">
									<div class="card-top">
										<!-- 고정하기 -->
										<div class="form-check zzim fixed">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" id=""
												title="고정하기"> <span class="icon-box"><i
													class="bi bi-pin-angle"></i><i class="bi bi-pin-angle-fill"></i></span>
											</label>
										</div>
										<!-- 썸네일 텍스트 -->
										<div class="thumbnail-box thumnail-txt">
											<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
											<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
										</div>
									</div>
									<div class="card-bottom">
										<!-- 제목 -->
										<a href="javascript:;" class="card-tit mb-2"> <span
											class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
										</a>
										<!-- 상세내용 -->
										<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
											내용입니다. 내용입니다. 내용입니다.</p>
									</div>
								</div>
							</li>
							<!-- //텍스트 썸네일 -->
							<!-- 텍스트 썸네일 -->
							<li class="col-12 col-sm-6 col-md-4 col-lg-4">
								<div class="card p-4 d-flex flex-column">
									<div class="card-top">
										<!-- 고정하기 -->
										<div class="form-check zzim fixed">
											<label class="form-check-label"> <input
												class="form-check-input" type="checkbox" value="" id=""
												title="고정하기"> <span class="icon-box"><i
													class="bi bi-pin-angle"></i><i class="bi bi-pin-angle-fill"></i></span>
											</label>
										</div>
										<!-- 썸네일 텍스트 -->
										<div class="thumbnail-box thumnail-txt">
											<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
											<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
										</div>
									</div>
									<div class="card-bottom">
										<!-- 제목 -->
										<a href="javascript:;" class="card-tit mb-2"> <span
											class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
										</span>
										</a>
										<!-- 상세내용 -->
										<p class="card-text text-truncate mb-2">내용입니다. 내용입니다.
											내용입니다. 내용입니다. 내용입니다.</p>
									</div>
								</div>
							</li>
							<!-- //텍스트 썸네일 -->
						</ul>

						<!-- 더보기 -->
						<div class="col-12 btn-box">
							<div class="btn-center">
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#completeList">
									<i class="bi bi-plus-lg"></i> 더보기
								</button>
							</div>
						</div>
						<!-- //더보기 -->

						<!-- Scrollable modal -->
						<!-- 완료목록팝업 -->
						<div class="modal fade completeList-popup" id="completeList"
							tabindex="-1" aria-labelledby="completeListLabel"
							aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<h1 class="modal-title fs-5" id="completeListLabel">팝업02
											제목</h1>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="modal-contents" style="height: 1000px;">

											<div class="con-section complete-list">

												<ul
													class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
													<!-- 이미지 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 이미지 -->
																<div class="thumbnail-box img-box">
																	<img src="../../asset/images/img_sample00.jpg"
																		alt="썸네일샘플" />
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //이미지 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
													<!-- 이미지 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 이미지 -->
																<div class="thumbnail-box img-box">
																	<img src="../../asset/images/img_sample00.jpg"
																		alt="썸네일샘플" />
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //이미지 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
													<!-- 이미지 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 이미지 -->
																<div class="thumbnail-box img-box">
																	<img src="../../asset/images/img_sample00.jpg"
																		alt="썸네일샘플" />
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //이미지 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
													<!-- 텍스트 썸네일 -->
													<li class="col-12 col-sm-6 col-md-4 col-lg-4">
														<div class="card p-4 d-flex flex-column">
															<div class="card-top">
																<!-- 고정하기 -->
																<div class="form-check zzim fixed">
																	<label class="form-check-label"> <input
																		class="form-check-input" type="checkbox" value=""
																		id="" title="고정하기"> <span class="icon-box"><i
																			class="bi bi-pin-angle"></i><i
																			class="bi bi-pin-angle-fill"></i></span>
																	</label>
																</div>
																<!-- 썸네일 텍스트 -->
																<div class="thumbnail-box thumnail-txt">
																	<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
																	<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
																</div>
															</div>
															<div class="card-bottom">
																<!-- 제목 -->
																<a href="javascript:;" class="card-tit mb-2"> <span
																	class="h3"> 제목입니다.제목입니다.<br>제목입니다.제목입니다.
																</span>
																</a>
																<!-- 상세내용 -->
																<p class="card-text text-truncate mb-2">내용입니다.
																	내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
															</div>
														</div>
													</li>
													<!-- //텍스트 썸네일 -->
												</ul>
											</div>
											<!-- 페이지네이션 -->
											<div class="page-box">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Previous"> <span aria-hidden="true">«</span>
														</a></li>
														<li class="page-item"><a class="page-link" href="#">1</a></li>
														<li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Next"> <span aria-hidden="true">»</span>
														</a></li>
													</ul>
												</nav>
											</div>
											<!-- //페이지네이션 -->
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //완료목록팝업 -->
				</div>
			</div>
		</section>
	</div>
	<!-- //바디영역 -->

	<!-- 푸터영역 -->
	<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->


	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script>
		
	</script>
</body>

</html>