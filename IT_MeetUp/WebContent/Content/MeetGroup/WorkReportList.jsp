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
    <title>WorkReport</title>
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
                    <p class="h3">업무보고서</p>
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
                                    <!-- 할당된 업무내용 -->
                                    <div id="item-1-1" class="col-12">
                                        <button type="button" class="btn btn-primary btn-plus" style="display: inline-block; margin: 05px;  float: right;">수정하기</button>
                                        <p class="h4">요구사항분석서</p>
                                        <hr>
                                    </div>
                                    <!-- //할당된 업무내용 -->
                                    <br>
                                    <div id="item-1-3" class="col-12">
                                    	<p class="h4">담당자</p>
                                    	이름<br><br>
                                    </div>
                                    <!-- 업무분류 -->
                                    <div id="item-1-4" class="col-12">
                                        <p class="h4">업무분류</p>
                                        <div class="w-select">
				                        	<select class="form-select" aria-label="Default select example" title="selectTitle00">
				                         		<option selected="">업무분류</option>
				                          		<option value="1">회의록</option>
				                          		<option value="2">업무보고</option>
				                       		</select>
				                      	</div><br>
                                    </div>
                                    <!-- //업무분류 -->
                                    <hr>
                                    <!-- 제목 -->
                                    <div id="item-2-1" class="col-12">
                                        <div class="m-input-box">
                                            <label for="workReport01" class="form-label">
                                                <p class="h5">제목</p>
                                            </label>
                                            <input type="text" class="form-control" id="workReport01" required>
                                            <div class="invalid-feedback">
                                                제목1을 입력해주세요.
                                            </div>
                                        </div><br>
                                    </div>
                                    <!-- //제목 -->
                                    <!-- 내용 -->
                                    <div id="item-2-2" class="col-12">
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
                                    <div id="item-2-3" class="col-12">
                                        <p class="h5">첨부파일</p>
                                        <div class="row">
                                            <input type="file">
                                        </div>
                                    </div>
                                    <!-- //파일첨부 -->
                                </div>
                                <!-- 버튼영역 -->
                                <div class="btn-box">
                                    <div class="btn-center">
                                      <button type="button" class="btn btn-primary">제출</button>
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