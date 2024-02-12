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
	.calendar-datepicker .ui-widget.ui-widget-content{width: 80%; float: right;}
	.calendar-datepicker .ui-state-default,.calendar-datepicker .ui-widget-content .ui-state-default{/*aspect-ratio: 1/1;*/height: 7rem;}
	.calendar-datepicker .ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current{height: auto;}

	.workSet{position: relative;
    top: 0;
    left: 100px;
    bottom: 0;
    width: 150px;
    line-height: normal;}
    
	.icon{text-align: center;}
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
          <p class="icon">
          	<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_Calendar.jsp">
          		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar3" viewBox="0 0 16 16">
				  <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
				  <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
				</svg>
			</a>
			<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_WorkManage.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-workspace" viewBox="0 0 16 16">
				  <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H4Zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
				  <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.373 5.373 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2H2Z"/>
				</svg>
			</a>
			<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_GroupSetup.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
				  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
				</svg>
			</a>
         </p>
          <hr>
          <!-- 브레드크럼블 -->
          <%-- <c:import url="../Components/Breadcrumb.jsp"></c:import> --%>
          <!-- //브레드크럼블 -->
        </div>
       </div>
        
        <div class="calendar-container">
	        <div class="datepicker calendar-datepicker"></div>
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
				<br><br>
				
				<div class="miniCal">
					<%=year %>년
					<%=month %>월
					<%=calStr %>
				</div>
			</div>
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