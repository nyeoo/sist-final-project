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
<title>리뉴얼 모집공고</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">

</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<%-- <c:import url="../Components/Header.jsp"></c:import> --%>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<!-- <section class="m-body-area">
      <div class="container-xl"> -->

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- 콘텐츠 내용 -->
		<div class="section register join min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10 col-lg-6 d-flex flex-column align-items-center justify-content-center">
						
						
						<!-- <div class="d-flex justify-content-center py-4">
							<a href="index.jsp" class="logo d-flex align-items-center w-auto"> <span class="d-none d-lg-block"><a class="navbar-brand" href="#">Meet
										Up</a></span>
							</a>
						</div> -->
						<!-- End Logo -->
						<div class="card mb-3 join-area">

							<div class="card-body">
								<div class="pt-4 pb-2">
									<div class="h3 card-title text-center pb-0">모집 공고 개설</div>
								</div>

								<!-- 모집공고 Swiper -->
								<form action="opProjectInsertController.action" id="f" method="get">
								<div class="swiper join-swiper">
									<div class="swiper-btn">
										<button type="button" class="swiper-button-prev">
											<i class="bi bi-arrow-left-circle"></i> <span class="blind">이전</span>
										</button>
										<button type="button" class="swiper-button-next">
											<i class="bi bi-arrow-right-circle"></i> <span class="blind">이후</span>
										</button>
									</div>
									<div class="swiper-pagination"></div>
									<div class="swiper-wrapper">
										<!-- 모집공고1 -->
										
										<div class="swiper-slide">
											<div class="row g-3 needs-validation" novalidate>
								<input type="hidden" name="memcode" id="memcode" value="${sessionScope.loginDTO.piMemCode}" />	<!-- 개설자 회원코드 -->
								<!-- 새로추가 -->
								<input type="hidden" name="lastCode" id="lastCode" value="${lastCode}" />	<!-- 가장 최근 만들어진 프로젝트 code -->
								
								<!-- 모집내용 -->
                                <div id="item-1" class="col-12">
                                    <p class="h4">모집 내용</p>
                                </div>
                                <!-- 카테코리 -->
                                <div id="item-1-1" class="col-12">
                                    <p class="h5">카테고리</p>
                                    <div class="row">
                                        <div class="col-6 m-select">
                                         <select class="form-select" aria-label="Default select example" id="catcode" name="catcode"  title="selectTitle01" required="required" style="width: 250px; " >
                                                <option selected="selected">카테고리를 고르세요</option>
                                                <c:forEach var ="categorys" items="${cateList }" varStatus="status"  >
										 
													<option value= "CAT_${status.index +1}" >${categorys }</option>
										
												</c:forEach>
                                                
                                        </select>
                                        </div>
                                	</div>
                                </div>
                                <!-- //카테코리 -->
                                <!-- //모집내용 -->
                                <!-- 제목 -->
                                <div id="item-1-2" class="col-12">
                                    <div class="m-input-box" >
                                        <label for="writePost01" class="form-label">
                                            <p class="h5">제목</p>
                                        </label>
                                        <input type="text" class="form-control" id="title" name="title" required="required" style="width: 350px;" value="ljh1234">
                                        <div class="invalid-feedback">
                                            제목을 입력해주세요.
                                        </div>
                                    </div>
                                </div>
                                <!-- //제목 -->
                                <!-- 내용 -->
                                <div id="item-1-3" class="col-12">
                                    <div class="m-textarea">
                                        <label for="exampleFormControlTextarea1" class="form-label"> 
                                            <p class="h5">내용</p>
                                        </label>
                                        <textarea class="form-control" id="content" name="content" rows="15"  required="required" style="width: 700px;" value="ljh1234"></textarea>
                                    </div>
                                    <div class="invalid-feedback">
                                          내용을 입력하세요
                                    </div>
                                </div>
                                <!-- //내용 -->
                                
                                
                                <!-- 모집 필요사항 -->
                                <!-- //모집 필요사항 -->
                                <!-- //일정 -->
                                <div id="item-2-1" class="col-12">
                                    <p class="h5">일정</p>
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="startDate" class="form-label"><i class="bi bi-calendar2-plus"></i> 시작 예정일</label> 
												<!-- <input type="text" required="required" class="form-control date-from" id="startDate" name="startDate"> -->  
												<input type="text" required="required" class="form-control " id="sdate" name="sdate">  
												 
												<input type="hidden"  id="startDate" name="startDate" >  
											</div>
											<div class="col-6 m-input-cal">
												<label for="endDate" class="form-label"><i class="bi bi-calendar2-plus"></i> 종료 예정일</label> 
												<!-- <input type="text" required="required" class="form-control date-to" id="endDate" name="endDate" > --> 
												<input type="text" required="required" class="form-control " id="edate" name="edate" > 
												
												<input type="hidden" id="endDate" name="endDate" >  
											</div>
										</div>
                                </div>
                                <!-- //일정 -->

                                <!-- 모임방식 -->
                                <div id="item-2-4" class="col-12">
                                    <p class="h5">모임방식</p>
                                    <div class="row">
											<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="border-radius: 500px;">
													<input type="radio" class="btn-check meet" name="meetcode" id="online"  value="MEET_1" autocomplete="off" required="required">
												<label class="btn btn-light" for="online">온라인</label> 
													<input type="radio" class="btn-check meet" name="meetcode" id="offline" value="MEET_2" autocomplete="off">
												<label class="btn btn-light" for="offline">오프라인</label> 
													<input type="radio" class="btn-check meet" name="meetcode" id="allline" value="MEET_3" autocomplete="off"> 
												<label class="btn btn-light" for="allline">온 / 오프라인</label>
											</div>
										</div>
                                </div>
                                <!-- //모임방식 -->
                                
                                <!-- 선호지역  -->
                                <div id="item-2-5" class="col-12 meetType" style="display: none">
                                    <p class="h5">선호지역</p>
                                    <div  class="row">
                                        <div class="col-6 m-select">
                                            <select class="form-select " aria-label="Default select example" id="siggcode" name="siggcode"  title="selectTitle01" required="required">
                                                <option value="0" selected="selected">지역을 고르세요</option>
                                                <c:forEach var ="sidoList" items="${sidoList }" varStatus="status"  >
													<option value="SIGG_${status.index +1}">${sidoList }</option>
												</c:forEach>
                                                
                                                <!-- 
                                                <option value="1">서울특별시</option>
                                                <option value="2">인천광역시</option>
                                                <option value="3">대구광역시</option>
                                                <option value="4">부산광역시</option>
                                                 -->
                                            </select>
                                        </div>
                                        <div class="col-6 m-select">
                                            <select class="form-select" aria-label="Default select example" id="do" name="do" title="selectTitle01" disabled="disabled" required="required">
                                                <option value="0" selected>큰 지역 먼저 골라주세요</option>
                                                <c:forEach var ="siggList" items="${siggList }" varStatus="status"  >
													<option value="SIDO_${status.index +1}">${siggList }</option>
												</c:forEach>
												<!-- 
                                                <option value="1">수원시</option>
                                                <option value="2">화성시</option>
                                                <option value="4">용인시</option>
                                                <option value="4">부천시</option>
                                                <option value="5">하남시</option>
                                                 -->
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- //선호지역 -->
												<div class="col-12">
													<button class="btn btn-primary w-100 join-step01" type="button">다음단계</button>
												</div>
											</div>
										
										
										</div>
																				
										<!-- //모집폼1 -->
										
										<!-- 모집폼2 -->
										<div class="swiper-slide">
											<div class="row g-3 needs-validation" novalidate>

												<!-- 모집내용 -->
                                <p class="h4">일정 세부 설정</p>
                                <div id="date-1-1" class="col-12">
								    <div class="row range-datepicker">
								        <div class="col-6 m-input-cal">
								            <label for="startdate1" class="form-label">분석 시작 예정일</label> 
								            <input type="text" class="form-control sdate" id="startdate1" name="startdate1"   value= "" disabled="disabled"> 
								        </div>
								        <div class="col-6 m-input-cal">
								            <label for="enddate1" class="form-label">분석 종료 예정일</label> 
								            <input type="text" class="form-control edate" id="enddate1" name="enddate1" >
								        </div>
								    </div>
								</div>
                                 <div id="date-1-2" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="startdate2" class="form-label">설계 시작 예정일</label> 
												<input type="text" class="form-control sdate" id="startdate2" name="startdate2"  >
											</div>
											<div class="col-6 m-input-cal">
												<label for="enddate2" class="form-label">설계 종료 예정일</label> 
												<input type="text" class="form-control edate" id="enddate2" name="enddate2">
											</div>
										</div>
                                </div>
                                 <div id="date-1-3" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="startdate3" class="form-label">구현 시작 예정일</label> 
												<input type="text" class="form-control sdate " id="startdate3" name="startdate3" >
											</div>
											<div class="col-6 m-input-cal">
												<label for="enddate3" class="form-label">구현 종료 예정일</label> 
												<input type="text" class="form-control edate" id="enddate3" name="enddate3">
											</div>
										</div>
                                </div>
                                 <div id="date-1-4" class="col-12">
										<div class="row range-datepicker">
											<div class="col-6 m-input-cal">
												<label for="startdate4" class="form-label">테스트 시작 예정일</label> 
												<input type="text" class="form-control sdate" id="startdate4" name="startdate4"   value="">
											</div>
											<div class="col-6 m-input-cal">
												<label for="enddate4" class="form-label">테스트 종료 예정일</label> 
												<input type="text" class="form-control edate" id="enddate4" name="enddate4" value=""  disabled="disabled">
											</div>
										</div>
										<div id="errorMessage" class="error" style="display: none;">일정이 유효하지 않습니다.</div>
                                </div>
                                <!-- //일정 -->
                                
                                <!-- 팀원구성 필요사항 -->
                                <div id="item-2" class="col-12">
                                    <p class="h4">팀 구성</p>
                                </div>
                                <!-- 팀 구성시 필요사항 -->
                                <div id="item-2-1" class="col-12">
									 
									<div id="item-2-1" style="display: flex;">                         
	                                	<div class="m-input-box" >
	                                	<h5>팀명</h5> <input type="text" class="form-control" id="teamname" name="teamname" placeholder="팀명을 입력하세요"> 
	                                	</div>
									</div>
									 
									<div id="item-2-2">                 	
									<p class="h5">희망 경력</p>
									<select class="form-select" aria-label="Default select example" id="carcode" name="carcode" title="selectTitle01"  required="required" style="width: 205px;">
                                    
                                    	<option value="0" selected>희망경력을 골라주세요.</option>
										<c:forEach var="car" items="${carList }" varStatus="status">								                  	
					                  		<option value="CAR_${status.index +1}">${car }</option>
					                  	</c:forEach>
					                </select>
				                  	</div>
				                  	
									<div class="row" id="item-2-3"> 
                                    <p class="h5">팀원 설정</p>
									<c:forEach var="job" items="${jobs }">
									<c:set var ="i" value="${i+1 }"></c:set>
	                                        <div class="col-5 m-select">
	                                            <!-- 프론트 -->
	                                            ${job.jobName }
	                                        </div>

                                        <div class="col-5 m-select">
                                            <select class="form-select inwon" aria-label="Default select example" id="inwon${i}" name="inwon${i}" title="selectTitle01" required="required">
                                                <option selected>인원수를 골라주세요</option>
                                                <option value="0">0명</option>
                                                <option value="1">1명</option>
                                                <option value="2">2명</option>
                                                <option value="3">3명</option>
                                                <option value="4">4명</option>
                                                <option value="5">5명</option>
                                                <option value="6">6명</option>
                                                <option value="7">7명</option>
                                                <option value="8">8명</option>
                                                <option value="9">9명</option>
                                            </select>
                                            <%-- <input type="hidden" id="inwon_${status.index +1}" value=""> --%>
                                        </div>
                                        
									</c:forEach>	
									<input type="hidden" id="mojibsu" name="mojibsu" value="" />
                                        

 			          </div>
                                </div>
                                <!-- 팀원설정 끝 -->	

												<div class="col-12">
													<button class="btn btn-primary w-100 join-step02" type="button">다음단계</button>
												</div>
											</div>
										</div>
										<!-- //회원가입2 -->
										<!-- 회원가입3 -->
										<div class="swiper-slide">
											<div class="row g-3 needs-validation" novalidate>
												<!-- 희망기술 -->
												<div id="item-2-3" class="col-12">
														<p class="h5">희망기술</p>
														<div class="skill-box">
														<nav>
																<!-- <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
																	<button class="nav-link active" id="nav-skill1-tab" data-bs-toggle="tab" data-bs-target="#nav-skill1" type="button" role="tab"
																		aria-controls="nav-skill1" aria-selected="true">프론트</button>
																	<button class="nav-link" id="nav-skill2-tab " data-bs-toggle="tab" data-bs-target="#nav-skill2" type="button" role="tab"
																		aria-controls="nav-skill2" aria-selected="false">백엔드</button>
																	<button class="nav-link" id="nav-skill3-tab" data-bs-toggle="tab" data-bs-target="#nav-skill3" type="button" role="tab"
																		aria-controls="nav-skill3" aria-selected="false">기획, 디자인, 개발툴</button>
																</div> -->

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
												<!-- //희망기술 -->

												<div class="col-12">
													<div class="sikll-box" id="skilArea">
														<!-- 내가 체크한 기술 나오는 공간 -->
													</div>
												</div>

												<div class="col-12">
													<button class="btn btn-primary w-100" id="shoot" type="button">개설 신청</button>
												</div>
											</div>
										</div>
										<!-- //회원가입3 -->
									</div>
								</div>
								<!-- //회원가입 Swiper -->
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>


		<!-- </div>
    </section> -->
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp" ></c:import> 
		<!-- //푸터영역 -->

	</div>


	


	<!-- script -->
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/swiper-bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>
	<script type="text/javascript">
	
	// 데이트 픽커 설정 
	   $.datepicker.setDefaults(
	   {
	        dateFormat: 'yyyy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년'
	    });
	   
  	$(function()
  	{
  		
  		
  		// 팀원 수 고를때 
  		$(".inwon").change(function() 
	  	 {
	            var sum = 0;
	            // 모든 select 요소의 값을 합산
	            $(".inwon").each(function() 
	            {	
	            	
	                sum += parseInt($(this).val());
	            });

	            // 합계가 12명을 초과하는 경우, 알림 창 띄우기
	            if (sum > 12) 
	            {
	                alert("최대 참가 인원은 12명입니다.");
	                
	                // 마지막 select 요소의 값을 12명으로 설정
	                var lastIndex = $(".inwon").length - 1;
	                $(".inwon").eq(lastIndex).val(12 - (sum - parseInt($(".inwon").eq(lastIndex).val())));
	    
	            }
	            else if(sum == 0)
	            {
	            	alert("최소 1명이라도 골라야됩니다.");
	            	var firstSelect = document.getElementsByClassName("inwon")[0];
	            	firstSelect.focus();
	            }
	            mojibsu.value= sum;
	        });
  		
		var date1, date2;
  		
  		
  		
  		// 시작 날짜 선택
        $( "#sdate" ).datepicker(
        {
        	dateFormat: "yy-mm-dd" ,			
          	onSelect: function(selectedDate) 
          	{
            	var startDate = $(this).datepicker('getDate'); 						// 시작 날짜 가져오기
            	var endDateMin = new Date(startDate.getTime()); 					// 시작 날짜 복사
            	endDateMin.setMonth(endDateMin.getMonth() + 1); 					// 한 달 뒤로 설정
            	var endDateMax = new Date(startDate.getTime()); 					// 시작 날짜 복사
            	endDateMax.setMonth(endDateMax.getMonth() + 6); 					// 6개월 뒤로 설정
            	$( "#edate" ).datepicker( "option", "minDate", endDateMin ); 		// 종료 날짜 선택 가능한 범위 설정
            	$( "#edate" ).datepicker( "option", "maxDate", endDateMax ); 		// 종료 날짜 선택 가능한 범위 설정
               	
            
            	//date1 = $(this).datepicker('getDate');
            	date1 = $.datepicker.formatDate("yy-mm-dd", startDate);
            	
          }
        });
  		
        
  		
  		
        // 종료 날짜 선택
        $( "#edate" ).datepicker(
        {
        	 dateFormat: "yy-mm-dd",
        	 
        	 onSelect: function(selectedDate) 
             {
        		 var endDate = $(this).datepicker('getDate'); 
        		 date2 = $.datepicker.formatDate("yy-mm-dd", endDate);
        		 
        		//alert(date1);
       			//alert(date2);
       			
       			document.getElementById("startDate").value = date1;
       			document.getElementById("endDate").value = date2;
       			document.getElementById("startdate1").value = date1;
       			document.getElementById("enddate4").value = date2;
       			
             }  
      
        });
    	
              
  		
        
        
		// 선호방식 눌렀을떄
  		$(".meet").change(function() 
		{
			//alert(document.getElementById("startDate").value);
  			
  			
  			var meetType = $("input[name=meetcode]:checked").val();					// 선호방식 담는 변수
			  				
			if (meetType !="MEET_1")												// 선호방식이 온라인이 아니면 시군구 입력 폼 등장
			{
				$(".meetType").css('display','inline');  
			} 
			else																	// 선호방식이 온라인이라면 선호지역 입력 폼 숨기기
			{
				$(".meetType").css('display','none');
				$("#siggcode").val("0").prop("selected", true);
				$("#do").val("0").prop("selected", true);
			}
			
			
		});
  		
	     
		// 날짜를 'yyyy-mm-dd' 형식으로 변환하는 함수
		function formatDate(date)
		{
		    var year = date.getFullYear();
		    var month = ('0' + (date.getMonth() + 1)).slice(-2);
		    var day = ('0' + date.getDate()).slice(-2);
		    return year + '-' + month + '-' + day;
		};
		
  		// 시를 고르면 다음 지역 선택가능하게 해주는 함수
		$("#siggcode").change(function()
		{       
			$("#do").attr("disabled", false);
			
		     /* var si = $("#si").val();
			 var doSelect = $("#do");
			 var siggList = $("#siggList").val().split(",");
			  doSelect.empty(); // 기존 구/군 목록 초기화
			  
			  if (si !== "0") { // 시/도를 선택했을 경우
			    doSelect.prop('disabled', false); // 구/군 선택 가능하도록 활성화
			    $.each(siggList, function(index, value) {
			      doSelect.append("<option value='" + value + "'>" + value + "</option>");
			    });
			  } else {
			    doSelect.prop('disabled', true); // 구/군 선택 불가능하도록 비활성화
			    doSelect.append("<option value='0'>큰 지역 먼저 골라주세요</option>");
			  }  */
		    
		         
		});
  		
	    $("#shoot").click(function()
		{
			
	    	$("#startdate1").attr("disabled", false);
	    	$("#enddate4").attr("disabled", false);
	    	 $( '#f' ).submit();
	    	//alert("gma..");
		});
	     
	    
	    //var hopeskills = [];
		
	    var hopeskills = new Array;
  
		 $("#input:checkbox[name='hopeskills']:checked").each(function(idx)
		 {
			 hopeskills.push($(this).val());
		 })
	    
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

	     
		
	     
		$("#startdate1, #startdate2, #startdate3, #startdate4, #enddate1, #enddate2, #enddate3, #enddate4").datepicker({
			dateFormat: "yy-mm-dd" 
           
        }); 
    
	     
	     
	     
	     
	});
  </script>
</body>

</html>