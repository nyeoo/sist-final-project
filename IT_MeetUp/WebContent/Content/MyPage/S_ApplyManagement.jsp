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
  <title>ApplyManagement</title>
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
    <c:import url="../Components/Header.jsp"></c:import>
    <!-- //헤더영역 -->

    <!-- 바디영역 -->
    <section class="m-body-area">
      <div class="container-xl">

        <div class="content_tit">
          <p class="h3">Heading 3</p>
          <!-- 브레드크럼블 -->
          <c:import url="../Components/Breadcrumb.jsp"></c:import>
          <!-- //브레드크럼블 -->
        </div>

        <!-- 리스트 -->
        <div class="board_list">
          <table class="table table-hover">
            <colgroup>
              <col class="num" style="width: 70px">
              <col class="category">
              <col class="tit">
              <col class="date" style="width: 120px;">
              <col class="count" style="width: 75px">
              <col class="file" style="width: 70px">
            </colgroup>
            <thead>
              <tr>
                <th scope="col" class="num">번호</th>
                <th scope="col" class="category">구분</th>
                <th scope="col" class="tit">제목</th>
                <th scope="col" class="date">작성일</th>
                <th scope="col" class="count">조회수</th>
                <th scope="col" class="file">파일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td class="num"><span class="tag_txt">7777</span></td>
                <td class="category">참여신청</td>
                <td class="tit new"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동참여신청한 모집공고글이 나오며 버튼 누를
                    시 공고 상세 페이지로 이동 <span class="ico_att_new">new</span></a></td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동참여신청한 모집공고글이 나오며 버튼 누를 시 공고
                    상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"><i class="bi bi-file-earmark"><span class="blind">첨부파일</span></i></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"><i class="bi bi-file-earmark"><span class="blind">첨부파일</span></i></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"><i class="bi bi-file-earmark"><span class="blind">첨부파일</span></i></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a> </td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a></td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a></td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr>
                <td class="num"><span class="num_txt">7777</span></td>
                <td class="category">일반공지</td>
                <td class="tit"><a href="javascript:;">참여신청한 모집공고글이 나오며 버튼 누를 시 공고 상세 페이지로 이동</a></td>
                <td class="date">2024.02.06</td>
                <td class="count">777</td>
                <td class="file"></td>
              </tr>
              <tr class="nodata">
                <td colspan="6">게시물이 없습니다.</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- 리스트 -->
        
      </div>
    </section>
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <c:import url="../Components/Footer.jsp" ></c:import>
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