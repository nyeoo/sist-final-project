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
		<a class="navbar-brand" href="home.action">IT-Meet<em>Up</em></a>

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
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#">홈</a></li>
					<li class="nav-item"><a class="nav-link"
						href="WriteFormControl.action">모집공고작성</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						data-bs-toggle="dropdown" aria-expanded="false">프로젝트 라운지</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">모집공고보기</a></li>
							<li><a class="dropdown-item" href="completeproject.action">완료된 프로젝트</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="grouphome.action?memCode=${sessionScope.loginDTO.piMemCode}">Meet 그룹</a></li>
					
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
											<div class="tab-content" style="overflow-y: auto; max-height: 60vh;">
												<div class="tab-pane fade show active" id="pick-alert"
													role="tabpanel" aria-labelledby="pick-alert-tab">
													<div class="tab-pane fade show active" id="pick-alert"
														role="tabpanel" aria-labelledby="pick-alert-tab">
														
														<!-- 픽 알림 리스트 뿌리기 -->
														<c:forEach var="pickNtfItem" items="${pickNtfList }">
															<div class="alert" role="alert">
																<strong> 
																	<span class="badge text-bg-primary">픽 알림</span>
																</strong>
																<span class="text-muted float-end small">
																	${pickNtfItem.pickDate } 
																</span>
																<hr class="my-2">
																<p>
																	<strong> 
																		["${pickNtfItem.job }"] 로 신청하신 ["${pickNtfItem.title }"] 팀 개설 요청에 픽!되었습니다. 
																	</strong> 
																	(픽된 멤버로 프로젝트가 만들어집니다. 신청을 취소하실 경우 신고처리가 부여됩니다.) <br>
																	<a href="#" class="alert-link"> 
																		더보기 <i class="bi bi-plus-square"></i>
																	</a>
																</p>
															</div>
														</c:forEach>
														
													</div>
												</div>

												<!-- 참여자 확인 알림 -->
												<div class="tab-pane fade" id="participant-confirmation"
													role="tabpanel"
													aria-labelledby="participant-confirmation-tab">
													<c:forEach var="partCheckNtfItem" items="${partCheckNtfList }">
														<div class="alert" role="alert">
															<strong> 
																<span class="badge text-bg-secondary">
																	참여자 확인 알림
																</span>
															</strong> 
															<span class="text-muted float-end small"> 
																${partCheckNtfItem.pcDate }
															</span>
															<hr class="my-2">
															<p>
																<strong>
																	["${partCheckNtfItem.job }"] 로 신청하신 ["${partCheckNtfItem.title }"] 팀 개설 요청 그룹이 개설될 예정입니다.
																	프로젝트의 내용을 확인해주세요.
																</strong>
															</p>
															<p>
																(3일안에 확인하지 않으실 경우, 프로젝트가 실패됩니다.) 
																<a href="#" class="alert-link"> 
																	더보기 <i class="bi bi-plus-square"></i>
																</a>
															</p>
														</div>
													</c:forEach>
												</div>

												<!-- 디데이 알림  -->
												<div class="tab-pane fade" id="dday-alert" role="tabpanel"
													aria-labelledby="dday-alert-tab">
													<c:forEach var="ddayNtfItem" items="${ddayNtfList }">
														<div class="alert" role="alert">
															<strong>
																<span class="badge text-bg-success">
																	디데이 알림
																</span>
															</strong> 
															<span class="text-muted float-end small">
																${ddayNtfItem.dnDate }
															</span><hr class="my-2">
															<p>
																<!-- <strong>회원님이 선호하는 "(직무)", "(모임방식)", "(지역)" 에 딱 맞는 팀 개설 요청입니다.</strong> -->
																<strong> 프로젝트 ["${ddayNtfItem.title }"] 에 딱 맞는 팀 개설 요청입니다.</strong>
															</p>
															<p>
																(게시물을 보실려면 플러스 버튼을 누르세요.)
																<a href="#" class="alert-link">
																	더보기 <i class="bi bi-plus-square"></i>
																</a>
															</p>
														</div>
													</c:forEach>
												</div>

												<!-- 댓글 알림 -->
												<div class="tab-pane fade" id="comment-alert"
													role="tabpanel" aria-labelledby="comment-alert-tab">
													<c:forEach var="commentNtfItem" items="${commentNtfList }">
														<div class="alert" role="alert">
															<strong>
																<span class="badge text-bg-danger">
																	댓글알림
																</span>
															</strong> 
															<span class="text-muted float-end small">
																${commentNtfItem.comDate }
															</span>
															<hr class="my-2">
															<p>
																<strong> 작성한 ["${commentNtfItem.title }"] 프로젝트 게시물에 댓글이 작성되었습니다.</strong>
															</p>
															<p>
																(댓글을 확인하실려면 플러스 버튼을 누르세요.) 
																<a href="#" class="alert-link">
																	더보기 <i class="bi bi-plus-square"></i>
																</a>
															</p>
														</div>
													</c:forEach>
												</div>


												<!-- 대댓글 알림 -->
												<div class="tab-pane fade" id="reply-alert" role="tabpanel"
													aria-labelledby="reply-alert-tab">
													<c:forEach var="recommentNtfItem" items="${recommentNtfList }">
														<div class="alert" role="alert">
															<strong>
																<span class="badge text-bg-warning">대댓글알림</span>
															</strong> 
															<span class="text-muted float-end small">
																${recommentNtfItem.rnDate } 
															</span>
															<hr class="my-2">
															<p>
																<strong>회원님이 작성한 댓글에 답변이 작성되었습니다.</strong>
															</p>
															<p>
																(확인하실려면 플러스 버튼을 누르세요.) 
																<a href="#" class="alert-link">
																	더보기 <i class="bi bi-plus-square"></i>
																</a>
															</p>
														</div>
													</c:forEach>
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
					<c:choose>
						<c:when test="${sessionScope.loginDTO.piMemCode!=null}">
							<!-- 개인계정 영역 -->
							<div class="flex-shrink-0 dropdown m-avator">
								<a href="#"
									class="d-block link-body-emphasis text-decoration-none dropdown-toggle"
									data-bs-toggle="dropdown" aria-expanded="false"> <span
									class="member-icon-box <c:if test='${sessionScope.admin==1}'> admin</c:if>">
										<span class="member-icon-img"> <!-- <img
										src="<%=cp%>/asset/images/img_sample00.jpg" alt="userImage"> -->
									</span>


								</span>
								</a>
								<ul class="dropdown-menu dropdown-menu-end text-small shadow">
									<li class="dropdown-header"><c:if
											test='${sessionScope.admin==1}'>
											<span class="badge text-bg-primary">관리자</span>
										</c:if>
										<h6>${sessionScope.loginDTO.piNickname }</h6> <span>@${sessionScope.loginDTO.piPw }</span>
									</li>
									<li><a class="dropdown-item" href="myinfo.action">마이페이지</a></li>
									<li><a class="dropdown-item" href="projectmanagement.action">모집/신청
											관리</a></li>
									<li><a class="dropdown-item" href="namecard.action?memCode=${sessionScope.loginDTO.piMemCode}">네임카드</a></li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li><a class="dropdown-item"
										href="/IT_MeetUp/logout.action">로그아웃</a></li>
								</ul>
							</div>
							<!-- //개인계정영역 -->
						</c:when>
						<c:otherwise>
							<!-- 로그인, 회원가입 -->
							<div class="d-flex m-login">
								<button type="button" class="btn btn-outline-primary me-2"
									onclick="location.href='/IT_MeetUp/login.action'">로그인</button>
								<button type="button" class="btn btn-primary"
									onclick="location.href='/IT_MeetUp/join.action'">회원가입</button>
							</div>
							<!-- //로그인, 회원가입 -->
						</c:otherwise>
					</c:choose>
				</div>
				<!-- //개인계정 -->
			</div>
			<!-- //(mob) 사이드 메뉴 & (pc) 대메뉴 -->
		</div>
		<!-- //메뉴영역 -->
	</div>
</nav>