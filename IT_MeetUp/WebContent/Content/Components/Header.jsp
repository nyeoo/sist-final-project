<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<nav class="navbar navbar-expand-md m-header-area sticky-top" aria-label="Fifth navbar example">
	<div class="container-xl">
		<!-- 로고 -->
		<a class="navbar-brand" href="#">IT-Meet<em>Up</em></a>

		<!-- mob 메뉴 버튼 -->
		<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- 메뉴영역 -->
		<div class="offcanvas offcanvas-end text-bg-dark m-right-nav" id="navbarsExample05">
			<div class="offcanvas-header">
				<!-- (mob) 사이드 메뉴 제목 -->
				<h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel"></h5>
				<!-- 닫기버튼 -->
				<button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>

			<!-- (mob) 사이드 메뉴 & (pc) 대메뉴 -->
			<div class="offcanvas-body">
				<ul class="navbar-nav me-auto mb-lg-0 m-head-gnb">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="#">홈</a> <!-- [안내] nav-link: 
                ㄴ 활성화 -> .active 
                ㄴ 비활성화 -> .disabled & aria-disabled="true" --></li>
					<li class="nav-item"><a class="nav-link" href="#">모집공고작성</a></li>
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">프로젝트 라운지</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">모집공고보기</a></li>
							<li><a class="dropdown-item" href="#">완료된 프로젝트</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link">Meet 그룹</a></li>
				</ul>

				<!-- 검색영역 -->
				<!-- <form role="search" class="me-3">
		            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
		          </form> -->
				<!-- //검색영역 -->

				<!-- 알림 -->
				<ul class="navbar-nav me-2 mb-lg-0">
					<li class="nav-item dropdown list-group"><a class="nav-link nav-icon m-ball" href="#" data-bs-toggle="dropdown" aria-expanded="false"><i
							class="bi bi-bell-fill"></i><span class="blind">알림</span> <span class="badge bg-primary badge-number">4</span> </a> <!-- 팝업으로 표시되는 알림 내용 -->
						<div class="dropdown-menu dropdown-menu-end notifications" id="notificationPopup">
							<!-- 텝 메뉴 -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item" role="presentation">
									<button class="nav-link active" id="pick-alert-tab" data-bs-toggle="tab" data-bs-target="#pick-alert" type="button" role="tab"
										aria-controls="pick-alert" aria-selected="true">픽</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="participant-confirmation-tab" data-bs-toggle="tab" data-bs-target="#participant-confirmation" type="button"
										role="tab" aria-controls="participant-confirmation" aria-selected="false">참여자 확인</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="dday-alert-tab" data-bs-toggle="tab" data-bs-target="#dday-alert" type="button" role="tab"
										aria-controls="dday-alert" aria-selected="false">디데이</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="comment-alert-tab" data-bs-toggle="tab" data-bs-target="#comment-alert" type="button" role="tab"
										aria-controls="comment-alert" aria-selected="false">댓글</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="reply-alert-tab" data-bs-toggle="tab" data-bs-target="#reply-alert" type="button" role="tab"
										aria-controls="reply-alert" aria-selected="false">대댓글</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="task-alert-tab" data-bs-toggle="tab" data-bs-target="#task-alert" type="button" role="tab"
										aria-controls="task-alert" aria-selected="false">업무</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="weekly-report-alert-tab" data-bs-toggle="tab" data-bs-target="#weekly-report-alert" type="button" role="tab"
										aria-controls="weekly-report-alert" aria-selected="false">주간 업보고</button>
								</li>
								<li class="nav-item" role="presentation">
									<button class="nav-link" id="evaluation-missing-alert-tab" data-bs-toggle="tab" data-bs-target="#evaluation-missing-alert" type="button"
										role="tab" aria-controls="evaluation-missing-alert" aria-selected="false">평가 미 작성</button>
								</li>
							</ul>

							<!-- 텝 내용 -->
							<div class="tab-content">
								<div class="tab-pane fade show active" id="pick-alert" role="tabpanel" aria-labelledby="pick-alert-tab">
									<!-- 픽알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="participant-confirmation" role="tabpanel" aria-labelledby="participant-confirmation-tab">
									<!-- 참여자 확인 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="dday-alert" role="tabpanel" aria-labelledby="dday-alert-tab">
									<!-- 디데이 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="comment-alert" role="tabpanel" aria-labelledby="comment-alert-tab">
									<!-- 댓글 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="reply-alert" role="tabpanel" aria-labelledby="reply-alert-tab">
									<!-- 대댓글 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="task-alert" role="tabpanel" aria-labelledby="task-alert-tab">
									<!-- 업무 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="weekly-report-alert" role="tabpanel" aria-labelledby="weekly-report-alert-tab">
									<!-- 주간 업보고 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
								<div class="tab-pane fade" id="evaluation-missing-alert" role="tabpanel" aria-labelledby="evaluation-missing-alert-tab">
									<!-- 평가 미 작성 알림 내용 -->
									<!-- 필요한 내용 추가 -->
								</div>
							</div>
						</div></li>
				</ul>
				<!-- //알림 -->

				<!-- 개인계정 -->
				<div class="d-flex personal-box">

					<!-- 개인계정 영역 -->
					<div class="flex-shrink-0 dropdown m-avator">
						<a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
						</a>
						<ul class="dropdown-menu dropdown-menu-end text-small shadow">
							<li class="dropdown-header">
								<h6>닉네임</h6> <span>@아이디</span>
							</li>
							<li><a class="dropdown-item" href="MyInfo.jsp">마이페이지</a></li>
							<li><a class="dropdown-item" href="ApplyManagement.jsp">모집/신청 관리</a></li>
							<li><a class="dropdown-item" href="NameCard.jsp">네임카드</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul>
					</div>

					<!-- 로그인, 회원가입 -->
					<div class="d-flex m-login">
						<button type="button" class="btn btn-outline-primary me-2">Login</button>
						<button type="button" class="btn btn-primary">Sign-up</button>
					</div>
					<!-- //로그인, 회원가입 -->

					<!-- //개인계정영역 -->
				</div>
				<!-- //개인계정 -->
			</div>
			<!-- //(mob) 사이드 메뉴 & (pc) 대메뉴 -->
		</div>
		<!-- //메뉴영역 -->
	</div>
</nav>