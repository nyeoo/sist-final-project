<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	Calendar cal = Calendar.getInstance();

	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH)+1;
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);
	
	// 이전 페이지로부터 넘어온 데이터 수신
	// → year, month
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");
	
	// 표시할 달력의 년, 월
	int year = nowYear;
	int month = nowMonth;
	
	if(strYear!=null)
		year = Integer.parseInt(strYear);
	if(strMonth!=null)
		month = Integer.parseInt(strMonth);
	
	// 이전과 이후 구성
	int preYear = year;
	int preMonth = month-1;
	
	if(preMonth < 1)
	{
		preYear = year -1;
		preMonth = 12;
	}
	
	int nextYear = year;
	int nextMonth = month+1;
	
	if(nextMonth>12)
	{
		nextYear = year+1;
		nextMonth = 1;
	}
	
	int[] months = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
		
	if(year %4==0 && year%100!=0 || year%400 ==0)
		months[1] = 29;
	
	int nalsu;
	
	String[] weekNames = {"일", "월", "화", "수", "목", "금", "토"};
	
	nalsu = (year-1)*365 + (year-1)/4 - (year-1)/100 + (year-1)/400;
	
	for (int i=0; i<month-1;i++)
		nalsu += months[i];
	
	nalsu++;
	
	int week = nalsu%7;
	int lastday = months[month-1];
	
	String calStr="";
	
	// 요일 찍기
	calStr += "<table border='1'>";
	calStr += "<tr>";
	
	for (int i=0;i<weekNames.length;i++)
	{
		calStr+="<td>" + weekNames[i] + "</td>" ;
	}
	
	calStr += "</tr><tr>";
	
	// 공백 찍기
	for (int i=0;i<week;i++)
		calStr+= "<td>" + " " + "</td>";
		
	// 달력 출력
	for (int i=1;i<=lastday;i++)
	{
		if(week%7==0)
			calStr += "</tr><tr>";
		week++;
		calStr +="<td>" + i + "</td>";
		
	}
	
	// 뒷 공백 채우기
	for (int i=1;i<=week;i++, week++)
	{
		if(week%7==0)
			break;
		calStr+= "<td>" + " " + "</td>";
	}
	
	calStr += "</tr></table>";
%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Calendar</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">
  <style type="text/css">
  	.calendar-datepicker{margin-bottom: 20px;}
	.calendar-datepicker .ui-widget.ui-widget-content{width: 100%; float: right;}
	.calendar-datepicker .ui-state-default,.calendar-datepicker .ui-widget-content .ui-state-default{/*aspect-ratio: 1/1;*/height: 7rem;}
	.calendar-datepicker .ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current{height: auto;}
  </style>

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
          <p class="h3">MeetUp 캘린더</p>
          <hr>
          <!-- 브레드크럼블 -->
          <%-- <c:import url="../Components/Breadcrumb.jsp"></c:import> --%>
          <!-- //브레드크럼블 -->
        </div>
       </div>
        
        <div class="calendar-container">
	        <div class="workSet">
	        	<p>업무 보기 설정</p>
		        <div class="form-check">
				  <input class="form-check-input" type="radio" name="work" id="totWork" checked="checked">
				  <label class="form-check-label" for="totWork">
				    전체 업무 보기
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="work" id="indiWork">
				  <label class="form-check-label" for="indiWork">
				    개인 업무 보기
				  </label>
				</div>
			</div>
	        <div class="datepicker calendar-datepicker"></div>
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