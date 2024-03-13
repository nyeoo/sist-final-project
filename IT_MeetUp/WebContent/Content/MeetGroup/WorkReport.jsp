<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WorkReport.jsp</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<!-- 컴포넌트 전용 css -->
<link rel="stylesheet" href="<%=cp%>/asset/css/component.css">
<style type="text/css">

/* #csslabel
  {
  	background-image: url("images/ico_css.png");
  	   
  } */
</style>
</head>
<body>

	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<div
			class="section register join min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-md-10 col-lg-6 d-flex flex-column align-items-center justify-content-center">
						<div class="card mb-3 join-area">
							<!-- 사이드 영역 -->
							<c:import url="../Components/Side.jsp"></c:import>
							<!-- //사이드 영역 -->
							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">업무보고</div>
									<hr>
								</div>
								<form role="form" action="insertReport.action" method="post">
									<!-- 제목 -->
									<div id="item-1" class="comp_tit ">
										<div class="m-input-box">
											<label for="reportTitle" class="form-label"> 제목 </label>
											<input type="text" class="form-control" id="repTitle"
												name="assName" style="width: 350px;" value="">
											<div class="invalid-feedback">제목을 입력해주세요.</div>
										</div>
									</div>
									<!--// 제목 -->
									<br>
									<!-- 내용 -->
									<div id="item-2" class="comp_tit ">
										<div class="m-textarea">
											<label for="reportContent" class="form-label"> 내용
											</label>
											<textarea class="form-control" id="assContent" name="repContent"
												rows="15" style="width: 700px;"></textarea>
										</div>
										<div class="invalid-feedback">내용을 입력하세요</div>
									</div>
									<!-- //내용 -->
									<br>
									<div id="#item-5" class="comp_tit">
										업무 수행 기간
										<div style="display: flex;">
											<span>시작일 <input type="date" class="form-control"
												id="repStartDate" name="assStartDate" onchange="startDateCheck()"
												style="width: 150px;">
											</span> <span>종료일 <input type="date" class="form-control"
												id="repEndDate" name="assEndDate" onchange="endDateCheck()" style="width: 150px;">
											</span>
										</div>
									</div>
									<br>
									<div id="item-6" class="comp_tit">
										사용기술
										<div class="skill-box">
										<nav>
											<div class="nav nav-tabs mb-3" id="nav-tab"
												role="tablist">
												<c:forEach var="skill" items="${skillCategorys}" varStatus="status">
													<button class="nav-link 
													<c:if test="${status.index == 0}">active</c:if>"
														id="nav-skill${status.index + 1}-tab"
														data-bs-toggle="tab"
														data-bs-target="#nav-skill${status.index + 1}"
														type="button" role="tab"
														aria-controls="nav-skill${status.index + 1}"
														aria-selected="true" value="${skill.scCode}">${skill.scName}
													</button>
												</c:forEach>
											</div>
										</nav>
											<div class="tab-content" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-skill1"
													role="skill1" aria-labelledby="nav-skill1-tab">
													<ul class="skill-check">
														<c:forEach var="skillItem" items="${skills }" varStatus="status">
															<c:if test="${skillItem.skScCode == 'SC_1' }">
																<li>
																	<div class="form-check skill-item 
																	<c:forEach var="entry" items="${skProcessors}">
																		 <c:set var="skillCode" value="${entry.key}" />
																			<c:set var="imageName" value="${entry.value}" />
																			
																			<c:if test="${skillCode == skillItem.skCode }">
																				${imageName}
																			</c:if>
																		</c:forEach>">
																		<input class="form-check-input skill " type="checkbox" name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}"> 
																		<label class="form-check-label" > ${skillItem.skName } </label>
																	</div>
																</li>
															</c:if>
														</c:forEach>
	
													</ul>
	
												</div>
												<div class="tab-pane fade" id="nav-skill2" role="skill2"
													aria-labelledby="nav-skill2-tab">
													<ul class="skill-check">
														<c:forEach var="skillItem" items="${skills }"
															varStatus="status">
	
															<c:if test="${skillItem.skScCode == 'SC_2' }">
																<li>
																	<div
																		class="form-check skill-item 
																		<c:forEach var="entry" items="${skProcessors}">
																			<c:set var="skillCode" value="${entry.key}" />
																			<c:set var="imageName" value="${entry.value}" />
																			
																			<c:if test="${skillCode == skillItem.skCode }">
																				${imageName}
																			</c:if>
																		</c:forEach>">
																		<input class="form-check-input skill " type="checkbox"  name="hopeskills" value="${skillItem.skCode }" id="${status.index +1}"> 
																		<label class="form-check-label"> ${skillItem.skName } </label>
																	</div>
																</li>
															</c:if>
														</c:forEach>
	
													</ul>
	
												</div>
												<div class="tab-pane fade" id="nav-skill3" role="skill3"
													aria-labelledby="nav-skill3-tab">
													<ul class="skill-check">
	
														<c:forEach var="skillItem" items="${skills }"
															varStatus="status">
	
															<c:if test="${skillItem.skScCode == 'SC_3' }">
																<li>
																	<div
																		class="form-check skill-item 
																		<c:forEach var="entry" items="${skProcessors}">
																			<c:set var="skillCode" value="${entry.key}" />
																			<c:set var="imageName" value="${entry.value}" />
																			
																			<c:if test="${skillCode == skillItem.skCode }">
																				${imageName}
																			</c:if>
																		</c:forEach>">
																		<input class="form-check-input skill " type="checkbox" name="hopeskills" value="${skillItem.skCode }"id="${status.index +1}"> 
																		<label class="form-check-label"> ${skillItem.skName } </label>
																	</div>
																</li>
															</c:if>
														</c:forEach>
	
													</ul>
												</div>
											</div>
										</div>
									
								</div>
								<!-- //사용기술 -->
								
								<div class="col-12">
									<div class="sikll-box" id="skilArea">
										<!-- 내가 체크한 기술 나오는 공간 -->
									</div>
								</div>
									
								<br> <br>
								<!-- 첨부파일 -->
								<div id="#item-7" class="comp_tit ">
									첨부파일
									<div class="m-file">
										<label for="formFile" class="form-label">file</label> <input
											class="form-control" type="file" id="formFile">
									</div>
								</div>
								<!-- //첨부파일 -->
								<input type="hidden" name="memCode" value="${sessionScope.loginDTO.piMemCode}">
								<br>
								<!-- 제출 및 취소 버튼 -->
								<div style="text-align: center;">
									<button class="btn btn-primary" type="submit">제출</button>
									<button class="btn btn-secondary" id="reSetButton">취소</button>
								</div>
								<!-- //제출 및 취소 버튼 -->
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터영역 -->
	<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script type="text/javascript">
	
	
	$(document).ready(function()
    {
        $("#writeButton").click(function()
        {
            window.location.href = "<%=cp%>/workManage.action?memCode=${sessionScope.loginDTO.piMemCode}";
        });
     	// 기술 체크할떄마다 span 구역에 나오게 함수
        $(".skill").change(function() 
   		{
   			var skilArea = $("#skilArea"); 			  		// div 영역 가져오기 
   			/* var skillName = $(this).attr("id") 		  	// 기술이름가져오기 */
   			var skillName = $(this).val() 		  			// 기술이름가져오기
   			//alert(skillName);
   			   
   			// 체크된 기술 
   	        var checkSkill = skilArea.find("span");
   			if ($(this).is(":checked"))
   			{  
   				
   				// 선택된 기술이 5개 미만인 경우에만 추가
   				if (checkSkill.length < 5) {
   					skilArea.append("<span>" + skillName  + "&ensp; </span>"); 
   					
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
   					if ($(this).text().indexOf(skillName) !== -1) 
   						$(this).remove();
   				});
   			}
   			
   		});


    });
	</script>

</body>
</html>