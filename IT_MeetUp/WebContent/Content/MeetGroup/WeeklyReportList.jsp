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
<title>WeeklyReportList</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<!-- 사이드 영역 -->
				<c:import url="../Components/Side.jsp"></c:import>
				<!-- //사이드 영역 -->

				<div class="content_tit">
					<p class="h3">
						주간업무 보고서
						<button type="button" class="btn btn-primary" id="writeButton"
							style="float: right;">작성하기</button>
					</p>
					<br>
				</div>

				<!-- 리스트 -->
				<div class="board_list">
					<table class="table table-hover">
						<colgroup>
							<col class="num" style="width: 70px">
							<col class="tit">
							<col class="date" style="width: 120px;">
							<col class="w_writer" style="width: 70px">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="num">번호</th>
								<th scope="col" class="tit">제목</th>
								<th scope="col" class="date">작성일</th>
								<th scope="col" class="w_writer">작성자</th>
							</tr>
						</thead>
						<tbody>
				            <c:forEach var="weeklyReport" items="${weeklyReport}">
				                <tr>
				                    <!-- 주간업무 보고서 목록 출력 -->
				                    <td class="num"><span class="tag_txt">${weeklyReport.countWeekly}</span></td>
				                    <td class="tit new">
				                        <a class="dropdown-item weeklyBtn" href="javascript:void(0)"
				                            data-bs-toggle="modal" data-bs-target="#staticBackdrop"
				                            id="weeklyReport">${weeklyReport.wrTitle}</a>
				                    </td>
				                    <td class="date">${weeklyReport.wrDate}</td>
				                    <td class="w_writer">${weeklyReport.piNickName}</td>
				                    <td style="display: none;">${weeklyReport.wrContent}</td>
				                </tr>
				            </c:forEach>
				        </tbody>
					</table>
				</div>
				<!-- 리스트 -->
				<!-- 페이지네이션 -->
				<div class="page-box">
				    <nav aria-label="Page navigation example">
				        <ul class="pagination">
				            <li class="page-item <c:if test="${page eq 1}">disabled</c:if>">
				                <a class="page-link" href="<%=cp%>/weeklyReport.action?memCode=${sessionScope.loginDTO.piMemCode}&page=${page - 1}" aria-label="Previous">
				                    <span aria-hidden="true">&laquo;</span>
				                </a>
				            </li>
				            
				            <c:forEach var="i" begin="1" end="${totalPages}" >
				                <li class="page-item <c:if test="${i eq page}">active</c:if>">
				                    <a class="page-link" href="<%=cp%>/weeklyReport.action?memCode=${sessionScope.loginDTO.piMemCode}&page=${i}">
				                        ${i}
				                    </a>
				                </li>
				            </c:forEach>
				            
				            <li class="page-item <c:if test="${page eq totalPages}">disabled</c:if>">
				                <a class="page-link" href="<%=cp%>/weeklyReport.action?memCode=${sessionScope.loginDTO.piMemCode}&page=${page + 1}" aria-label="Next">
				                    <span aria-hidden="true">&raquo;</span>
				                </a>
				            </li>
				        </ul>
				    </nav>
				</div>
				<!-- //페이지네이션 -->
			</div>

		</section>
		<!-- //바디영역 -->
		<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
				    data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
				    aria-labelledby="staticBackdropLabel" aria-hidden="true">
				    <div class="modal-dialog">
				        <div class="modal-content">
				            <div class="modal-header">
				                <h5 class="modal-title" id="staticBackdropLabel">주간업무보고</h5>
				                <button type="button" class="btn-close" data-bs-dismiss="modal"
				                    aria-label="Close"></button>
				            </div>
				            <div class="modal-body">
				                <div id="item-1" class="comp_tit">
				                    제목(주제) <input type="text" class="form-control" id="title"
				                        style="width: 450px;"disabled="disabled">
				                </div>				
				                <div id="item-2" class="comp_tit">
				                    내용
				                    <textarea class="form-control" id="content" rows="3" id="content"
				                        style="width: 450px;" disabled="disabled"></textarea>
				                </div>
				                <br>
				                <hr>
				            </div>
				            <div class="modal-footer">
				                <button type="button" class="btn btn-secondary"
				                    data-bs-dismiss="modal">닫기</button>
				            </div>
				        </div>
				    </div>
				</div>
				<!--// Modal  -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script>
    $(document).ready(function()
    {
        $("#writeButton").click(function()
        {
            window.location.href = "<%=cp%>/weeklyReportWrite.action?memCode=${sessionScope.loginDTO.piMemCode}";
        });
        
     // 주간업무보고 데이터 모달로 전달 
		$(".weeklyBtn").click(function()
		{
		    var $row = $(this).closest('tr'); // 클릭된 버튼이 속한 행 선택
		    var weeklyTitle = $row.find('td:eq(1)').text().trim(); // 주제 데이터 가져오기 후 앞뒤 공백 제거
		    var weeklyContent = $row.find('td:eq(4)').text(); // 제목 데이터 가져오기

		    
		    // 모달 내 필드에 데이터 설정
		    $("#staticBackdrop").modal('show');
		    $("#title").val(weeklyTitle);
		    $("#content").val(weeklyContent);
		});
     
        
        
    });
</script>
</body>

</html>