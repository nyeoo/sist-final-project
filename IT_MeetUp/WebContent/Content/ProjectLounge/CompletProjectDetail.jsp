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
  <title>CompleteProjectDetail.jsp</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">
  <link rel="stylesheet" href="../../asset/css/layout_bny.css">
  
  <!-- font-awesome -->
 <script src="https://kit.fontawesome.com/81ca059e0e.js" crossorigin="anonymous"></script>

</head>

<body>
  <div class="wrapper">

    <!-- 헤더영역 -->
    <c:import url="../Components/Header.jsp"></c:import>
    <!-- //헤더영역 -->

    <!-- 바디영역 -->
    <section class="m-body-area cp-body-section">
		<div class="container-xl">
			<span class="project-title">지역 기반의 거래로 안전하고 편리한 중고 물품 거래 서비스</span>
			<hr class="title-hr">
			<div class="intro-head">
					<!-- <span class="project-teamname">당근조아 Team</span> -->
					<div class="intro-detail">
						<div class="intro-imgbox">
							<img src="../../asset/images/sub/img_project.PNG" alt="웹 이미지" class="intro-img">
						</div>
						<div class="intro-detail-description">
							<p>국가원로자문회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 대통령은 내우·외환·천재·지변 또는
							중대한 재정·경제상의 위기에 있어서 국가의 안전보장 또는 공공의 안녕질서를 유지하기 위하여 긴급한 조치가 필요하고
							국회의 집회를 기다릴 여유가 없을 때에 한하여 최소한으로 필요한 재정·경제상의 처분을 하거나 이에 관하여 법률의
							효력을 가지는 명령을 발할 수 있다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다. 재의의 요구가
							있을 때에는 국회는 재의에 붙이고, 재적의원과반수의 출석과 출석의원 3분의 2 이상의 찬성으로 전과 같은 의결을 하면
							그 법률안은 법률로서 확정된다.</p>
						</div>
					</div>
				</div>
        	
      </div>
    </section>
    <!-- //바디영역 -->
	<!-- 콘텐츠 내용 -->
	<div class="main">
		<!-- end intro-head -->
		<div class="intro-body">
		<span class="team">TEAM ·</span>
		<span class="team-name">당근</span>
			<div class="intro-body-list member-intro">
				<span class="intro-title">팀원 소개</span>
				<hr>
				<ul class="d-flex job-list">
					<!-- 기획 -->
					<li class="d-flex job">
						<span class="tag bg-success job-tag">기획</span>
						<div class="d-flex member-box">
							<div class="d-flex member">
								<i class="fa-solid fa-crown crown"></i>
								<img src="../../asset/images/sub/img_profile.jpg" class="member-img" />
								<span class="nickname">닉네임이길면어떻</span>
							</div>
							<div class="d-flex member">
								<i class="fa-solid fa-circle-user no-profile"></i>
								<span class="nickname">닉네임</span>
							</div>
						</div>
					</li>
					<!-- 디자인 -->
					<li class="d-flex job">
					<span class="tag bg-danger job-tag">디자인</span>
					<div class="d-flex member-box">
							<div class="d-flex member">
								<i class="fa-solid fa-circle-user no-profile"></i>
								<span class="nickname">닉네임</span>
							</div>
						</div>
					</li>
					<!-- 프론트 -->
					<li class="d-flex job">
					<span class="tag bg-primary job-tag">프론트</span>
					<div class="d-flex member-box">
							<div class="d-flex member">
								<i class="fa-solid fa-circle-user no-profile"></i>
								<span class="nickname">닉네임</span>
							</div>
						</div>
					</li>
					<!-- 백엔드 -->
					<li class="d-flex job">
					<span class="tag bg-secondary job-tag">백</span>
					<div class="d-flex member-box">
							<div class="d-flex member none-event">
								<i class="fa-solid fa-circle-user no-profile no-eva"></i>
								<span class="nickname">평가안함</span>
							</div>
							<div class="d-flex member">
								<i class="fa-solid fa-circle-user no-profile"></i>
								<span class="nickname">닉네임</span>
							</div>
						</div>
					</li>						
				</ul>
			</div>
			<div class="intro-body-list progressbar">
				<span class="intro-title">진행 기간</span>
				<hr>
				<div class="progress-stacked progress-m">
							<div class="progress" role="progressbar"
								aria-label="Segment one" aria-valuenow="15" aria-valuemin="0"
								aria-valuemax="100" style="width: 15%">
								<div class="progress-bar">15%</div>
							</div>
							<div class="progress" role="progressbar"
								aria-label="Segment two" aria-valuenow="30" aria-valuemin="0"
								aria-valuemax="100" style="width: 30%">
								<div class="progress-bar bg-success">30%</div>
							</div>
							<div class="progress" role="progressbar"
								aria-label="Segment three" aria-valuenow="20"
								aria-valuemin="0" aria-valuemax="100" style="width: 20%">
								<div class="progress-bar bg-info">20%</div>
							</div>
						</div>
		</div>
		<div class="intro-body-list skill">
			<span class="intro-title">사용 스킬</span>
			<hr>
			<span class="tag">#CSS</span> <span class="tag">#Java</span> <span
				class="tag">#Javascript</span> <span class="tag">#Spring</span>
		</div>
		<div class="intro-body-list">
			<span class="intro-title">프로젝트 분석</span>
			<hr>
			<span>
			~ 8-2. 문서 제출 현황(정환 50%, 수경 10%, …) : 회의록, DB 설계, 최종개발 코드 산출물이 몇개씩
			나왔는지
			</span>
			<span>
			 8-3. 데이터 작성 현황(가장 많이 작성한 사람)
			</span>
			<span>
			8-4. 업무완료 현황(정환 10개, 수경 1개)
			</span>
			 9. 참여도 9-1. 회의에 가장 많이 참여한 사람 9-2. 월별 접속 현황(정환 20%, 수경 1%)

		</div>

	</div>
</div><!-- end main -->
    <!-- 푸터영역 -->
    <c:import url="../Components/Footer.jsp" ></c:import>
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