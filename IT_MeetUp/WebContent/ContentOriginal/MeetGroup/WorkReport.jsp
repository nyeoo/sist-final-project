<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<div class="modal-body">

	<div id="#newItem-1" class="comp_tit">
		제목(주제) <input type="text" class="form-control" id="title"
			required="required" style="width: 450px;">
	</div>
	<div id="#newItem-2" class="comp_tit">
		내용
		<textarea class="form-control" id="content" rows="3"
			style="width: 450px;" required="required"></textarea>
	</div>
	<br>
	<hr>
	<div id="#newItem-3" class="comp_tit">
		업무 수행 기간
		<div style="display: flex;">
			<span>시작일 <input type="date" class="form-control"
				id="startDate" onchange="startDateCheck()" style="width: 150px;">
			</span> <span>종료일 <input type="date" class="form-control"
				id="endDate" onchange="endDateCheck()" style="width: 150px;">
			</span>
		</div>
	</div>
	<br>
	<hr>
	<div id="#newItem-4" class="dropdown skill-dropdown ">
		<div class=" comp_tit">사용 스킬</div>
		<nav id="skilLIst">
			<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-front-tab"
					data-bs-toggle="tab" data-bs-target="#nav-front" type="button"
					role="tab" aria-controls="nav-front" aria-selected="true">프론트</button>
				<button class="nav-link" id="av-back-tab" data-bs-toggle="tab"
					data-bs-target="#nav-back" type="button" role="tab"
					aria-controls="nav-back" aria-selected="false">백엔드</button>
				<button class="nav-link" id="av-tool-tab" data-bs-toggle="tab"
					data-bs-target="#nav-tool" type="button" role="tab"
					aria-controls="nav-tool" aria-selected="false">기획, 디자인,
					개발툴</button>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-front" role="skill01"
				aria-labelledby="nav-front-tab">
				<ul class="skill-check">
					<li><input class="btn-check skil" type="checkbox" value=""
						id="html" autocomplete="off"> <label class="btn btn-light"
						for="html"> HTML5 </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="css" autocomplete="off"> <label class="btn btn-light"
						for="css" id="csslabel"> CSS <!--  <img alt="CSS" src="../../asset/images/skill/ico_css.png"> -->
					</label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="javasSript" autocomplete="off"> <label
						class="btn btn-light" for="javasSript"> JavaScript </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="typeScript" autocomplete="off"> <label
						class="btn btn-light" for="typeScript"> TypeScript </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="react" autocomplete="off"> <label
						class="btn btn-light" for="react"> React </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="vue" autocomplete="off"> <label class="btn btn-light"
						for="vue"> Vue </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="svelte" autocomplete="off"> <label
						class="btn btn-light" for="svelte"> Svelte </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="next.js" autocomplete="off"> <label
						class="btn btn-light" for="next.js"> Next.js </label></li>
				</ul>
			</div>
			<div class="tab-pane fade" id="nav-back" role="skill02"
				aria-labelledby="nav-back-tab">
				<ul class="skill-check">
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Ruby" autocomplete="off"> <label
						class="btn btn-outline-primary" for="Ruby"> Ruby </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="java" autocomplete="off"> <label
						class="btn btn-outline-dark" for="java"> JAVA </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="jsp" autocomplete="off"> <label
						class="btn btn-outline-light" for="jsp"> JSP </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Python" autocomplete="off"> <label
						class="btn btn-outline-info" for="Python"> Python </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="C#"> <label class="btn btn-outline-warning" for="C#">
							C# </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="C++"> <label class="btn btn-outline-danger" for="C++">
							C++ </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="C"> <label class="btn btn-outline-success" for="C">
							C </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="ORACLE"> <label class="btn btn-outline-secondary"
						for="ORACLE"> ORACLE </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="MySQL"> <label class="btn btn-success" for="MySQL">
							MySQL </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="React"> <label class="btn btn-danger" for="React">
							React </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="PHP"> <label class="btn btn-info" for="PHP">
							PHP </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Node.js"> <label class="btn btn-warning" for="Node.js">
							Node.js </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Spring"> <label class="btn btn-warning" for="Spring">
							Spring </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Jquery"> <label class="btn btn-warning" for="Jquery">
							Jquery </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Mybatis"> <label class="btn btn-warning" for="Mybatis">
							Mybatis </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Javascript"> <label class="btn btn-dark"
						for="Javascript"> Javascript </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Spring Boot"> <label class="btn btn-dark"
						for="Spring Boot"> Spring Boot </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Rust"> <label class="btn btn-dark" for="Rust">
							Rust </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Scala"> <label class="btn btn-dark" for="Scala">
							Scala </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Kotlin"> <label class="btn btn-dark" for="Kotlin">
							Kotlin </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Unity"> <label class="btn btn-dark" for="Unity">
							Unity </label></li>
				</ul>
			</div>
			<div class="tab-pane fade" id="nav-tool" role="skill03"
				aria-labelledby="nav-tool-tab">
				<ul class="skill-check">
					<li><input class="btn-check skil" type="checkbox" value=""
						id="power"> <label class="btn btn-outline-primary"
						for="power"> 파워목업 </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="naver"> <label class="btn btn-outline-primary"
						for="naver"> 네이버 프로토 나우 </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="kakao"> <label class="btn btn-outline-primary"
						for="kakao"> 카카오 오븐 </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Sketch"> <label class="btn btn-outline-primary"
						for="Sketch"> Sketch </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Zeplin"> <label class="btn btn-outline-primary"
						for="Zeplin"> Zeplin </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id=" Axure RP"> <label class="btn btn-outline-primary"
						for=" Axure RP"> Axure RP </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id=" Adobe XD"> <label class="btn btn-outline-primary"
						for=" Adobe XD"> Adobe XD </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id=" VSCode"> <label class="btn btn-outline-primary"
						for=" VSCode"> Visual Studio Code </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="VS"> <label class="btn btn-outline-primary" for="VS">
							Visual Studio </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="IntelliJ"> <label class="btn btn-outline-primary"
						for="IntelliJ"> IntelliJ </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id=" Notepad++"> <label class="btn btn-outline-primary"
						for=" Notepad++"> Notepad++ </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id=" Vim"> <label class="btn btn-outline-primary"
						for=" Vim"> Vim </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Android Studio"> <label
						class="btn btn-outline-primary" for="Android Studio">
							Android Studio </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="PyCharm"> <label class="btn btn-outline-primary"
						for="PyCharm"> PyCharm </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Eclipse"> <label class="btn btn-outline-primary"
						for="Eclipse"> Eclipse </label></li>
					<li><input class="btn-check skil" type="checkbox" value=""
						id="Xcode"> <label class="btn btn-outline-primary"
						for="Xcode"> Xcode </label></li>
				</ul>
			</div>
		</div>

	</div>


	<div id="skilArea"
		style="border: 2px solid black; border-radius: 30px; width: 300px;">
		<!-- 내가 체크한 기술 나오는 공간 -->
		<br> <br>
	</div>
	<br>
	<hr>
	<div id="#newItem-5" class="comp_tit ">
		첨부파일
		<div class="m-file">
			<label for="formFile" class="form-label">file</label> <input
				class="form-control" type="file" id="formFile">
		</div>
	</div>


</div>