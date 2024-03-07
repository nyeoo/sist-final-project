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
	<link rel="stylesheet" href="<%=cp %>/asset/css/style.css">
<style type="text/css">

	span {font-weight: bold; }
</style>
<!-- 컴포넌트 전용 css -->
	<link rel="stylesheet" href="<%=cp %>/asset/css/component.css">
<!-- script -->
	<script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp %>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp %>/asset/js/common.js"></script>
	<script type="text/javascript">

	$(document).ready(function()
	{
	
		// 기술 체크할떄마다 span 구역에 나오게 함수
		$(".skil").change(function() {
			var skilArea = $("#skilArea"); 			  // div 영역 가져오기 
			var skillName = $(this).attr("id") 		  // 기술이름가져오기
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
               <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" tabindex="0">
                     <div class="row">
           			 <!-- 희망기술 -->
                                <div id="item-2-3 hopeskill" class="col-12">
                                    <p class="h5">희망기술</p>
                                    <div class="skill-box">
                                        <nav>
                                            <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist"> 
                                                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" 
                                                	data-bs-target="#nav-skill01" type="button"
                                                    role="tab" aria-controls="nav-contact"
                                                    aria-selected="true">프론트</button>
                                                <button class="nav-link" id=av-profile-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-skill02" type="button" role="tab"
                                                    aria-controls="nav-contact" aria-selected="false">백엔드</button>
                                                <button class="nav-link" id="nav-skill03-tab" data-bs-toggle="tab" 
                                                	data-bs-target="#nav-skill03" type="button" role="tab"
                                                    aria-controls="nav-contact" aria-selected="false">기획, 디자인,
                                                    개발툴</button>
                                            </div>
                                        </nav>
											<div class="tab-content" id="nav-tabContent">
											<div class="tab-pane fade show active" id="nav-skill01" role="skill01" aria-labelledby="nav-skill01-tab">
												<ul class="skill-check">
													<!-- ico_html5_01 -->
													<li>
														<div class="form-check skill-item ico_html5_01">
															<input class="form-check-input skil" type="checkbox" value="html5" id="html5"> <label class="form-check-label"> html5 </label>
														</div>
													</li>
													<!-- ico_css_01 -->
													<li>
														<div class="form-check skill-item ico_css_01">
															<input class="form-check-input skil" type="checkbox" value="css" id="css"> <label class="form-check-label"> css </label>
														</div>
													</li>
													<!-- ico_Javascript_01 -->
													<li>
														<div class="form-check skill-item ico_Javascript_01">
															<input class="form-check-input skil" type="checkbox" value="Javascript" id="Javascript"> <label class="form-check-label"> Javascript </label>
														</div>
													</li>
													<!-- ico_TypeScript -->
													<li>
														<div class="form-check skill-item ico_TypeScript">
															<input class="form-check-input skil" type="checkbox" value="TypeScript" id="TypeScript"> <label class="form-check-label"> TypeScript </label>
														</div>
													</li>
													<!-- ico_React -->
													<li>
														<div class="form-check skill-item ico_React">
															<input class="form-check-input skil" type="checkbox" value="React" id="React"> <label class="form-check-label"> React </label>
														</div>
													</li>
													<!-- ico_Vue -->
													<li>
														<div class="form-check skill-item ico_Vue">
															<input class="form-check-input skil" type="checkbox" value="Vue" id="Vue"> <label class="form-check-label"> Vue </label>
														</div>
													</li>
													<!-- ico_Svelte -->
													<li>
														<div class="form-check skill-item ico_Svelte">
															<input class="form-check-input skil" type="checkbox" value="Svelte" id="Svelte"> <label class="form-check-label"> Svelte </label>
														</div>
													</li>
													<!-- ico_Nextjs -->
													<li>
														<div class="form-check skill-item ico_Nextjs">
															<input class="form-check-input skil" type="checkbox" value="Nextjs" id="Nextjs"> <label class="form-check-label"> Nextjs </label>
														</div>
													</li>

												</ul>

											</div>
											<div class="tab-pane fade" id="nav-skill02" role="skill02" aria-labelledby="nav-skill02-tab">
												<ul class="skill-check">

													<!-- ico_ruby -->
													<li>
														<div class="form-check skill-item ico_ruby">
															<input class="form-check-input skil" type="checkbox" value="ruby" id="ruby"> <label class="form-check-label"> ruby </label>
														</div>
													</li>
													<!-- ico_Java_01 -->
													<li>
														<div class="form-check skill-item ico_Java_01">
															<input class="form-check-input skil" type="checkbox" value="Svelte" id="Svelte"> <label class="form-check-label"> Java </label>
														</div>
													</li>
													<!-- ico_jsp -->
													<li>
														<div class="form-check skill-item ico_jsp">
															<input class="form-check-input skil" type="checkbox" value="jsp" id="jsp"> <label class="form-check-label"> jsp </label>
														</div>
													</li>
													<!-- ico_python -->
													<li>
														<div class="form-check skill-item ico_python">
															<input class="form-check-input skil" type="checkbox" value="python" id="python"> <label class="form-check-label"> python </label>
														</div>
													</li>
													<!-- ico_C_plus -->
													<li>
														<div class="form-check skill-item ico_C_plus">
															<input class="form-check-input skil" type="checkbox" value="C_plus" id="C_plus"> <label class="form-check-label"> C_plus </label>
														</div>
													</li>
													<!-- ico_C_sharp -->
													<li>
														<div class="form-check skill-item ico_C_sharp">
															<input class="form-check-input skil" type="checkbox" value="C_sharp" id="C_sharp"> <label class="form-check-label"> C_sharp </label>
														</div>
													</li>
													<!-- ico_R -->
													<li>
														<div class="form-check skill-item ico_R">
															<input class="form-check-input skil" type="checkbox" value="R" id="R"> <label class="form-check-label"> R </label>
														</div>
													</li>
													<!-- ico_Oracle -->
													<li>
														<div class="form-check skill-item ico_Oracle">
															<input class="form-check-input skil" type="checkbox" value="Oracle" id="Oracle"> <label class="form-check-label"> Oracle </label>
														</div>
													</li>
													<!-- ico_MySQL -->
													<li>
														<div class="form-check skill-item ico_MySQL">
															<input class="form-check-input skil" type="checkbox" value="MySQL" id="MySQL"> <label class="form-check-label"> MySQL </label>
														</div>
													</li>
													<!-- ico_PHP -->
													<li>
														<div class="form-check skill-item ico_PHP">
															<input class="form-check-input skil" type="checkbox" value="PHP" id="PHP"> <label class="form-check-label"> PHP </label>
														</div>
													</li>
													<!-- ico_Nodejs -->
													<li>
														<div class="form-check skill-item ico_Nodejs">
															<input class="form-check-input skil" type="checkbox" value="Nodejs" id="Nodejs"> <label class="form-check-label"> Nodejs </label>
														</div>
													</li>
													<!-- ico_Spring -->
													<li>
														<div class="form-check skill-item ico_Spring">
															<input class="form-check-input skil" type="checkbox" value="Spring" id="Spring"> <label class="form-check-label"> Spring </label>
														</div>
													</li>
													<!-- ico_Jquery -->
													<li>
														<div class="form-check skill-item ico_Jquery">
															<input class="form-check-input skil" type="checkbox" value="Jquery" id="Jquery"> <label class="form-check-label"> Jquery </label>
														</div>
													</li>
													<!-- ico_Mybatis -->
													<li>
														<div class="form-check skill-item ico_Mybatis">
															<input class="form-check-input skil" type="checkbox" value="Mybatis" id="Mybatis"> <label class="form-check-label"> Mybatis </label>
														</div>
													</li>
													<!-- ico_Spring_Boot -->
													<li>
														<div class="form-check skill-item ico_Spring_Boot">
															<input class="form-check-input skil" type="checkbox" value="Spring_Boot" id="Spring_Boot"> <label class="form-check-label"> Spring_Boot </label>
														</div>
													</li>
													<!-- ico_Rust -->
													<li>
														<div class="form-check skill-item ico_Rust">
															<input class="form-check-input skil" type="checkbox" value="Rust" id="Rust"> <label class="form-check-label"> Rust </label>
														</div>
													</li>
													<!-- ico_scala -->
													<li>
														<div class="form-check skill-item ico_scala">
															<input class="form-check-input skil" type="checkbox" value="scala" id="scala"> <label class="form-check-label"> scala </label>
														</div>
													</li>
													<!-- ico_Kotlin -->
													<li>
														<div class="form-check skill-item ico_Kotlin">
															<input class="form-check-input skil" type="checkbox" value="Kotlin" id="Kotlin"> <label class="form-check-label"> Kotlin </label>
														</div>
													</li>
													<!-- ico_unity -->
													<li>
														<div class="form-check skill-item ico_unity">
															<input class="form-check-input skil" type="checkbox" value="unity" id="unity"> <label class="form-check-label"> unity </label>
														</div>
													</li>

												</ul>

											</div>
											<div class="tab-pane fade" id="nav-skill03" role="skill03" aria-labelledby="nav-skill03-tab">
												<ul class="skill-check">

													<!-- ico_powerMockup -->
													<li>
														<div class="form-check skill-item ico_powerMockup">
															<input class="form-check-input skil" type="checkbox" value="powerMockup" id="powerMockup"> <label class="form-check-label"> powerMockup </label>
														</div>
													</li>
													<!-- ico_protoNow -->
													<li>
														<div class="form-check skill-item ico_protoNow">
															<input class="form-check-input skil" type="checkbox" value="protoNow" id="protoNow"> <label class="form-check-label"> protoNow </label>
														</div>
													</li>
													<!-- ico_oven_01 -->
													<li>
														<div class="form-check skill-item ico_oven_01">
															<input class="form-check-input skil" type="checkbox" value="oven" id="oven"> <label class="form-check-label"> oven </label>
														</div>
													</li>
													<!-- ico_Sketch -->
													<li>
														<div class="form-check skill-item ico_Sketch">
															<input class="form-check-input skil" type="checkbox" value="Sketch" id="Sketch"> <label class="form-check-label"> Sketch </label>
														</div>
													</li>
													<!-- ico_zeplin -->
													<li>
														<div class="form-check skill-item ico_zeplin">
															<input class="form-check-input skil" type="checkbox" value="zeplin" id="zeplin"> <label class="form-check-label"> zeplin </label>
														</div>
													</li>
													<!-- ico_Figma -->
													<li>
														<div class="form-check skill-item ico_Figma">
															<input class="form-check-input skil" type="checkbox" value="Figma" id="Figma"> <label class="form-check-label"> Figma </label>
														</div>
													</li>
													<!-- ico_Axure_RP -->
													<li>
														<div class="form-check skill-item ico_Axure_RP">
															<input class="form-check-input skil" type="checkbox" value="Axure_RP" id="Axure_RP"> <label class="form-check-label"> Axure_RP </label>
														</div>
													</li>
													<!-- ico_Adobe_XD -->
													<li>
														<div class="form-check skill-item ico_Adobe_XD">
															<input class="form-check-input skil" type="checkbox" value="Adobe_XD" id="Adobe_XD"> <label class="form-check-label"> Adobe_XD </label>
														</div>
													</li>
													<!-- ico_Visual_Studio_Code -->
													<li>
														<div class="form-check skill-item ico_Visual_Studio_Code">
															<input class="form-check-input skil" type="checkbox" value="Visual_Studio_Code" id="Visual_Studio_Code"> <label class="form-check-label"> Visual_Studio_Code </label>
														</div>
													</li>
													<!-- ico_Visual_Studio -->
													<li>
														<div class="form-check skill-item ico_Visual_Studio">
															<input class="form-check-input skil" type="checkbox" value="Visual_Studio" id="Visual_Studio"> <label class="form-check-label"> Visual_Studio </label>
														</div>
													</li>
													<!-- ico_IntelliJ -->
													<li>
														<div class="form-check skill-item ico_IntelliJ">
															<input class="form-check-input skil" type="checkbox" value="IntelliJ" id="IntelliJ"> <label class="form-check-label"> IntelliJ </label>
														</div>
													</li>
													<!-- ico_Notepad -->
													<li>
														<div class="form-check skill-item ico_Notepad">
															<input class="form-check-input skil" type="checkbox" value="Notepad" id="Notepad"> <label class="form-check-label"> Notepad </label>
														</div>
													</li>
													<!-- ico_Vim -->
													<li>
														<div class="form-check skill-item ico_Vim">
															<input class="form-check-input skil" type="checkbox" value="Vim" id="Vim"> <label class="form-check-label"> Vim </label>
														</div>
													</li>
													<!-- ico_Android_Studio -->
													<li>
														<div class="form-check skill-item ico_Android_Studio">
															<input class="form-check-input skil" type="checkbox" value="Android_Studio" id="Android_Studio"> <label class="form-check-label"> Android_Studio </label>
														</div>
													</li>
													<!-- ico_PyCharm -->
													<li>
														<div class="form-check skill-item ico_PyCharm">
															<input class="form-check-input skil" type="checkbox" value="PyCharm" id="PyCharm"> <label class="form-check-label"> PyCharm </label>
														</div>
													</li>
													<!-- ico_Eclipse -->
													<li>
														<div class="form-check skill-item ico_Eclipse">
															<input class="form-check-input skil" type="checkbox" value="Eclipse" id="Eclipse"> <label class="form-check-label"> Eclipse </label>
														</div>
													</li>
													<!-- ico_Xcode -->
													<li>
														<div class="form-check skill-item ico_Xcode">
															<input class="form-check-input skil" type="checkbox" value="Xcode" id="Xcode"> <label class="form-check-label"> Xcode </label>
														</div>
													</li>

												</ul>
											</div>
										</div>
										</div>
                                </div> <!-- .hopeskill end -->
                                <!-- //희망기술 -->		
           						<br><br><br><br><br><br><br><br><br><br><br><br>
           						
           						<div style="text-align: center;">
	           						<div id="skilArea" style="border: 1px solid black; border-radius: 50px; width: 500px; text-align: center;"> <!-- 내가 체크한 기술 나오는 공간 -->
	                					<br>
	                				</div>
	                			</div>	
                				<br><br><br><br>
                				
                		    <!-- 버튼영역 -->
                          	<div class="btn-box">
                                <div class="btn-center">
                                  <button type="submit" class="btn btn-primary">모집 공고 올리기</button>
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