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
<title>Calendar</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<link rel="stylesheet" href="<%=cp%>/asset/css/layout_lhs.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->

		<!-- 사이드 영역 -->
		<c:import url="../Components/Side.jsp"></c:import>
		<!-- //사이드 영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<div class="content_tit">
					<p class="h3">MeetUp Calendar</p>
					<hr>
				</div>

				<div class="workSet">
					<div class="form-check">
						<label class="form-check-label" for="totWork"> <input
							class="form-check-input" type="radio" name="work" id="totWork"
							checked="checked"> 전체 업무 보기
						</label>
					</div>
					<div class="form-check">
						<label class="form-check-label" for="indiWork"> <input
							class="form-check-input" type="radio" name="work" id="indiWork">
							개인 업무 보기
						</label>
					</div>
				</div>


			</div>
			<div class="calendarbox">
				<div id="calendar"></div>
			</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<div role="footer" data-include="../Components/Footer.jsp"
			class="mt-auto"></div>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script src="<%=cp%>/asset/js/index.global.js"></script>
    
	<script>
		document.addEventListener('DOMContentLoaded', function()
		{
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl,
			{
				headerToolbar :
				{
					left : 'prev',
					center : 'title',
					right : 'next'
				},
				initialDate : '2019-01-12',
				navLinks : true,
				editable : true,
				dayMaxEvents : true,
				events : [
				{
					title : '분석',
					start : '2019-01-15',
					end : '2019-01-18'
				}
				 <c:forEach items="${calProgress}" var="calprogress">
				{
				    title: '분석',
				    start: new Date('${calprogress.seStartDate}'),
				    end: new Date('${calprogress.sdEndDate}')
				},
				</c:forEach>
				<c:forEach items="${calDesign}" var="calDesign">
				{
				    title: '설계',
				    start: new Date('${calDesign.seStartDate}'),
				    end: new Date('${calDesign.sdEndDate}')
				},
				</c:forEach>
				
				<c:forEach items="${calAvatar}" var="calAvatar">
				{
				    title: '구현',
				    start: new Date('${calAvatar.seStartDate}'),
				    end: new Date('${calAvatar.sdEndDate}')
				},
				</c:forEach>
				
				<c:forEach items="${calTest}" var="calTest">
				{
				    title: '테스트',
				    start: new Date('${calTest.seStartDate}'),
				    end: new Date('${calTest.sdEndDate}')
				},
				</c:forEach>

				{
					title : '구현',
					start : '2023-01-16',
					end : '2023-01-20'
				},
				{
					title : '테스트',
					start : '2023-01-21',
					end : '2023-01-30'
				},
				{
					groupId : 999,
					title : 'Repeating Event',
					start : '2023-01-09T16:00:00'
				},
				{
					groupId : 999,
					title : 'Repeating Event',
					start : '2023-01-16T16:00:00'
				}
				]
			});

			calendar.render();
		});
	</script>
</body>

</html>