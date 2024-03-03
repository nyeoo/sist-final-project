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
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">
  <title>모집공고 작성 </title>
<!-- css -->
	<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">
<!-- 컴포넌트 전용 css -->
	<link rel="stylesheet" href="<%=cp %>/asset/css/component.css">

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
                <p class="h3">모집공고 작성</p>
               
            </div>
            <!-- 작성영역 -->
            <div class="row write-area">
                <div class="col-12 col-sm-4 col-lg-3 write-nav">
                    <nav id="project-nav" class="h-100 flex-column align-items-stretch pe-4 border-end">
                        <nav class="nav nav-pills flex-column write-nav-con">
                            <a class="nav-link" href="#item-1">
                                <p class="h4">모집 내용</p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#item-1-1">
                                    <p class="h5">제목</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-1-2">
                                    <p class="h5">카테고리</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-1-3">
                                    <p class="h5">내용</p>
                                </a>
                            </nav>
                            <a class="nav-link" href="#item-2">
                                <p class="h4">모집 필요사항</p>
                            </a>
                            <nav class="nav nav-pills flex-column">
                                <a class="nav-link ms-3 my-1" href="#item-2-1">
                                    <p class="h5">일정</p>
                                </a>
                                <a class="nav-link ms-3 my-1" href="#item-2-4">
                                    <p class="h5">모임방식</p>
                                </a>
                                <a style="display: none;" class="nav-link ms-3 my-1 sunho" href="#item-2-5">
                                    <p class="h5">선호지역</p>
                                </a>
                            </nav>
                        </nav>
                    </nav>
                </div>

                <div class="col-12 col-sm-8 col-lg-9 write-content">
                        <div data-bs-spy="scroll" data-bs-target="#project-nav" data-bs-smooth-scroll="true"
                            class="scrollspy-example-2" tabindex="0">
                            <div class="row">
                            
							<form  action="WriteForm2.action"  method="post">
							
                                <!-- 모집내용 -->
                                <div id="item-1" class="col-12">
                                    <p class="h4">모집 내용</p>
                                </div>
                                <!-- //모집내용 -->
                                <!-- 제목 -->
                                <div id="item-1-1" class="col-12">
                                    <div class="m-input-box" >
                                        <label for="writePost01" class="form-label">
                                            <p class="h5">제목</p>
                                        </label>
                                        <input type="text" class="form-control" id="title" name="title" required="required" style="width: 350px;">
                                        <div class="invalid-feedback">
                                            제목1을 입력해주세요.
                                        </div>
                                    </div>
                                </div>
                                <!-- //제목 -->
                                <!-- 카테코리 -->
                                <div id="item-1-2" class="col-12">
                                    <p class="h5">카테고리</p>
                                    <div class="row">
                                        <div class="col-6 m-select">
                                         <select class="form-select" aria-label="Default select example" id="categori" name="categori"  title="selectTitle01" required="required" style="width: 250px; " >
                                                <option selected="selected">카테고리를 고르세요</option>
                                                <c:forEach var ="categorys" items="${cateList }" varStatus="status"  >
										 
													<option value= "CAT_${status.index +1}" >${categorys }</option>
										
												</c:forEach>
                                                
                                        </select>
                                        </div>
                                	</div>
                                </div>
                                <!-- //카테코리 -->
                                <!-- 내용 -->
                                <div id="item-1-3" class="col-12">
                                    <div class="m-textarea">
                                        <label for="exampleFormControlTextarea1" class="form-label"> 
                                            <p class="h5">내용</p>
                                        </label>
                                        <textarea class="form-control" id="content" name="content" rows="15"  required="required" style="width: 700px;"></textarea>
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
												<input type="text" required="required" class="form-control " id="startDate" name="startDate"> 
											</div>
											<div class="col-6 m-input-cal">
												<label for="endDate" class="form-label"><i class="bi bi-calendar2-plus"></i> 종료 예정일</label> 
												<!-- <input type="text" required="required" class="form-control date-to" id="endDate" name="endDate" > --> 
												<input type="text" required="required" class="form-control " id="endDate" name="endDate" > 
											</div>
										</div>
                                </div>
                                <!-- //일정 -->

                                <!-- 모임방식 -->
                                <div id="item-2-4" class="col-12">
                                    <p class="h5">모임방식</p>
                                    <div class="row">
											<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="border-radius: 500px;">
													<input type="radio" class="btn-check meet" name="btnradio" id="online"  value="MEET_1" autocomplete="off" required="required">
												<label class="btn btn-light" for="online">온라인</label> 
													<input type="radio" class="btn-check meet" name="btnradio" id="offline" value="MEET_2" autocomplete="off">
												<label class="btn btn-light" for="offline">오프라인</label> 
													<input type="radio" class="btn-check meet" name="btnradio" id="allline" value="MEET_3" autocomplete="off"> 
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
                                            <select class="form-select " aria-label="Default select example" id="si" name="si"  title="selectTitle01" required="required">
                                                <option value="0" selected="selected">지역을 고르세요</option>
                                                <c:forEach var ="sidoList" items="${sidoList }" varStatus="status"  >
													<option value="SIDO_${status.index +1}">${sidoList }</option>
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
													<option value="SIGG_${status.index +1}">${siggList }</option>
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
                            <!-- 버튼영역 -->
                            <div class="btn-box">
                                <div class="btn-center">
                                  <button type="submit" class="btn btn-primary">다음</button>
                                  <button type="reset" class="btn btn-secondary">다시쓰기</button>
                                </div>
                            </div>
                            <!-- //버튼영역 -->
                            </form> 
                            </div>
                        </div>
                    </form>
                </div >
            </div>
            <!-- //작성영역 -->


            </div>
        </section>
        <!-- //바디영역 -->

	<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->
</div> <!-- .wrapper End -->
</body>
<!-- script -->
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>
	<script type="text/javascript">
	
	// 데이트 픽커 설정 
	   $.datepicker.setDefaults(
	   {
	        dateFormat: 'yymmdd',
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
  		// 시작 날짜 선택
        $( "#startDate" ).datepicker(
        {
        	dateFormat: "yy/mm/dd" ,			
          	onSelect: function(selectedDate) 
          	{
            	var startDate = $(this).datepicker('getDate'); 						// 시작 날짜 가져오기
            	var endDateMin = new Date(startDate.getTime()); 					// 시작 날짜 복사
            	endDateMin.setMonth(endDateMin.getMonth() + 1); 					// 한 달 뒤로 설정
            	var endDateMax = new Date(startDate.getTime()); 					// 시작 날짜 복사
            	endDateMax.setMonth(endDateMax.getMonth() + 6); 					// 6개월 뒤로 설정
            	$( "#endDate" ).datepicker( "option", "minDate", endDateMin ); 		// 종료 날짜 선택 가능한 범위 설정
            	$( "#endDate" ).datepicker( "option", "maxDate", endDateMax ); 		// 종료 날짜 선택 가능한 범위 설정
          }
        });
        
        // 종료 날짜 선택
        $( "#endDate" ).datepicker(
        {
        	 dateFormat: "yy/mm/dd" 
        });
  		
  		
		// 선호방식 눌렀을떄
  		$(".meet").change(function() 
		{
  			//alert(startDate);
  			
  			var meetType = $("input[name=btnradio]:checked").val();			// 선호방식 담는 변수
			  				
			if (meetType !="MEET_1")												// 선호방식이 온라인이 아니면 시군구 입력 폼 등장
			{
				
				$(".sunho").css('display','inline');
				$(".meetType").css('display','inline');  
			} 
			else															// 선호방식이 온라인이라면 선호지역 입력 폼 숨기기
			{
				$(".sunho").css('display','none');
				$(".meetType").css('display','none');
				$("#si").val("0").prop("selected", true);
				$("#do").val("0").prop("selected", true);
			}
			
			
						
		});
  		
  		// 시를 고르면 다음 지역 선택가능하게 해주는 함수
		$("#si").change(function()
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
  		/* 
		// startDate와 endDate 값을 가져와서 form의 action 속성을 설정
	    var startDate = $("#startDate").val();
	    var endDate = $("#endDate").val();
	    var formAction = "WriteForm2.action?startDate=" + startDate + "&endDate=" + endDate;
	    // form 요소의 action 속성을 설정
	    $("#form2").attr("action", formAction);
	     */
	});
  </script>
</html>