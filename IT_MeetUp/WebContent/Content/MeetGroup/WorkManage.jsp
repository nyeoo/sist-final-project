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
<title>WorkManage</title>
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
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">

			<div class="container-xl">

				<!-- 사이드 영역 -->
				<c:import url="../Components/Side.jsp"></c:import>
				<!-- //사이드 영역 -->

				<!-- 탭 -->
				<div class="comp_box">
					<h2 class="comp_tit">업무관리</h2>

					<div class="tab-box">
						<nav>
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
								role="tablist">
								<button class="nav-link active" id="nav-home-tab"
									data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
									role="tab" aria-controls="nav-home" aria-selected="true">일정관리</button>
								<button class="nav-link" id="nav-profile-tab"
									data-bs-toggle="tab" data-bs-target="#nav-profile"
									type="button" role="tab" aria-controls="nav-profile"
									aria-selected="false">업무할당표</button>
								<button class="nav-link" id="nav-contact-tab"
									data-bs-toggle="tab" data-bs-target="#nav-contact"
									type="button" role="tab" aria-controls="nav-contact"
									aria-selected="false">업무 보고 목록</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<!-- 첫 번째 탭: 일정 관리 -->
							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab">
								<div>
									<div class="card tbl-card">
										<div data-include="../MeetGroup/ScheduleManage.jsp"
											class="card-header"></div>
									</div>
								</div>
							</div>

							<!-- 두 번째 탭: 업무 할당표 -->
							
							<div class="tab-pane fade" id="nav-profile" role="tabpanel"
								aria-labelledby="nav-profile-tab">
								<div>
									<div class="comp_box">
										<c:import url="../MeetGroup/WorkReportList.jsp"></c:import>
									</div>
								</div>
							</div>

							<!-- 세 번째 탭: 업무 보고 목록 -->
							<div class="tab-pane fade" id="nav-contact" role="tabpanel"
								aria-labelledby="nav-contact-tab">
								<div>
									<div class="card tbl-card">
										<div data-include="../MeetGroup/WorkReportList.jsp"
											class="card-header"></div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- 탭 -->

				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">업무 할당</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div data-include="../MeetGroup/M_WorkAssignment.jsp"
								class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary">제출</button>
							</div>
						</div>
					</div>
				</div>
				<!--// Modal  -->

				<!-- Modal2 -->
				<div class="modal fade" id="staticBackdrop2"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">업무보고</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div data-include="../MeetGroup/WorkReport.jsp"
								class="modal-body"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary">제출</button>
							</div>
						</div>
					</div>
				</div>
				<!-- //Modal2 -->

				<!-- Modal3 -->
				<div class="modal fade" id="staticBackdrop3"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">업무 결재</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form id="decisionForm">
									<div class="form-check">
										<input class="form-check-input" type="radio" name="decision"
											id="approve" value="approve"> <label
											class="form-check-label" for="approve"> 승인 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="decision"
											id="reject" value="reject"> <label
											class="form-check-label" for="reject"> 반려 </label>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">취소</button>
								<button type="button" class="btn btn-primary"
									onclick="submitDecision()">제출</button>
							</div>
						</div>
					</div>
				</div>
				<!--// Modal3  -->
		</section>
	</div>
	<!-- 푸터영역 -->
	<div role="footer" data-include="../Components/Footer.jsp"
		class="mt-auto"></div>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>

	<script type="text/javascript">
    $(document).ready(function() {
        $("#nav-profile-tab").click(function() {
            $.ajax({
                type: "GET",
                url: "workAssignment.action",
                success: function(response) {
                    $("#nav-profile").html(response);
                },
                error: function(xhr, status, error) {
                    console.error("Error occurred while loading WorkAssignment.jsp:", error);
                }
            });
        });
    });
</script>


</body>

</html>