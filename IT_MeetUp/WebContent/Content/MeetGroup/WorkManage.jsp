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
<title>WorkManage</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">


<script>

  	$(function()
	{
  		
  		$(".skil").change(function(){
  	        var skilArea = $("#skilArea");		// div 영역 가져오기
  	        var skillName = $(this).attr("id"); // 기술이름가져오기
  	        var skillLabel = $("label[for='" + skillName + "']").text();  

  	        var checkSkill = skilArea.find("span");
  	        if ($(this).is(":checked"))
  	        {
  	            // 선택된 기술이 5개 미만인 경우에만 추가
  	            if (checkSkill.length < 5)
  	            {
  	              var skill = $("<span>").text("["+skillLabel+"]"   );
  	               skilArea.append(skill);
  	            } 
  	            else
  	            {
  	                $(this).prop("checked", false);
  	                alert("최대 5개까지 선택 가능합니다.");
  	            }
  	        } 
  	        else
  	        {
  	            // 체크를 해제 하면 해당 기술을 삭제
  	            checkSkill.each(function()
  	            {
  	                if ($(this).text().indexOf(skillLabel) !== -1)
  	                {
  	                    $(this).remove();
  	                }
  	            });
  	        }
  	    });	
  
	  	// 기간 유효성 검사
	  	function startDateCheck() 
	  	{
	  	    var startDateInput = document.getElementById('startDate');
	  	    var endDateInput = document.getElementById('endDate');
	
	  	    var startDate = new Date(startDateInput.value);
	  	    var endDate = new Date(endDateInput.value);
	
	  	    // 시작일이 종료일보다 늦은 경우
	  	    if (startDate > endDate) {
	  	        alert("시작일은 종료일보다 늦을 수 없습니다.");
	  	        endDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	        return;
	  	    }
	
	  	    // 최소 1개월 이후부터 선택 가능
	  	    var minSelectableDate = new Date(startDate);
	  	    minSelectableDate.setMonth(minSelectableDate.getMonth() + 1);
	  	    if (endDate < minSelectableDate) {
	  	        alert("시작일로부터 최소 1개월 이후부터 종료일을 선택할 수 있습니다.");
	  	        endDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	        return;
	  	    }
	
	  	    // 최대 6개월 이내인지 확인
	  	    var maxEndDate = new Date(startDate);
	  	    maxEndDate.setMonth(maxEndDate.getMonth() + 6);
	  	    if (endDate > maxEndDate) {
	  	        alert("종료일은 시작일로부터 최대 6개월 이내여야 합니다.");
	  	        endDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	    }
	  	}
	
	  	 
	  	function endDateCheck() 
	  	{
	  	    var startDateInput = document.getElementById('startDate');
	  	    var endDateInput = document.getElementById('endDate');
	
	  	    var startDate = new Date(startDateInput.value);
	  	    var endDate = new Date(endDateInput.value);
	
	  	    // 종료일이 시작일보다 빠른 경우
	  	    if (endDate < startDate) {
	  	        alert("종료일은 시작일보다 늦어야 합니다.");
	  	        endDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	        return;
	  	    }
	
	  	    
	  	    // 최소 1개월 이전부터 선택 가능
	  	    var minSelectableDate = new Date(startDate);
	  	    minSelectableDate.setMonth(minSelectableDate.getMonth() + 1);
	  	    if (endDate < minSelectableDate) {
	  	        alert("종료일로부터 최소 1개월 이전부터 시작일을 선택할 수 있습니다.");
	  	      startDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	        return;
	  	    }
	  	    
	  	    // 최대 6개월 이내인지 확인
	  	    var maxEndDate = new Date(startDate);
	  	    maxEndDate.setMonth(maxEndDate.getMonth() + 6);
	  	    if (endDate > maxEndDate) {
	  	        alert("종료일은 시작일로부터 최대 6개월 이내여야 합니다.");
	  	        endDateInput.value = ""; // 유효하지 않은 경우 입력한 종료일을 지웁니다.
	  	    }
	  	} 
  	
</script>

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<div role="header" data-include="../Components/Header.jsp"
			class="sticky-top"></div>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">

			<div class="container-xl">

				<!-- 사이드 영역 -->
				<div role="side" data-include="../Components/Side.jsp"></div>
				<!-- //사이드 영역 -->

				<!-- 탭 -->
				<div class="comp_box">
					<h2 class="comp_tit">업무관리</h2>

					<div class="tab-box">
						<nav>
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
								role="tablist">
								<button class="nav-link active" id="nav-home-tab"
									data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
									role="tab" aria-controls="nav-home" aria-selected="true">일정관리</button>
								<button class="nav-link" id="nav-profile-tab"
									data-bs-toggle="tab" data-bs-target="#nav-profile"
									type="button" role="tab" aria-controls="nav-profile"
									aria-selected="false">업무할당표</button>
								<button class="nav-link" id="nav-contact-tab"
									data-bs-toggle="tab" data-bs-target="#nav-contact"
									type="button" role="tab" aria-controls="nav-contact"
									aria-selected="false">업무 보고 목록</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent">
							<div data-include="../MeetGroup/ScheduleManage.jsp"
								class="tab-pane fade show active"></div>
							<div class="tab-pane fade" id="nav-profile" role="tabpanel"
								aria-labelledby="nav-profile-tab">
								<div data-include="../MeetGroup/WorkAssignment.jsp"
									class="comp_tit"></div>
							</div>
							<div class="tab-pane fade" id="nav-contact" role="tabpanel"
								aria-labelledby="nav-contact-tab">
								<div data-include="../MeetGroup/WorkReportList.jsp"
									class="card tbl-card"></div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- 탭 -->

			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
				data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">업무 할당</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div data-include="../MeetGroup/M_WorkAssignment.jsp"
							class="modal-body"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">제출</button>
						</div>
					</div>
				</div>
			</div>
			<!--// Modal  -->

			<!-- Modal2 -->
			<div class="modal fade" id="staticBackdrop2"
				data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">업무보고</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div data-include="../MeetGroup/M_WorkReport.jsp"
							class="modal-body"></div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">제출</button>
						</div>
					</div>
				</div>
			</div>
			<!-- //Modal2 -->

			<!-- Modal3 -->
			<div class="modal fade" id="staticBackdrop3"
				data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
				aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">업무 결재</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="decisionForm">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="decision"
										id="approve" value="approve"> <label
										class="form-check-label" for="approve"> 승인 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="decision"
										id="reject" value="reject"> <label
										class="form-check-label" for="reject"> 반려 </label>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary"
								onclick="submitDecision()">제출</button>
						</div>
					</div>
				</div>
			</div>
			<!--// Modal3  -->
	</div>
	</section>
	<!-- 푸터영역 -->
	<div role="footer" data-include="../Components/Footer.jsp"
		class="mt-auto"></div>
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