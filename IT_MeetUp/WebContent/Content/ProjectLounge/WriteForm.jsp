<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
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
  <title>모집공고 작성adasd </title>
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
  	$(function()
  	{
  		
  		// 시를 고르면 다음 지역 선택가능하게 해주는 함수
		$("#si").change(function()
		{        
			$("#do").attr("disabled", false);
			               
		});
	});
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
                            <a class="nav-link" href="#item-1">
                                <p class="h4">모집 내용</p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#item-1-1">
                                    <p class="h5">제목</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-1-2">
                                    <p class="h5">카테고리</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-1-3">
                                    <p class="h5">내용</p>
                                </a>
                            </nav>
                            <a class="nav-link" href="#item-2">
                                <p class="h4">모집 필요사항</p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#item-2-1">
                                    <p class="h5">일정</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-2-4">
                                    <p class="h5">선호지역</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-2-5">
                                    <p class="h5">모임방식</p>
                                </a>
                            </nav>
                        </nav>
                    </nav>
                </div>

                <div class="col-12 col-sm-8 col-lg-9 write-content">
                    
                        <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                            class="scrollspy-example-2" tabindex="0">
                            <div class="row">
							<form action="WriteForm2.jsp" method="get">
                                <!-- 모집내용 -->
                                <div id="item-1" class="col-12">
                                    <p class="h4">모집 내용</p>
                                </div>
                                <!-- //모집내용 -->
                                <!-- 제목 -->
                                <div id="item-1-1" class="col-12">
                                    <div class="m-input-box" >
                                        <label for="writePost01" class="form-label">
                                            <p class="h5">제목</p>
                                        </label>
                                        <input type="text" class="form-control" id="title" name="title" required="required" style="width: 350px;">
                                        <div class="invalid-feedback">
                                            제목1을 입력해주세요.
                                        </div>
                                    </div>
                                </div>
                                <!-- //제목 -->
                                <!-- 카테코리 -->
                                <div id="item-1-2" class="col-12">
                                    <p class="h5">카테고리</p>
                                    <div class="row">
                                        <div class="col-6 m-select">
                                            <select class="form-select" aria-label="Default select example" id="categori" name="categori"  title="selectTitle01" style="width: 250px; " >
                                                <option selected="selected">카테고리를 고르세요</option>
                                                <option value="1">교육</option>
                                                <option value="2">의료</option>
                                                <option value="3">모집</option>
                                                <option value="4">기타</option>
                                        </select>
                                        </div>
                                	</div>
                                </div>
                                <!-- //카테코리 -->
                                <!-- 내용 -->
                                <div id="item-1-3" class="col-12">
                                    <div class="m-textarea">
                                        <label for="exampleFormControlTextarea1" class="form-label"> 
                                            <p class="h5">내용</p>
                                        </label>
                                        <textarea class="form-control" id="content" name="content" rows="15"  required="required" style="width: 700px;"></textarea>
                                    </div>
                                </div>
                                <!-- //내용 -->
                                <!-- 모집 필요사항 -->
                                <!-- //모집 필요사항 -->
                                <!-- //일정 -->
                                <div id="item-2-1" class="col-12">
                                    <p class="h5">일정</p>
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="date-from" class="form-label">시작 예정일</label> <input
													type="text" class="form-control date-from" id="date-from" name="date_form">
											</div>
											<div class="col-6 m-input-cal">
												<label for="date-to" class="form-label">종료 예정일</label> <input
													type="text" class="form-control date-to" id="date-to" name="date_to">
											</div>
										</div>
								
                                </div>
                                <!-- //일정 -->
                                
                                <!-- 선호지역 -->
                                <div id="item-2-4" class="col-12">
                                    <p class="h5">선호지역</p>
                                    <div class="row">
                                        <div class="col-6 m-select">
                                            <select class="form-select" aria-label="Default select example" id="si" name="si"  title="selectTitle01">
                                                <option selected="selected">지역을 고르세요</option>
                                                <option value="1">서울특별시</option>
                                                <option value="2">인천광역시</option>
                                                <option value="3">대구광역시</option>
                                                <option value="4">부산광역시</option>
                                            </select>
                                        </div>
                                        <div class="col-6 m-select">
                                            <select class="form-select" aria-label="Default select example" id="do" name="do" title="selectTitle01" disabled="disabled">
                                                <option selected>큰 지역 먼저 골라주세요</option>
                                                <option value="1">수원시</option>
                                                <option value="2">화성시</option>
                                                <option value="4">용인시</option>
                                                <option value="4">부천시</option>
                                                <option value="5">하남시</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- //선호지역 -->
                                <!-- 모임방식 -->
                                <div id="item-2-5" class="col-12">
                                    <p class="h5">모임방식</p>
                                    <div class="row">
											<div class="btn-group" role="group"
												aria-label="Basic radio toggle button group"
												style="border-radius: 500px;">
												<input type="radio" class="btn-check" name="btnradio"
													id="online" autocomplete="off"> <label
													class="btn btn-light" for="online">온라인</label> <input
													type="radio" class="btn-check" name="btnradio" id="offline"
													autocomplete="off"> <label class="btn btn-light"
													for="offline">오프라인</label> <input type="radio"
													class="btn-check" name="btnradio" id="allline"
													autocomplete="off"> <label class="btn btn-light"
													for="allline">온 / 오프라인</label>
											</div>
										</div>
                                </div>
                                <!-- //모임방식 -->
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
                    </form>
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