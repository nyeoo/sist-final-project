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
    <title>WritePost</title>
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
                    <p class="h3">모집공고 작성</p>
                    <!-- 브레드크럼블 -->
                    <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
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
                                    <a class="nav-link ms-3 my-1" href="#item-2-2">
                                        <p class="h5">모집인원</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-2-3">
                                        <p class="h5">희망기술</p>
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
                        <form action="">
                            <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                                class="scrollspy-example-2" tabindex="0">

                                <div class="row">
                                    <!-- 모집내용 -->
                                    <div id="item-1" class="col-12">
                                        <p class="h4">모집 내용</p>
                                    </div>
                                    <!-- //모집내용 -->
                                    <!-- 제목 -->
                                    <div id="item-1-1" class="col-12">
                                        <div class="m-input-box">
                                            <label for="writePost01" class="form-label">
                                                <p class="h5">제목</p>
                                            </label>
                                            <input type="text" class="form-control" id="writePost01" required>
                                            <div class="invalid-feedback">
                                                제목1을 입력해주세요.
                                            </div>
                                        </div>
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
                                        </div>
                                    </div>
                                    <!-- //내용 -->
                                    <!-- 모집 필요사항 -->
                                    <div id="item-2" class="col-12">
                                        <p class="h4">모집 필요사항</p>
                                    </div>
                                    <!-- //모집 필요사항 -->
                                    <!-- //일정 -->
                                    <div id="item-2-1" class="col-12">
                                        <p class="h5">일정</p>
                                        <div class="row range-datepicker">
                                            <div class="col-6 m-input-cal">
                                                <label for="date-from" class="form-label">시작 예정일</label>
                                                <input type="text" class="form-control date-from" id="date-from">
                                            </div>
                                            <div class="col-6 m-input-cal">
                                                <label for="date-to" class="form-label">종료 예정일</label>
                                                <input type="text" class="form-control date-to" id="date-to">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //일정 -->
                                    <!-- 모집인원 -->
                                    <div id="item-2-2" class="col-12">
                                        <p class="h5">모집인원</p>
                                        <div class="row">
                                            <div class="col-5 m-select">
                                                <select class="form-select" aria-label="Default select example"
                                                    title="selectTitle01">
                                                    <option selected>Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col-5 m-select">
                                                <select class="form-select" aria-label="Default select example"
                                                    title="selectTitle01">
                                                    <option selected>Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col-2">
                                                <button type="button" class="btn btn-primary btn-plus">Primary</button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //모집인원 -->
                                    <!-- 희망기술 -->
                                    <div id="item-2-3" class="col-12">
                                        <p class="h5">희망기술</p>
                                        <div class="skill-box">
                                            <nav>
                                                <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                                                    <button class="nav-link active" id="nav-home-tab"
                                                        data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
                                                        role="tab" aria-controls="nav-home"
                                                        aria-selected="true">프론트</button>
                                                    <button class="nav-link" id=av-profile-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-profile" type="button" role="tab"
                                                        aria-controls="nav-profile" aria-selected="false">백엔드</button>
                                                    <button class="nav-link" id자인av-contact-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-contact" type="button" role="tab"
                                                        aria-controls="nav-contact" aria-selected="false">기획, 디자인,
                                                        개발툴</button>
                                                </div>
                                            </nav>
                                            <div class="tab-content" id="nav-tabContent">
                                                <div class="tab-pane fade show active" id="nav-home" role="skill01"
                                                    aria-labelledby="nav-home-tab">
                                                    <ul class="skill-check">
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="tab-pane fade" id="nav-profile" role="skill02"
                                                    aria-labelledby="nav-profile-tab">
                                                    <ul class="skill-check">
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="tab-pane fade" id="nav-contact" role="skill03"
                                                    aria-labelledby="nav-contact-tab">
                                                    <ul class="skill-check">
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Default checkbox
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //희망기술 -->
                                    <!-- 선호지역 -->
                                    <div id="item-2-4" class="col-12">
                                        <p class="h5">선호지역</p>
                                        <div class="row">
                                            <div class="col-6 m-select">
                                                <select class="form-select" aria-label="Default select example"
                                                    title="selectTitle01">
                                                    <option selected>Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                            <div class="col-6 m-select">
                                                <select class="form-select" aria-label="Default select example"
                                                    title="selectTitle01">
                                                    <option selected>Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //선호지역 -->
                                    <!-- 모임방식 -->
                                    <div id="item-2-5" class="col-12">
                                        <p class="h5">모임방식</p>
                                        <div class="row">
                                            <div class="col-6 m-select">
                                                <select class="form-select" aria-label="Default select example"
                                                    title="selectTitle01">
                                                    <option selected>Open this select menu</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //모임방식 -->
                                </div>
                                <!-- 버튼영역 -->
                                <div class="btn-box">
                                    <div class="btn-center">
                                      <button type="button" class="btn btn-primary">Primary</button>
                                      <button type="button" class="btn btn-secondary">Secondary</button>
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