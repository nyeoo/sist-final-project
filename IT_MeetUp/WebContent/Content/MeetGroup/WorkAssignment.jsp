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
  <title>WorkAssignment.jsp</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">
  <!-- 컴포넌트 전용 css -->
  <link rel="stylesheet" href="../../asset/css/component.css">
  <style type="text/css">
  
  /* #csslabel
  {
  	background-image: url("images/ico_css.png");
  	   
  } */
  </style>
 <!-- script -->
  <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/bootstrap.bundle.min.js"></script>
  <script src="../../asset/js/common.js"></script>
  <script>

  	$(function()
	{
  		
  		
  
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
<body >



 <div class="wrapper">

    <!-- 헤더영역 -->
    <div role="header" data-include="../Components/Header.jsp" class="sticky-top"></div> 
    <!-- //헤더영역 -->
    </div>
       
    <section class="m-body-area">
		<div class="container-xl" >
			<div style="text-align: center;" >
				<h1>업무 할당 양식 </h1>  
				<hr>
				</div>
				<div class="content_tit">
                    <p class="h3">업무할당</p>
                    <!-- 브레드크럼블 -->
                    <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
                    <!-- //브레드크럼블 -->
    </div>
    
  			<!-- 작성영역 -->
            <div class="row write-area">
                <div class="col-12 col-sm-4 col-lg-3 write-nav">
                    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
                        <nav class="nav nav-pills flex-column write-nav-con">
                            <a class="nav-link ms-3 my-1" href="#item-1">
                                <span class="h4">제목(주제)</span>
                            </a>
                            <a class="nav-link ms-3 my-1" href="#item-2">
                                <span class="h4">내용</span>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-3">
                                <span class="h4">업무단계</span>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-4">
                                <span class="h4">업무분류</span>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-5">
                                <span class="h4">업무 수행 기간</span>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-6">
                                <span class="h4">담당자</span>
                            </a>
                            <a class="nav-link ms-3 my-1  " href="#item-7">
                                <span class="h4">첨부파일</span>
                            </a>
                        </nav>
                    </nav>
                </div>
	<!-- </div> -->
			<br>
			<br>
			
		<div class="col-12 col-sm-8 col-lg-9 write-content">
		<!-- <div class="bd-example m-0 border-0"> -->
		<div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"  class="scrollspy-example-2" tabindex="0">
			<form>


				<div id="#item-1" class="comp_tit">제목(주제) 
					<input type="text" class="form-control" id="title" required="required" style="width: 450px;">
				</div>

				<div  id="#item-2" class="comp_tit">내용
					<textarea class="form-control" id="content" rows="3" style="width: 450px;" required="required"></textarea>
		        </div>
				<div id="#item-3" class="comp_tit">업무 단계:
					<div class="btn-group" role="group" aria-label="Basic radio toggle button group"style="border-radius: 500px;">
						<input type="radio" class="btn-check" name="btnradio" id="분석" autocomplete="off">
						 <label class="btn btn-light" for="분석">분석</label>
						 <input type="radio" class="btn-check"name="btnradio" id="설계" autocomplete="off"> 
						 <label class="btn btn-light" for="설계">설계</label> 
						 <input	type="radio" class="btn-check" name="btnradio" id="구현" autocomplete="off"> 
						 <label class="btn btn-light" for="구현">구현</label>
						 <input	type="radio" class="btn-check" name="btnradio" id="테스트" autocomplete="off"> 
						 <label class="btn btn-light" for="테스트">테스트</label>
					</div>
				</div>
		
				<div id="#item-4" class="d-flex comp_tit">
					업무 분류
					<div class="m-select">
						<select class="form-select" aria-label="업무분류"
							title="업무분류" id="si" onchange="selectSi()">
							<option selected>선택하세요</option>
							<option value="1">회의록</option>
							<option value="2">요구분석서</option>
							<option value="3">최종보고서</option>
						</select>
					</div>
				</div>

				<div  id="#item-5" class="comp_tit">업무 수행 기간
					<div style="display: flex;">
						<span>시작일 <input type="date" class="form-control"
							id="startDate" onchange="startDateCheck()" style="width: 150px;">
						</span>
						
						<span>종료일 <input type="date" class="form-control"
							id="endDate" onchange="endDateCheck()" style="width: 150px;">
						</span>
					</div>
		
				</div>

				<br> <br>
		
				<div  id="#item-6" class="d-flex comp_tit">
		        	담당자
					<div class="m-select">
						<select class="form-select" aria-label="담당자"
							title="담당자" id="si" onchange="selectSi()">
							<option selected>선택하세요</option>
							<option value="1">문정환</option>
							<option value="2">박나영</option>
							<option value="3">엄재용</option>
						</select>
					</div>
				</div>
                	
				<br><br><br>
				<div id="#item-7" class="comp_tit ">첨부파일 
					<div class="m-file">
						<label for="formFile" class="form-label">file</label> <input
							class="form-control" type="file" id="formFile">
					</div>
				</div>
			
				<br><br>

		
		
		
				<button class="btn btn-primary" type="submit">제출</button>
				<a href="/IT_MeetUp/Content/MeetGroup/Workmanage.jsp"><input type="button" class= "btn btn-info"  value="취소"/></a> 
				
		
		</form>

		
      </div>
      </div>
      </div>
    
    </div>
      <!-- 푸터영역 -->
        <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div>
        <!-- //푸터영역 -->
    </section>
    
    
   


    
   
</body>
</html>