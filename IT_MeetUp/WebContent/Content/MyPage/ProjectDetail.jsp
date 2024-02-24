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
<title>ProjectDetail.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">

<style type="text/css">
.aaa {
	margin-top: 20px;
	text-align: right;
}

.project-details p {
	font-size: 20px;
}

.tag {
	border-radius: 30px;
	text-align: center;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	height: 35px;
	margin-right: 4px;
	padding-right: 13px;
	padding-left: 13px;
	color: #121213;
	font-size: 15px;
	line-height: 1.13em;
	letter-spacing: -.4px;
	border: 1px solid #d0d1d4;
	background-color: #fff;
	margin-bottom: 5px;
}
</style>
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

				<div class="content_tit">
					<p class="h3">모집 공고 상세 정보</p>
					<br>
					<!-- 브레드크럼블 -->
					<!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
					<!-- //브레드크럼블 -->
				</div>

				<div class="row">
					<div class="my-detail">
						<div class="tab-content" id="nav-tabContent">
							<div class="container">
								<h1>어쩌구저쩌구 프로젝트</h1>
								<div class="aaa">
									<button type="button" class="btn btn-danger" id="reportButton"
										style="text-align: right;">신고하기</button>
									<a href="ApplyManagement.jsp"><button type="button"
											class="btn btn-primary">목록으로 가기</button></a>
								</div>
								<hr>

								<div class="row">
							        <div class="col-md-6">
							            <div class="project-details">
							                <p><strong>번호:</strong> 프로젝트 번호 입력</p>
							                <p><strong>모임 방식:</strong> 온/오프라인</p>
							                <p><strong>인원:</strong> 5명</p>
							                <p><strong>모집 분야:</strong> 웹 개발, 프론트, 백, 디자인</p>
							            </div>
							        </div>
							        <div class="col-md-6">
							            <div class="project-details">
							                <p>
							                	<strong>사용 언어:</strong> 
							                	<span class="tag">HTML</span>
												<span class="tag">CSS</span> 
												<span class="tag">JavaScript</span>
											</p>
							                <p><strong>시작일:</strong> 2024년 03월 01일</p>
							                <p><strong>종료일:</strong> 2024년 06월 30일</p>
							                <p><strong>예상 기간:</strong> 4개월</p>
							            </div>
							        </div>
							    </div>
							</div>
							<hr>
							<div class="row mt-4">
							    <div class="col-md-12">
							        <div class="project-notice">
							            <h1>프로젝트 참여자를 구합니다! 관심 있으신 분은 지금 바로 지원해주세요!</h1>
							        </div>
							    </div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="modal" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="reportModalLabel" aria-hidden="true">
			    <div class="modal-dialog" role="document">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h5 class="modal-title" id="reportModalLabel">신고하기</h5>
			                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			            </div>
			            <div class="modal-body">
			                <!-- 추가: select로 신고 항목 나열 -->
			                <label for="reportReason">신고 항목 선택</label> 
			                <select class="form-control" id="reportReason">
			                    <option value="선택하세요" selected="selected">선택하세요</option>
			                    <option value="욕설/비방">욕설/비방</option>
			                    <option value="부적절한 이름 사용">부적절한 이름 사용</option>
			                    <option value="유해정보">유해정보</option>
			                    <option value="광고 및 상업성 홍보">광고 및 상업성 홍보</option>
			                    <option value="비인가 프로그램 유포">비인가 프로그램 유포</option>
			                </select>
			                
			                <!-- 신고 사유 입력란 -->
			                <div class="form-group mt-3">
			                    <label for="reportDescription">신고 사유</label>
			                    <textarea class="form-control" id="reportDescription" rows="3" placeholder="신고 사유를 입력해주세요..."></textarea>
			                </div>
			            </div>
			            
			            <div style="color: red; font-size: small; text-align: center;">
			                <h4>신고기능에 관한 규정</h4>
			                <p>활동제한에 대한 규정: 부적절한 활동에 따른 제한</p>
			                <p>①경고 : 벌점 1</p>
			                <p>②댓글 제한 : 벌점 3</p>
			                <p>③모집공고 작성 제한 : 벌점 5</p>
			                <p>④모집공고 참여 제한 : 벌점 7</p>
			                <p>⑤영구제명 : 벌점 9</p>
			                <p>※ 단 신고 전 이미 공고작성 후, 참여 신청 후 일경우에는 다음 회차부터 적용</p>
			                <p>※ 게시글 3회 신고 누적 시 게시글 비노출 + 계정 1회 경고 누적</p>
			            </div>
			
			            <div class="modal-footer">
			               
			                <button type="button" class="btn btn-primary">신고 제출</button>
			            </div>
			
			        </div>
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
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script>
		$(document).ready(function(){
		    $('#reportButton').click(function(){
		        $('#reportModal').modal('show');
		    });
		});

	</script>
</body>

</html>