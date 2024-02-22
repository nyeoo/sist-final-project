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
  <title>모집공고 작성(희망기술) </title>
<!-- css -->
	<link rel="stylesheet" href="../../asset/css/style.css">
<style type="text/css">

	span {font-weight: bold; }
</style>
<!-- 컴포넌트 전용 css -->
	<link rel="stylesheet" href="../../asset/css/component.css">
<!-- script -->
	<script src="../../asset/js/jquery-3.5.1-min.js"></script>
	<script src="../../asset/js/jquery-ui.js"></script>
	<script src="../../asset/js/bootstrap.bundle.min.js"></script>
	<script src="../../asset/js/common.js"></script>
	<script type="text/javascript">

	$(document).ready(function()
	{
	
		// 기술 체크할떄마다 span 구역에 나오게 함수
		$(".skil").change(function() {
			var skilArea = $("#skilArea"); 			  // div 영역 가져오기 
			var skillName = $(this).attr("id") // 기술이름가져오기
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
</head>
<body>

<div class="wrapper">
	<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
	<!-- //헤더영역 -->
	
	<!-- 바디영역 -->
	<section class="m-body-area">
    <div class="container-xl">
	
		<!-- 작성영역 -->
            <div class="row write-area">
                <div class="col-12 col-sm-4 col-lg-3 write-nav">
                    <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
                        <nav class="nav nav-pills flex-column write-nav-con">
                            <a class="nav-link" href="#date-1">
                                <p class="h4">희망 기술 </p> 
                            </a>
                       </nav>
                    </nav>
               </div>
           
                  
                            
           <div class="col-12 col-sm-8 col-lg-9 write-content">
               <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                            class="scrollspy-example-2" tabindex="0">
                     <div class="row">
           			 <!-- 희망기술 -->
                                <div id="item-2-3" class="col-12">
                                    <p class="h5">희망기술</p>
                                    <div class="skill-box">
                                        <nav>
                                            <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                                                <button class="nav-link active" id="nav-home-tab"
                                                    data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
                                                    role="tab" aria-controls="nav-home"
                                                    aria-selected="true">프론트</button>
                                                <button class="nav-link" id=av-profile-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-profile" type="button" role="tab"
                                                    aria-controls="nav-profile" aria-selected="false">백엔드</button>
                                                <button class="nav-link" id자인av-contact-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-contact" type="button" role="tab"
                                                    aria-controls="nav-contact" aria-selected="false">기획, 디자인,
                                                    개발툴</button>
                                            </div>
                                        </nav>
											<div class="tab-content" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-home"
													role="skill01" aria-labelledby="nav-home-tab">
													<ul class="skill-check">
														<li><input class="btn-check skil" type="checkbox"
															value="HTML5" id="html" autocomplete="off"> <label
															class="btn btn-light" for="html"> HTML5 </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="CSS" id="css" autocomplete="off"> <label
															class="btn btn-light" for="css" id="csslabel">
																CSS 
														</label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="JavaScript" id="javasSript" autocomplete="off"> <label
															class="btn btn-light" for="javasSript">
																JavaScript </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="TypeScript" id="typeScript" autocomplete="off"> <label
															class="btn btn-light" for="typeScript">
																TypeScript </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="React" id="react" autocomplete="off"> <label
															class="btn btn-light" for="react"> React </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Vue" id="vue" autocomplete="off"> <label
															class="btn btn-light" for="vue"> Vue </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Svelte" id="svelte" autocomplete="off"> <label
															class="btn btn-light" for="svelte"> Svelte </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Next.js" id="next.js" autocomplete="off"> <label
															class="btn btn-light" for="next.js"> Next.js </label></li>
													</ul>
												</div>
												<div class="tab-pane fade" id="nav-profile" role="skill02"
													aria-labelledby="nav-profile-tab">
													<ul class="skill-check">
														<li><input class="btn-check skil" type="checkbox"
															value="Ruby" id="Ruby" autocomplete="off"> <label
															class="btn btn-outline-primary" for="Ruby"> Ruby
														</label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="JAVA" id="java" autocomplete="off"> <label
															class="btn btn-outline-dark" for="java"> JAVA </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="JSP" id="jsp" autocomplete="off"> <label
															class="btn btn-outline-light" for="jsp"> JSP </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Python" id="Python" autocomplete="off"> <label
															class="btn btn-outline-info" for="Python"> Python
														</label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="C#" id="C#"> <label
															class="btn btn-outline-warning" for="C#"> C# </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="C++" id="C++"> <label
															class="btn btn-outline-danger" for="C++"> C++ </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="C" id="C"> <label
															class="btn btn-outline-success" for="C"> C </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="ORACLE" id="ORACLE"> <label
															class="btn btn-outline-secondary" for="ORACLE">
																ORACLE </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="MySQL" id="MySQL"> <label
															class="btn btn-success" for="MySQL"> MySQL </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="React" id="React"> <label
															class="btn btn-danger" for="React"> React </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="" id="PHP"> <label class="btn btn-info"
															for="PHP"> PHP </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Node.js" id="Node.js"> <label
															class="btn btn-warning" for="Node.js"> Node.js </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Spring" id="Spring"> <label
															class="btn btn-warning" for="Spring"> Spring </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Jquery" id="Jquery"> <label
															class="btn btn-warning" for="Jquery"> Jquery </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Mybatis" id="Mybatis"> <label
															class="btn btn-warning" for="Mybatis"> Mybatis </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Javascript" id="Javascript"> <label
															class="btn btn-dark" for="Javascript"> Javascript
														</label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Spring_Boot" id="Spring Boot"> <label
															class="btn btn-dark" for="Spring Boot"> Spring
																Boot </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Rust" id="Rust"> <label class="btn btn-dark"
															for="Rust"> Rust </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Scala" id="Scala"> <label class="btn btn-dark"
															for="Scala"> Scala </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Kotlin" id="Kotlin"> <label class="btn btn-dark"
															for="Kotlin"> Kotlin </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Unity" id="Unity"> <label class="btn btn-dark"
															for="Unity"> Unity </label></li>
													</ul>
												</div>
												<div class="tab-pane fade" id="nav-contact" role="skill03"
													aria-labelledby="nav-contact-tab">
													<ul class="skill-check">
														<li><input class="btn-check skil" type="checkbox"
															value="파워목업" id="power"> <label
															class="btn btn-outline-primary" for="power"> 파워목업
														</label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="네이버 프로토 나우" id="naver"> <label
															class="btn btn-outline-primary" for="naver"> 네이버
																프로토 나우 </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="카카오 오븐" id="kakao"> <label
															class="btn btn-outline-primary" for="kakao"> 카카오
																오븐 </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Sketch" id="Sketch"> <label
															class="btn btn-outline-primary" for="Sketch">
																Sketch </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Zeplin" id="Zeplin"> <label
															class="btn btn-outline-primary" for="Zeplin">
																Zeplin </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Axure RP" id=" Axure RP"> <label
															class="btn btn-outline-primary" for=" Axure RP">
																Axure RP </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Adobe XD" id=" Adobe XD"> <label
															class="btn btn-outline-primary" for=" Adobe XD">
																Adobe XD </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Visual Studio Code" id=" VSCode"> <label
															class="btn btn-outline-primary" for=" VSCode">
																Visual Studio Code </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Visual Studio" id="VS"> <label
															class="btn btn-outline-primary" for="VS"> Visual
																Studio </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="IntelliJ" id="IntelliJ"> <label
															class="btn btn-outline-primary" for="IntelliJ">
																IntelliJ </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Notepad++" id=" Notepad++"> <label
															class="btn btn-outline-primary" for=" Notepad++">
																Notepad++ </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Vim" id=" Vim"> <label
															class="btn btn-outline-primary" for=" Vim"> Vim </label>
														</li>
														<li><input class="btn-check skil" type="checkbox"
															value="Android Studio" id="Android Studio"> <label
															class="btn btn-outline-primary" for="Android Studio">
																Android Studio </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="PyCharm" id="PyCharm"> <label
															class="btn btn-outline-primary" for="PyCharm">
																PyCharm </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Eclipse" id="Eclipse"> <label
															class="btn btn-outline-primary" for="Eclipse">
																Eclipse </label></li>
														<li><input class="btn-check skil" type="checkbox"
															value="Xcode" id="Xcode"> <label
															class="btn btn-outline-primary" for="Xcode">
																Xcode </label></li>
													</ul>
												</div>

											</div>
										</div>
                                </div>
                                <!-- //희망기술 -->		
           						<br><br><br><br><br><br><br><br><br><br><br><br>
	           						<div id="skilArea" style="border: 1px solid black; border-radius: 50px; width: 500px; text-align: center;"> <!-- 내가 체크한 기술 나오는 공간 -->
	                					<br>
	                				</div>
                				<br><br><br><br>
                				
                		    <!-- 버튼영역 -->
                          	<div class="btn-box">
                                <div class="btn-center">
                                  <button type="submit" class="btn btn-primary">다음</button>
                                </div>
                            </div>
                            <!-- //버튼영역 -->
                     </div>
                     
               </div>
           </div>
                            
	 </div>
	    	
	</div>
	</section>
	<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
	<!-- //푸터영역 -->
</div> <!-- .wrapper End -->
</body>
</html>