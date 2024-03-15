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
<title>Home.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_bny.css">


<!-- font-awesome -->
<script src="https://kit.fontawesome.com/81ca059e0e.js"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area h-body-section">
			<!-- 홈 소개 -->
			<div class="intro">
				<span class="intro-description_header">팀원 모집, 프로젝트 관리, 포트폴리오
					생성</span>
				<p class="intro-description_content">여러분의 아이디어를 현실로 만들기 위한 팀원을
					찾고 계신가요? 혹은 참여하고 싶은 멋진 프로젝트를 찾고 계신가요?</p>
				<p class="intro-description_content">IT Meetup은 팀원 모집뿐만 아니라, 그룹
					형성과 프로젝트 진행을 효과적으로 지원하며,</p>
				<p class="intro-description_content">성공적으로 완료된 프로젝트는 자동으로 멋진
					포트폴리오로 기록됩니다.</p>
				<p class="intro-description_content">지금 바로, 여러분의 비전을 실현하는 여정에
					함께해요! 🚀</p>
				<button type="button" class="btn btn-primary btn-home">팀원
					모집하러가기</button>
				<button type="button" class="btn btn-light btn-home">참여
					신청하러가기</button>
			</div>

			<div class="section">
				<div class="container-xl">
					<h3 class="mb-5">🔥인기 모집공고</h3>

					<!-- 인기 스와이퍼 -->
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
								<c:forEach var="pop" items="${popList }">
									<li class="swiper-slide">
										<div class="card p-4 d-flex flex-column sm-card">
											<div class="card-top">
												<!-- 찜하기 -->
												<div class="form-check zzim" id="zzim1">
													<label class="form-check-label"><input class="form-check-input wish" type="checkbox" value="${pop.code }" name="wish" id="wish1" title="찜하기" 
											 ${wishList.contains(pop.code) ? 'checked' : ''} ><span class="icon-box"><i
															class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
													</label>
												</div>
												<!-- 데드라인/ 시작예정일 - 예상기간 -->
												<div class="mb-1 text-body-secondary">
													<span class="deadline">마감까지 D-${pop.day }</span><span
														class="home-period">${pop.start } ~ ${pop.end }</span>
												</div> 
												<!-- 직무 -->
												<div class="d-flex job-box">
													<c:forEach var="job" items="${jobList[pop.code] }">
														<c:choose>
															<c:when test="${job.jobCode eq 'JOB_1'}">
																<span class="badge rounded-pill bg-success">기획</span>
															</c:when>
															<c:when test="${job.jobCode eq 'JOB_2'}">
																<span class="badge rounded-pill bg-danger">디자인</span>
															</c:when>
															<c:when test="${job.jobCode eq 'JOB_3'}">
																<span class="badge rounded-pill bg-primary">프론트</span>
															</c:when>
															<c:otherwise>
																<span class="badge rounded-pill bg-secondary">백</span>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</div>
											</div>
											<div class="card-bottom">
												<!-- 작성자 -->
												<strong class="mb-2 text-primary-emphasis writer">
													<c:if test="${empty pop.profile}">
														<i class="fa-solid fa-circle-user no-profile-sm"></i>
													</c:if>
													<span>${pop.nickname }</span>
												</strong>
												<!-- 제목 -->
												<a href="javascript:;" class="card-tit mb-2"> <span
													class="h3">${pop.title }</span>
												</a>
												<!-- 상세내용 -->
												<p class="card-text text-truncate mb-2">${pop.content }</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<!-- 사용언어 -->
													<div class="language-box ">
														<c:forEach var="skill" items="${skillList[pop.code] }">
															<div class="badge-language ${skill }"></div>
														</c:forEach>
													</div>
													<!-- 조회수 -->
													<small class="text-body-secondary">view ${pop.view }</small>
												</div>
											</div>
										</div>
									</li>
								</c:forEach>

							</ul>
							<div class="swiper-pagination"></div>
						</div>
					</div>
					<!-- //마감 스와이퍼 -->

				</div>
			</div>
			<div class="section">
				<div class="container-xl">
					<h3 class="mb-5">🌟신규 모집공고</h3>

					<!-- 신규 스와이퍼 -->
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
								<c:forEach var="recent" items="${newList }">
									<li class="swiper-slide">
										<div class="card p-4 d-flex flex-column sm-card">
											<div class="card-top">
												<!-- 찜하기 -->
												<div class="form-check zzim" id="zzim2">
													<label class="form-check-label"><input class="form-check-input wish" type="checkbox" name="wish" value="${recent.code }" id="wish2" title="찜하기" 
											 ${wishList.contains(recent.code) ? 'checked' : ''} ><span class="icon-box"><i
															class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
													</label>
												</div>
												<!-- 데드라인/ 시작예정일 - 예상기간 -->
												<div class="mb-1 text-body-secondary">
													<span class="deadline">마감까지 D-${recent.day }</span><span
														class="home-period">${recent.start } ~ ${recent.end }</span>
												</div>
												<!-- 직무 -->
												<div class="d-flex job-box">
													<c:forEach var="job" items="${jobList[recent.code] }">
														<c:choose>
															<c:when test="${job.jobCode eq 'JOB_1'}">
																<span class="badge rounded-pill bg-success">기획</span>
															</c:when>
															<c:when test="${job.jobCode eq 'JOB_2'}">
																<span class="badge rounded-pill bg-danger">디자인</span>
															</c:when>
															<c:when test="${job.jobCode eq 'JOB_3'}">
																<span class="badge rounded-pill bg-primary">프론트</span>
															</c:when>
															<c:otherwise>
																<span class="badge rounded-pill bg-secondary">백</span>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</div>
											</div>
											<div class="card-bottom">
												<!-- 작성자 -->
												<strong class="mb-2 text-primary-emphasis writer">
													<c:if test="${empty pop.profile}">
														<i class="fa-solid fa-circle-user no-profile-sm"></i>
													</c:if>
													<span>${recent.nickname }</span>
												</strong>
												<!-- 제목 -->
												<a href="javascript:;" class="card-tit mb-2"> <span
													class="h3">${recent.title }</span>
												</a>
												<!-- 상세내용 -->
												<p class="card-text text-truncate mb-2">${recent.content }</p>
												<div
													class="d-flex justify-content-between align-items-center">
													<!-- 사용언어 -->
													<div class="language-box ">
														<c:forEach var="skill" items="${skillList[recent.code] }">
															<div class="badge-language ${skill }"></div>
														</c:forEach>
													</div>
													<!-- 조회수 -->
													<small class="text-body-secondary">view
														${recent.view }</small>
												</div>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div class="swiper-pagination"></div>
						</div>
					</div>
					<!-- //마감 스와이퍼 -->

				</div>
			</div>
			<%-- <div class="container-xl">

							<div class="content_tit">
								<p class="h3">Heading 3</p>
								<!-- 브레드크럼블 -->
								<c:import url="../Components/Breadcrumb.jsp"></c:import>
								<!-- //브레드크럼블 -->
							</div>

							<!-- 콘텐츠 내용 -->

				</div> --%>
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
	<script src="<%=cp%>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script>
		$(document).ready(function()
		{
			if(<%=(String)session.getAttribute("loginDTO")%>==null)
			{
				let zzim1 = document.getElementById("zzim1");
				zzim1.classList.add("notzz");
				let zzim2 = document.getElementById("zzim2");
				zzim2.classList.add("notzz");
			}
				
			// 찜하기 버튼 눌렀을 때 
			$('.wish').change(function() 
			{
					
				$("input:checkbox[name='wish']").prop("checked", false);
				
				//alert("로그인이 필요한 기능입니다.")
				//$(location).attr("href", "login.action");
				return;
				
				
			    var isChecked = $(this).prop('checked');     // 체크 여부 확인
			    var code = $(this).val(); 					 // 프로젝트 코드 가져오기
				
			    if (isChecked)
			    {
				    $.ajax({
			            url: 'addWish.action',
			            type: 'GET',
			            data: { isChecked: isChecked, code: code },
			            success: function(response) {
			                console.log(response);				// 성공시
			            },
			            error: function(xhr, status, error) {
			                console.error(error); 				//  실패시 오류 메시지를 콘솔에 출력
			               
			            }
			        });
				}
			    else
			    {
			    	$.ajax({
			            url: 'removeWish.action',
			            type: 'GET',
			            data: { isChecked: isChecked, code: code },
			            success: function(response) {
			                console.log(response); 				// 성공시
			            },
			            error: function(xhr, status, error) {
			                console.error(error); 				//  실패시 오류 메시지를 콘솔에 출력
			            }
			        });
			    }
			});
			
			
		});
	</script>
</body>

</html>