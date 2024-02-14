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
    <title>WorkAssignment.jsp</title>
    <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="title" content="IT MeetUp">
    <meta name="author" content="Sist 2Team">
    <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

    <!-- css -->
    <link rel="stylesheet" href="../../asset/css/style.css">

</head>

<body>
    <div class="wrapper">

        <!-- 헤더영역 -->
        <div role="header" data-include="../Components/Header.jsp" class="sticky-top"></div>
        <!-- //헤더영역 -->

        <!-- 바디영역 -->
        <section class="m-body-area">
            <div class="container-xl">

                <div class="content_tit">
                    <p class="h3">업무할당</p>
                    <!-- 브레드크럼블 -->
                    <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
                    <!-- //브레드크럼블 -->
                </div>

                <!-- 작성영역 -->
                    <div class="col-12 col-sm-8 col-lg-9 write-content">
                        <form action="">
                            <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                                class="scrollspy-example-2" tabindex="0">

                                <div class="row">
                                    <!-- 제목 -->
                                    
                                    <div id="item-1-1" class="col-12">
                                        <div class="m-input-box">
                                            <label for="workReport01" class="form-label">
                                                <p class="h5">제목</p>
                                            </label>
                                            <button type="button" class="btn btn-primary btn-plus" style="display: inline-block; margin: 0 5px;  float: right;">수정하기</button>
                                            <input type="text" class="form-control" id="workReport01" required>
                                            <div class="invalid-feedback">
                                                제목1을 입력해주세요.
                                            </div>
                                        </div><br>
                                    </div>
                                    <!-- //제목 -->
                                    <!-- 내용 -->
                                    <div id="item-1-2" class="col-12">
                                        <div class="m-textarea">
                                            <label for="exampleFormControlTextarea1" class="form-label">
                                                <p class="h5">내용</p>
                                            </label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1"
                                                rows="20"></textarea>
                                        </div><hr>
                                    </div>
                                    <!-- //내용 -->
                                    
                                    <!-- 파일첨부 -->
                                    <div id="item-1-3" class="col-12">
                                        <p class="h5">첨부파일</p>
                                        <div class="row">
                                            <input type="file"><br><br>
                                            <button class="btn btn-primary">다운로드</button>
                                        </div><br>
                                    </div>
                                    <!-- //파일첨부 -->
                                </div>
                                <div id="item-2-1" class="col-12">
                                    	<p class="h4">주제</p>
                                    	<div class="p-select">
				                        	<select class="form-select" aria-label="Default select example" title="selectTitle00">
				                         		<option selected="">주제</option>
				                          		<option value="1">기획</option>
				                          		<option value="2">설계</option>
				                          		<option value="3">디자인</option>
				                          		<option value="4">구현</option>
				                          		<option value="5">테스트</option>
				                       		</select>
				                      	</div><br>
                            	</div>
                                <div id="item-2-2" class="col-12">
                                    	<p class="h4">담당자</p>
                                    	<div class="w-select">
				                        	<select class="form-select" aria-label="Default select example" title="selectTitle00">
				                         		<option selected="">담당자</option>
				                          		<option value="1">팀원1</option>
				                          		<option value="2">팀원2</option>
				                       		</select>
				                      	</div><br>
                            	</div>
                                <div id="item-2-3" class="col-12">
                                        <p class="h5">업무일정</p>
                                        <div class="row range-datepicker">
                                            <div class="col-6 m-input-cal">
                                                <label for="date-from" class="form-label">업무시작일</label>
                                                <input type="text" class="form-control date-from" id="date-from">
                                            </div>
                                            <div class="col-6 m-input-cal">
                                                <label for="date-to" class="form-label">업무종료일</label>
                                                <input type="text" class="form-control date-to" id="date-to">
                                            </div>
                                        </div>
                              	</div>    
                                <!-- 버튼영역 -->
                                <div class="btn-box">
                                    <div class="btn-center">
                                      <button type="button" class="btn btn-primary">할당</button>
                                      <button type="button" class="btn btn-secondary">닫기</button>
                                    </div>
                                  </div>
                                <!-- //버튼영역 -->
                            </div>
                        </form>
                    </div>
                </div>
                <!-- //작성영역 -->


            </div>
        </section>
        <!-- //바디영역 -->

        <!-- 푸터영역 -->
        <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div>
        <!-- //푸터영역 -->

    </div>

    <!-- script -->
    <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/jquery-ui.js"></script>
    <script src="../../asset/js/bootstrap.bundle.min.js"></script>
    <script src="../../asset/js/common.js"></script>
    <script>

    </script>
</body>

</html>