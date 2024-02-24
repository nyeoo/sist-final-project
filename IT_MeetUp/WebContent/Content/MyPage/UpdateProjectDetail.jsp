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
    <title>UpdateProjectDetail.jsp</title>
    <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="title" content="IT MeetUp">
    <meta name="author" content="Sist 2Team">
    <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

    <!-- css -->
    <link rel="stylesheet" href="../../asset/css/style.css">

</head>

<body>
    <div class="container">
        <h1 class="mt-5">프로젝트 수정</h1>
        <form action="UpdateProjectServlet" method="post">
            <div class="row">
                <!-- 왼쪽에 위치할 수정 가능한 항목들 -->
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="projectName" class="form-label">프로젝트 이름</label>
                        <input type="text" class="form-control" id="projectName" name="projectName" value="어쩌구저쩌구 프로젝트">
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">프로젝트 설명</label>
                        <textarea class="form-control" id="description" name="description" rows="5">내용을 수정하세요.</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="languages" class="form-label">사용 언어</label>
                        <input type="text" class="form-control" id="languages" name="languages" value="HTML, CSS, JavaScript">
                    </div>
                </div>
                <!-- 오른쪽에 위치할 수정 불가능한 항목들 -->
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="meetingMethod" class="form-label">모임 방식</label>
                        <input type="text" class="form-control" id="meetingMethod" name="meetingMethod" value="온/오프라인" disabled="disabled">
                    </div>
                    <div class="mb-3">
                        <label for="members" class="form-label">인원</label>
                        <input type="text" class="form-control" id="members" name="members" value="5명" disabled="disabled">
                    </div>
                    <div class="mb-3">
                        <label for="fields" class="form-label">모집 분야</label>
                        <input type="text" class="form-control" id="fields" name="fields" value="웹 개발, 프론트, 백, 디자인" disabled="disabled">
                    </div>
                    <div class="mb-3">
                        <label for="startDate" class="form-label">시작일</label>
                        <input type="text" class="form-control" id="startDate" name="startDate" value="2024년 03월 01일" disabled="disabled">
                    </div>
                    <div class="mb-3">
                        <label for="endDate" class="form-label">종료일</label>
                        <input type="text" class="form-control" id="endDate" name="endDate" value="2024년 06월 30일" disabled="disabled">
                    </div>
                    <div class="mb-3">
                        <label for="expectedDuration" class="form-label">예상 기간</label>
                        <input type="text" class="form-control" id="expectedDuration" name="expectedDuration" value="4개월" disabled="disabled">
                    </div>
                </div>
            </div>
            <!-- 버튼 위치 변경 및 취소 버튼 추가 -->
            <div class="row mt-3" style="text-align: right;">
                <div class="col-md-12 text-right">
                    <button type="submit" class="btn btn-primary">저장</button>
                    <a href="WriteProjectDetail.jsp" class="btn btn-secondary">취소</a>
                </div>
            </div>
        </form>
    </div>

    <!-- 부트스트랩 자바스크립트 및 의존성 추가 -->
    <script src="../../asset/js/jquery-3.5.1-min.js"></script>
    <script src="../../asset/js/jquery-ui.js"></script>
    <script src="../../asset/js/bootstrap.bundle.min.js"></script>
    <script src="../../asset/js/common.js"></script>
    <script>
        // 추가적인 스크립트가 필요한 경우 여기에 작성할 수 있습니다.
    </script>
</body>

</html>
