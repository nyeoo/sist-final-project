<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<nav class="navbar navbar-expand-md m-header-area sticky-top"
	aria-label="Fifth navbar example">
	<div class="container-xl">
		<!-- 로고 -->
		<a class="navbar-brand" href="#">IT-Meet<em>Up</em></a>

		<!-- mob 메뉴 버튼 -->
		<button class="navbar-toggler" type="button"
			data-bs-toggle="offcanvas" data-bs-target="#navbarsExample05"
			aria-controls="navbarsExample05" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- 메뉴영역 -->
		<div class="offcanvas offcanvas-end text-bg-dark m-right-nav"
			id="navbarsExample05">
			<div class="offcanvas-header">
				<!-- (mob) 사이드 메뉴 제목 -->
				<h5 class="offcanvas-title" id="offcanvasNavbarDarkLabel"></h5>
				<!-- 닫기버튼 -->
				<button type="button" class="btn-close btn-close-white"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>

			<!-- (mob) 사이드 메뉴 & (pc) 대메뉴 -->
			<div class="offcanvas-body">
				<ul class="navbar-nav me-auto mb-lg-0 m-head-gnb">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="#">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="WriteFormControl.action">모집공고작성</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false">프로젝트 라운지</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">모집공고보기</a></li>
							<li><a class="dropdown-item" href="#">완료된 프로젝트</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link">Meet 그룹</a></li>
				</ul>

				<!-- 알림 -->
				<ul class="navbar-nav me-2 mb-lg-0">
					<li class="nav-item dropdown list-group"><a
						class="nav-link nav-icon m-ball" href="#"
						data-bs-toggle="dropdown" aria-expanded="false"
						data-bs-auto-close="outside"> <i class="bi bi-bell-fill"></i><span
							class="blind">알림</span> <span
							class="badge bg-primary badge-number">4</span>
					</a> <!-- 팝업으로 표시되는 알림 내용 -->
						<div class="dropdown-menu dropdown-menu-end notifications"
							id="notificationPopup" style="width: 600px;">
							<!-- 탭 메뉴 -->
							<nav>
								<div class="nav nav-tabs nav-tabs-bordered mb-3"
									id="nav-management-subtab" role="tablist">
									<button class="nav-link active" id="nav-1dep-applied-tab"
										data-bs-toggle="tab" data-bs-target="#nav-1dep-applied"
										type="button" role="tab" aria-controls="nav-1dep-applied"
										aria-selected="true">팀 개설 요청</button>
									<button class="nav-link" id="nav-group-tab"
										data-bs-toggle="tab" data-bs-target="#nav-1dep-group"
										type="button" role="tab" aria-controls="nav-1dep-group"
										aria-selected="false">그룹</button>
								</div>
							</nav>

							<!-- 탭 내용 -->
							<div class="tab-content" id="nav-management-subtabContent">
								<!-- 1dep : 팀 개설 요청 알림 탭 -->
								<div class="tab-pane fade show active" id="nav-1dep-applied"
									role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
									<nav>
										<div class="tab-pane fade show active" id="nav-applied-tab"
											role="tabpanel" aria-labelledby="nav-applied-tab">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item" role="presentation">
													<button class="nav-link active" id="pick-alert-tab"
														data-bs-toggle="tab" data-bs-target="#pick-alert"
														type="button" role="tab" aria-controls="pick-alert"
														aria-selected="true">픽</button>
												</li>
												<li class="nav-item" role="presentation">
													<button class="nav-link" id="participant-confirmation-tab"
														data-bs-toggle="tab"
														data-bs-target="#participant-confirmation" type="button"
														role="tab" aria-controls="participant-confirmation"
														aria-selected="false">참여자 확인</button>
												</li>
												<li class="nav-item" role="presentation">
													<button class="nav-link" id="dday-alert-tab"
														data-bs-toggle="tab" data-bs-target="#dday-alert"
														type="button" role="tab" aria-controls="dday-alert"
														aria-selected="false">디데이</button>
												</li>
												<li class="nav-item" role="presentation">
													<button class="nav-link" id="comment-alert-tab"
														data-bs-toggle="tab" data-bs-target="#comment-alert"
														type="button" role="tab" aria-controls="comment-alert"
														aria-selected="false">댓글</button>
												</li>
												<li class="nav-item" role="presentation">
													<button class="nav-link" id="reply-alert-tab"
														data-bs-toggle="tab" data-bs-target="#reply-alert"
														type="button" role="tab" aria-controls="reply-alert"
														aria-selected="false">대댓글</button>
												</li>
											</ul>
										</div>
									</nav>
									<!-- 알림 내용 -->
									<div class="tab-content">
										<div class="tab-pane fade show active" id="nav-applied"
											role="tabpanel" aria-labelledby="nav-applied-tab">
											<div class="tab-content">
												<div class="tab-pane fade show active" id="pick-alert"
													role="tabpanel" aria-labelledby="pick-alert-tab">
													<div class="tab-pane fade show active" id="pick-alert"
														role="tabpanel" aria-labelledby="pick-alert-tab">
														<div class="alert" role="alert">
															<strong><span class="badge text-bg-primary">픽
																	알림</span></strong> <span class="text-muted float-end small">
																2024년 2월 24일 오후 3시 30분 </span>
															<hr class="my-2">
															<p>
																<strong>흑곰불꽃발바닥님이 신청하신 팀 개설 요청에 픽!되었습니다.</strong> (픽된
																멤버로 프로젝트가 만들어집니다. 신청을 취소하실 경우 신고처리가 부여됩니다.) <a href="#"
																	class="alert-link"><i class="bi bi-plus-square"></i></a>
															</p>
														</div>
														<div class="alert" role="alert">
															<strong><span class="badge text-bg-primary">픽
																	알림</span></strong> <span class="text-muted float-end small">
																2024년 2월 24일 오후 3시 30분 </span>
															<hr class="my-2">
															<p>
																<strong>국비지원님이 신청하신 팀 개설 요청에 픽!되었습니다.</strong> (픽된 멤버로
																프로젝트가 만들어집니다. 신청을 취소하실 경우 신고처리가 부여됩니다.) <a href="#"
																	class="alert-link"><i class="bi bi-plus-square"></i></a>
															</p>
														</div>
														<div class="alert" role="alert">
															<strong><span class="badge text-bg-primary">픽
																	알림</span></strong> <span class="text-muted float-end small">
																2024년 2월 24일 오후 3시 30분 </span>
															<hr class="my-2">
															<p>
																<strong>아아아아앙님이 신청하신 팀 개설 요청에 픽!되었습니다.</strong> (픽된 멤버로
																프로젝트가 만들어집니다. 신청을 취소하실 경우 신고처리가 부여됩니다.) <a href="#"
																	class="alert-link"><i class="bi bi-plus-square"></i></a>
															</p>
														</div>
													</div>
												</div>

												<!-- 참여자 확인 알림 -->
												<div class="tab-pane fade" id="participant-confirmation"
													role="tabpanel"
													aria-labelledby="participant-confirmation-tab">
													<div class="alert" role="alert">
														<strong> <span class="badge text-bg-secondary">참여자
																확인 알림</span>
														</strong> <span class="text-muted float-end small"> 2024년 2월
															24일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아아앙님이 XX님이 신청하신 팀 개설 요청가 개설될 예정입니다.
																프로젝트의 내용을 확인해주세요.</strong>
														</p>
														<p>
															(3일안에 확인하지 않으실 경우, 프로젝트가 실패됩니다.) <a href="#"
																class="alert-link"><i class="bi bi-plus-square"></i></a>
														</p>
													</div>
													<div class="alert" role="alert">
														<strong> <span class="badge text-bg-secondary">참여자
																확인 알림</span>
														</strong> <span class="text-muted float-end small"> 2024년 2월
															26일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아아앙님이 XX님이 신청하신 팀 개설 요청가 개설될 예정입니다.
																프로젝트의 내용을 확인해주세요.</strong>
														</p>
														<p>
															(3일안에 확인하지 않으실 경우, 프로젝트가 실패됩니다.) <a href="#"
																class="alert-link"><i class="bi bi-plus-square"></i></a>
														</p>
													</div>
													<div class="alert" role="alert">
														<strong> <span class="badge text-bg-secondary">참여자
																확인 알림</span>
														</strong> <span class="text-muted float-end small"> 2024년 2월
															28일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아아앙님이 XX님이 신청하신 팀 개설 요청가 개설될 예정입니다.
																프로젝트의 내용을 확인해주세요.</strong>
														</p>
														<p>
															(3일안에 확인하지 않으실 경우, 프로젝트가 실패됩니다.) <a href="#"
																class="alert-link"><i class="bi bi-plus-square"></i></a>
														</p>
													</div>
												</div>

												<!-- 디데이 알림  -->
												<div class="tab-pane fade" id="dday-alert" role="tabpanel"
													aria-labelledby="dday-alert-tab">
													<div class="alert" role="alert">
														<strong><span class="badge text-bg-success">디데이
																알림</span></strong> <span class="text-muted float-end small">
															2024년 2월 26일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아앙님에게 딱 맞는 팀 개설 요청입니다.</strong>
														</p>
														<p>
															(게시물을 보실려면 플러스 버튼을 누르세요.)<a href="#" class="alert-link"><i
																class="bi bi-plus-square"></i></a>
														</p>
													</div>
												</div>

												<!-- 댓글 알림 -->
												<div class="tab-pane fade" id="comment-alert"
													role="tabpanel" aria-labelledby="comment-alert-tab">
													<div class="alert" role="alert">
														<strong><span class="badge text-bg-danger">댓글
																알림</span></strong> <span class="text-muted float-end small">
															2024년 2월 26일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아앙님의 게시물에 댓글이 작성되었습니다.</strong>
														</p>
														<p>
															(확인하실려면 플러스 버튼을 누르세요.) <a href="#" class="alert-link"><i
																class="bi bi-plus-square"></i></a>
														</p>
													</div>
												</div>

												<!-- 대댓글 알림 -->
												<div class="tab-pane fade" id="reply-alert" role="tabpanel"
													aria-labelledby="reply-alert-tab">
													<div class="alert" role="alert">
														<strong><span class="badge text-bg-warning">대댓글
																알림</span></strong> <span class="text-muted float-end small">
															2024년 2월 26일 오후 3시 30분 </span>
														<hr class="my-2">
														<p>
															<strong>아아아앙님의 댓글에 답변이 작성되었습니다.</strong>
														</p>
														<p>
															(확인하실려면 플러스 버튼을 누르세요.) <a href="#" class="alert-link"><i
																class="bi bi-plus-square"></i></a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- //1dep : 팀 개설 요청 알림 탭 -->
								<!-- 1dep : 그룹 탭 -->
								<div class="tab-pane fade" id="nav-1dep-group" role="tabpanel"
									aria-labelledby="nav-group-tab" tabindex="0">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item" role="presentation">
											<button class="nav-link active" id="task-alert-tab"
												data-bs-toggle="tab" data-bs-target="#task-alert"
												type="button" role="tab" aria-controls="task-alert"
												aria-selected="true">업무 미할당</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="report-missing-alert-tab"
												data-bs-toggle="tab" data-bs-target="#report-missing-alert"
												type="button" role="tab"
												aria-controls="report-missing-alert" aria-selected="false">업무
												보고 누락</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="weekly-report-missing-alert-tab"
												data-bs-toggle="tab"
												data-bs-target="#weekly-report-missing-alert" type="button"
												role="tab" aria-controls="weekly-report-missing-alert"
												aria-selected="false">주간업무보고 미작성</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="project-stop-alert-tab"
												data-bs-toggle="tab" data-bs-target="#project-stop-alert"
												type="button" role="tab" aria-controls="project-stop-alert"
												aria-selected="false">프로젝트 중단</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="evaluation-missing-alert-tab"
												data-bs-toggle="tab"
												data-bs-target="#evaluation-missing-alert" type="button"
												role="tab" aria-controls="evaluation-missing-alert"
												aria-selected="false">평가 미 작성</button>
										</li>
									</ul>
								</div>
								<!-- //1dep : 그룹 탭 -->
							</div>
						</div></li>
				</ul>
				<!-- //알림 -->

				<!-- 개인계정 -->
				<div class="d-flex personal-box">
					<!-- 개인계정 영역 -->
					<div class="flex-shrink-0 dropdown m-avator">
						<a href="#"
							class="d-block link-body-emphasis text-decoration-none dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
							src="https://github.com/mdo.png" alt="mdo" width="32" height="32"
							class="rounded-circle">
						</a>
						<ul class="dropdown-menu dropdown-menu-end text-small shadow">
							<li class="dropdown-header">
								<h6>닉네임</h6> <span>@아이디</span>
							</li>
							<li><a class="dropdown-item" href="MyInfo.jsp">마이페이지</a></li>
							<li><a class="dropdown-item" href="ApplyManagement.jsp">모집/신청
									관리</a></li>
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