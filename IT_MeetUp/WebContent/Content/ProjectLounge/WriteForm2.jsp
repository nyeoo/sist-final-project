<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String from = request.getParameter("date_form");
	String to = request.getParameter("date_to");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">
  <title>모집공고 작성(일정 세부) </title>
<!-- css -->
	<link rel="stylesheet" href="../../asset/css/style.css">
<!-- 컴포넌트 전용 css -->
	<link rel="stylesheet" href="../../asset/css/component.css">
<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script type="text/javascript">
  	$(function ()
  	{
  	   
	})
    </script>
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
                <p class="h3">모집공고 작성</p>
                <!-- 브레드크럼블 -->
                <c:import url="../Components/Breadcrumb.jsp"></c:import>
                <!-- //브레드크럼블 -->
            </div>
            <!-- 작성영역 -->
            <div class="row write-area">
                <div class="col-12 col-sm-4 col-lg-3 write-nav">
                    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
                        <nav class="nav nav-pills flex-column write-nav-con">
                            <a class="nav-link" href="#date-1">
                                <p class="h4">일정 세부</p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#date-1-1">
                                    <p class="h5">분석</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#date-1-2">
                                    <p class="h5">설계</p>
                                </a>  	
                                <a class="nav-link ms-3 my-1" href="#date-1-3">
                                    <p class="h5">구현</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#date-1-4">
                                    <p class="h5">테스트</p>
                                </a>
                            </nav> 
                            <a class="nav-link" href="#item-2">
                                <p class="h4">팀원 구성 </p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#item-2-1">
                                    <p class="h5">팀원 설정</p>
                                </a>
                            </nav>
                        </nav>
                    </nav>
                </div>

                <div class="col-12 col-sm-8 col-lg-9 write-content">
                    
                        <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                            class="scrollspy-example-2" tabindex="0">
                            <div class="row">
							<form action="WriteForm3.jsp" method="get">
                                <!-- 모집내용 -->
                                <div id="date-1-1" class="col-12">
								    <div class="row range-datepicker">
								        <div class="col-6 m-input-cal">
								            <label for="date-from-1" class="form-label">분석 시작 예정일</label> 
								            <input type="text" class="form-control date-from" id="date-from-1" name="date_from_1" readonly="readonly" value="<%=from%>"> 
								        </div>
								        <div class="col-6 m-input-cal">
								            <label for="date-to-1" class="form-label">분석 종료 예정일</label> 
								            <input type="text" class="form-control date-to" id="date-to-1" name="date_to_1" readonly="readonly">
								        </div>
								    </div>
								</div>
                                 <div id="date-1-2" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="date-from" class="form-label">설계 시작 예정일</label> <input
													type="text" class="form-control date-from" id="date-from" name="date_form" >
											</div>
											<div class="col-6 m-input-cal">
												<label for="date-to" class="form-label">설계 종료 예정일</label> <input
													type="text" class="form-control date-to" id="date-to" name="date_to">
											</div>
										</div>
                                </div>
                                 <div id="date-1-3" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="date-from" class="form-label">구현 시작 예정일</label> <input
													type="text" class="form-control date-from" id="date-from" name="date_form" >
											</div>
											<div class="col-6 m-input-cal">
												<label for="date-to" class="form-label">구현 종료 예정일</label> <input
													type="text" class="form-control date-to" id="date-to" name="date_to">
											</div>
										</div>
                                </div>
                                 <div id="date-1-4" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="date-from" class="form-label">테스트 시작 예정일</label> <input
													type="text" class="form-control date-from" id="date-from" name="date_form" >
											</div>
											<div class="col-6 m-input-cal">
												<label for="date-to" class="form-label">테스트 종료 예정일</label> <input
													type="text" class="form-control date-to" id="date-to" name="date_to" value="<%=to%>" readonly="readonly">
											</div>
										</div>
                                </div>
                                <!-- //일정 -->
                                
                                <!-- 팀원구성 필요사항 -->
                                <div id="item-2" class="col-12">
                                    <p class="h4">팀원 구성</p>
                                </div>
                                <!-- 팀원구성 필요사항 -->
                                <div id="item-2-1" class="col-12">
                                    <p class="h5">팀원 설정</p>
									<div class="row">
                                        <div class="col-5 m-select">
                                            프론트
                                        </div>
                                        <div class="col-5 m-select">
                                            <select class="form-select" aria-label="Default select example"
                                                title="selectTitle01">
                                                <option selected>인원수를 골라주세요</option>
                                                <option value="1">1명</option>
                                                <option value="2">2명</option>
                                                <option value="3">3명</option>
                                                <option value="4">4명</option>
                                                <option value="5">5명</option>
                                                <option value="6">6명</option>
                                                <option value="7">7명</option>
                                                <option value="8">8명</option>
                                                <option value="9">9명</option>
                                            </select>
                                        </div>
                                        <div class="col-5 m-select">
                                            백엔드
                                        </div>
                                        <div class="col-5 m-select">
                                            <select class="form-select" aria-label="Default select example"
                                                title="selectTitle01">
                                                <option selected>인원수를 골라주세요</option>
                                                <option value="1">1명</option>
                                                <option value="2">2명</option>
                                                <option value="3">3명</option>
                                                <option value="4">4명</option>
                                                <option value="5">5명</option>
                                                <option value="6">6명</option>
                                                <option value="7">7명</option>
                                                <option value="8">8명</option>
                                                <option value="9">9명</option>
                                            </select>
                                        </div>
                                        <div class="col-5 m-select">
                                            디자인
                                        </div>
                                        <div class="col-5 m-select">
                                            <select class="form-select" aria-label="Default select example"
                                                title="selectTitle01">
                                                <option selected>인원수를 골라주세요</option>
                                                <option value="0">0명</option>
                                                <option value="1">1명</option>
                                                <option value="2">2명</option>
                                                <option value="3">3명</option>
                                                <option value="4">4명</option>
                                                <option value="5">5명</option>
                                                <option value="6">6명</option>
                                                <option value="7">7명</option>
                                                <option value="8">8명</option>
                                                <option value="9">9명</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- 팀원설정 끝 -->	
								
                                </div>
                                
                               
                            <!-- 버튼영역 -->
                            <div class="btn-box">
                                <div class="btn-center">
                                  <button type="submit" class="btn btn-primary">다음</button>
                                  <button type="reset" class="btn btn-secondary">다시쓰기</button>
                                </div>
                            </div>
                            <!-- //버튼영역 -->
                            </form> 
                            </div>
                        </div>
                    <!-- </form> -->
                </div>
            </div>
            <!-- //작성영역 -->


            </div>
        </section>
        <!-- //바디영역 -->		
		
		
		
		
	<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->
</div> <!-- .wrapper End -->
</body>
</html>