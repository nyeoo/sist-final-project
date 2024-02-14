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
  <title>WorkReportList</title>
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

        <!-- 사이드 영역 -->
        <div role="side" data-include="../Components/Side.jsp"></div>
        <!-- //사이드 영역 -->

        <!-- 콘텐츠 -->
        <div class="content">

          <div class="content_tit">
            <p class="h3">업무보고 목록</p>
            <!-- 브레드크럼블 -->
            <!-- <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div> -->
            <!-- //브레드크럼블 -->
            <div>-분석단계-</div>
          </div><br>

          <div class="card tbl-card">
            <h5 class="card-header">요구사항분석</h5>
            <div class="table-responsive text-nowrap tbl-border">
              <table class="table">
                <colgroup>
                  <col style="width: 30px;">
                  <col>
                  <col>
                  <col>
                  <col>
                  <col>
                  <col>
                  <col>
                </colgroup>
                <thead>
                  <tr>
                    <th>업무분류</th>
                    <th>제목</th>
                    <th>담당자</th>
                    <th>작성일자</th>
                    <th>첨부파일명</th>
                    <th>삭제</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="range-datepicker">          
                    <td><strong>회의록</strong></td>
                    <td>
                      <input type="button" class="form-control form-control-plaintext" id="validationCustom01" value="1차 회의록">
                    </td>
                    <td>
                      	담당자명    
                    </td>                    
                    <td>
                    	2024-01-18
                    </td>                                     
                    <td>
                    	첨부한파일1.hwp
                    	<button type="button" class="btn btn-primary btn-plus"><i class="bi bi-file-arrow-down"></i></button>
                    </td>                                     
                    <td>
                    	<button type="button" class="btn btn-primary btn-dash" style="background-color: red;"><i class="bi bi-dash-circle-dotted"></i></button>
                    </td>
                  </tr>                  
                  <tr class="range-datepicker">          
                    <td><strong>요구분석서</strong></td>
                    <td>
                      <input type="button" class="form-control form-control-plaintext" id="validationCustom01" value="요구분석서1차">
                    </td>
                    <td>
                      	담당자명    
                    </td>                    
                    <td>
                    	2024-01-31
                    </td>                                     
                    <td>
                    	첨부한파일2.pdf
                    	<button type="button" class="btn btn-primary btn-plus"><i class="bi bi-file-arrow-down"></i></button>
                    </td>                                     
                    <td>
                    	<button type="button" class="btn btn-primary btn-dash" style="background-color: red;"><i class="bi bi-dash-circle-dotted"></i></button>
                    </td>
                  </tr>                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- //콘텐츠 -->

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