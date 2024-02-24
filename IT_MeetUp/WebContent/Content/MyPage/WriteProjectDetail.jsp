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
									<button class="btn btn-primary">수정</button>
	          						<button class="btn btn-danger">삭제</button>
									<a href="ApplyManagement.jsp"><button type="button" class="btn btn-secondary">목록으로</button></a>
								</div>
								<hr>

								<div class="row">
							        <div class="col-md-6">
							            <div class="project-details">
							                <p><strong>번호:</strong> 프로젝트 번호 입력</p>
							                <p><strong>제목(주제) :</strong> 어쩌고저쩌고이쩌고 프로젝트</p>
							                <p><strong>역할별 인원수 :</strong> 프론트: 2명 벡: 2명 디자인: 1명</p>
							                <p><strong>시작일 :</strong> 2024년 03월 01일</p>
							                <p><strong>종료일 :</strong> 2024년 09월 01일</p>
							            </div>
							        </div>
							        <div class="col-md-6">
							            <div class="project-details">
							                <p><strong>경력 :</strong> 1~3년</p>
							                <p><strong>선호 지역 :</strong> 서울 마포구</p>
							                <p><strong>모임 방식 :</strong> 온/오프라인</p>
							                <p><strong>카테고리 :</strong> 쇼핑몰</p>
							                <p>
							                	<strong>사용 언어:</strong> 
							                	<span class="tag">HTML</span>
												<span class="tag">CSS</span> 
												<span class="tag">Java</span>
											</p>
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
				
				<!-- 모달 시작 -->
				<div class="modal fade" id="editProjectModal" tabindex="-1" aria-labelledby="editProjectModalLabel" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered modal-xl">
				        <div class="modal-content">
				            <!-- 모달 헤더 -->
				            <div class="modal-header">
				                <h5 class="modal-title" id="editProjectModalLabel">프로젝트 수정</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				            </div>
				            <!-- 모달 바디 -->
				            <div class="modal-body">
				                <div class="row">
				                    <div class="col-md-3">
				                        <div class="project-details">
				                            <p><strong>제목(주제) :</strong><input type="text" class="form-control" value="프로젝트 제목" disabled></p>
				                            <p><strong>총 인원 :</strong><input type="text" class="form-control" value="5명" disabled></p>
				                            <p><strong>역할별 인원수 :</strong><input type="text" class="form-control" value="프론트: 2명 벡: 2명 디자인: 1명" disabled></p>
				                            <p><strong>시작일 :</strong><input type="date" class="form-control" value="2024-03-01" disabled></p>
				                            <p><strong>종료일 :</strong><input type="date" class="form-control" value="2024-09-01" disabled></p>
				                        </div>
				                    </div>
				                    <div class="col-md-3">
				                        <div class="project-details">
				                            <p><strong>경력 :</strong><input type="text" class="form-control" value="1~3년" disabled></p>
				                            <p><strong>선호 지역 :</strong><input type="text" class="form-control" value="서울 마포구" disabled></p>
				                            <p><strong>모임 방식 :</strong><input type="text" class="form-control" value="온/오프라인" disabled></p>
				                            <p><strong>카테고리 :</strong><input type="text" class="form-control" value="쇼핑몰" disabled></p>
				                            <p><strong>사용 언어 :</strong><input type="text" class="form-control" value="HTML, CSS, JAVA" disabled></p>
				                        </div>
				                    </div>
				                    
				                   	<div class="col-md-6">
				                    	<div class="project-details">
				                            <p><strong>내용 :</strong>
				                            	<textarea class="form-control" id="contentInput" rows="13" placeholder="수정할 내용을 작성하세요"></textarea>
				                            </p>
				                    	</div>
				                    </div>
				                </div>
				            </div>
				            <!-- 모달 푸터 -->
				            <div class="modal-footer">
				                <!-- 수정 완료 버튼 -->
				                <button type="button" class="btn btn-primary">수정 완료</button>
				            </div>
				        </div>
				    </div>
				</div>
				<!-- 모달 끝 -->
				
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
	        // 수정 버튼 클릭 시 모달 표시
	        $('.btn-primary').click(function(){
	            $('#editProjectModal').modal('show');
	        });
		 });
		
	</script>
</body>

</html>