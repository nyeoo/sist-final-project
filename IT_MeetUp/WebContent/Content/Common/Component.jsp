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
<title>Component</title>
<meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
<meta name="title" content="IT MeetUp">
<meta name="author" content="Sist 2Team">
<meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

<!-- css -->
<link rel="stylesheet" href="../../asset/css/style.css">
<!-- 컴포넌트 전용 css -->
<link rel="stylesheet" href="../../asset/css/component.css">
</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">

				<!-- 컴포넌트 콘텐츠 영역 -->
				<div class="con_wrap py-5">
					<!-- 화면패턴 -->
					<div class="comp_box">
						<div class="comp_tit">화면패턴</div>

						<h2 class="comp_tit02">메인화면</h2>
						ㄴ<a href="" target="_blank"></a>

						<div class="comp_tit02">목록1(리스트형)</div>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/MyPage/S_ApplyManagement.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/MyPage/S_ApplyManagement.jsp</a>

						<h2 class="comp_tit02">목록3(그룹리스트형)</h2>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_GroupSetup.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_GroupSetup.jsp</a>

						<div class="comp_tit02">목록2(썸네일형)</div>
						ㄴ목록2+필터 참조

						<div class="comp_tit02">목록2+필터</div>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/ProjectLounge/S_PostList.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/ProjectLounge/S_PostList.jsp</a>

						<div class="comp_tit02">등록1(작성형)</div>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/WritePost/S_WritePost.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/WritePost/S_WritePost.jsp</a>

						<div class="comp_tit02">등록2(가입형)</div>
						ㄴ<a href="" target="_blank"></a>

						<div class="comp_tit02">등록3(그룹작성형)</div>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_WorkManage.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_WorkManage.jsp</a>

						<div class="comp_tit02">상세1</div>
						ㄴ<a href="" target="_blank"></a>

						<div class="comp_tit02">상세2(포폴)</div>
						ㄴ<a href="" target="_blank"></a>

						<div class="comp_tit02">로그인</div>
						ㄴ<a
							href="http://localhost:3306/IT_MeetUp/Content/Site/S_Login.jsp"
							target="_blank">http://localhost:3306/IT_MeetUp/Content/Site/S_Login.jsp</a>

						<div class="comp_tit02">팝업</div>
						ㄴ컴포넌트 참조

						<div class="comp_tit02">달력</div>
						ㄴ<a href="http://127.0.0.1:5501/Content/MeetGroup/S_Calendar.html"
							target="_blank">http://127.0.0.1:5501/Content/MeetGroup/S_Calendar.html</a>

						<div class="comp_tit02">일정 관리</div>
						ㄴ<a href="" target="_blank"></a>

						<div class="comp_tit02">그룹</div>
						ㄴ<a href="" target="_blank"></a>
					</div>


					<!-- ------------------------------------------------------------------------------------------ -->

					<!-- 로고 -->
					<div class="comp_box">
						<h2 class="comp_tit">로고</h2>

						<ul class="logo-box">
							<li><span class="rubik-puddles-regular">MeetUp</span></li>
							<li><span class="warnes-regular">MeetUp</span></li>
							<li><span class="rubik-spray">MeetUp</span></li>
							<li><span class="neonderthaw-regular">MeetUp</span></li>
							<li><span class="moirai-one-regular">MeetUp</span></li>
							<li><span class="kite-one-regular">MeetUp</span></li>
							<li><span class="borel-regular">MeetUp</span></li>
							<li><span class="kranky-regular">MeetUp</span></li>
							<li><span class="sail-regular">MeetUp</span></li>
							<li><span class="megrim-regular">MeetUp</span></li>
							<li><span class="bungee-shade-regular">MeetUp</span></li>
							<li><span class="oleo-script">MeetUp</span></li>
							<li><span class="italiana-regular">MeetUp</span></li>
							<li><span class="nixie-one-regular">MeetUp</span></li>
							<li><span class="average-regular">MeetUp</span></li>
							<li><span class="norican-regular">MeetUp</span></li>
							<li><span class="sigmar-one-regular">MeetUp</span></li>
							<li><span class="coming-soon-regular">MeetUp</span></li>
							<li><span class="fredericka-the great-regular">MeetUp</span></li>
							<li><span class="sofia-regular">MeetUp</span></li>
							<li><span class="silkscreen-regular">MeetUp</span></li>
							<li><span class="silkscreen-bold">MeetUp</span></li>
							<li><span class="carter-one-regular">MeetUp</span></li>
							<li><span class="fugaz-one-regular">MeetUp</span></li>
							<li><span class="playfair-display sc-black-italic">MeetUp</span></li>
							<li><span class="yeseva-one-regular">MeetUp</span></li>
							<li><span class="bangers-regular">MeetUp</span></li>
							<li><span class="pacifico-regular">MeetUp</span></li>
						</ul>
					</div>

					<!-- 타이틀 -->
					<div class="comp_box">
						<h2 class="comp_tit">타이틀</h2>

						<div class="bd-example m-0 border-0">
							<p class="display-1">Display 1</p>
							<p class="display-2">Display 2</p>
							<p class="display-3">Display 3</p>
							<p class="display-4">Display 4</p>
							<p class="display-5">Display 5</p>
							<p class="display-6">Display 6</p>
						</div>
						<div class="bd-example m-0 border-0">
							<p class="h1">Heading 1</p>
							<p class="h2">Heading 2</p>
							<p class="h3">Heading 3</p>
							<p class="h4">Heading 4</p>
							<p class="h5">Heading 5</p>
							<p class="h6">Heading 6</p>
						</div>
						<p>
							You can use the mark tag to
							<mark>highlight</mark>
							text.
						</p>
					</div>
					<!-- //타이틀 -->

					<!-- 인풋요소 -->
					<div class="comp_box">
						<h2 class="comp_tit">인풋요소</h2>

						<p class="comp_txt">
							<strong>* 체크박스</strong>
						</p>
						<div class="comp_flexbox">

							<!-- 기본 -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" value="" id="">
									Default checkbox
								</label>
							</div>

							<!-- checked -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" value="" id="" checked>
									Checked checkbox
								</label>
							</div>

							<!-- disabled -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" value="" id=""
									disabled> Disabled checkbox
								</label>
							</div>

							<!-- disabled checked -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="checkbox" value="" id="" checked
									disabled> Disabled checked checkbox
								</label>
							</div>

						</div>

						<p class="comp_txt">
							<strong>* 라디오 버튼</strong>
						</p>
						<div class="comp_flexbox">

							<!-- 기본 -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="radio01" id="">
									Default radio
								</label>
							</div>

							<!-- checked -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="radio01" id=""
									checked> Default checked radio
								</label>
							</div>

							<!-- disabled -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="radio01" id=""
									disabled> Disabled radio
								</label>
							</div>

							<!-- disabled checked -->
							<div class="form-check">
								<label class="form-check-label"> <input
									class="form-check-input" type="radio" name="" id="" checked
									disabled> Disabled checked radio
								</label>
							</div>

						</div>

						<div class="comp_tit02">혼합형 라디오 버튼</div>
						<div class="btn-group" role="group"
							aria-label="Basic radio toggle button group">
							<input type="radio" class="btn-check" name="btnradio"
								id="btnradio1" autocomplete="off" checked> <label
								class="btn btn-outline-primary" for="btnradio1">Radio 1</label>

							<input type="radio" class="btn-check" name="btnradio"
								id="btnradio2" autocomplete="off"> <label
								class="btn btn-outline-primary" for="btnradio2">Radio 2</label>

							<input type="radio" class="btn-check" name="btnradio"
								id="btnradio3" autocomplete="off"> <label
								class="btn btn-outline-primary" for="btnradio3">Radio 3</label>
						</div>

						<p class="comp_txt">
							<strong>* 셀렉트</strong>
						</p>
						<ul class="row">
							<li class="col-3">
								<!-- 기본 -->
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle01">
										<option selected>Open this select menu</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
							</li>
							<li class="col-3">
								<!-- disabled -->
								<div class="m-select">
									<select class="form-select" aria-label="Default select example"
										title="selectTitle02" disabled>
										<option selected>Open this select menu</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
							</li>
						</ul>


						<p class="comp_txt">
							<strong>* 인풋</strong>
						</p>
						<!-- valid / invalid -->
						<form class="row needs-validation" novalidate>
							<!-- 기본 -->
							<div class="col-3 m-input-box">
								<label for="validationCustom01" class="form-label">기본</label> <input
									type="text" class="form-control" id="validationCustom01"
									required>
								<div class="invalid-feedback">제목1을 입력해주세요.</div>
							</div>

							<!-- disabled -->
							<div class="col-3 m-input-box">
								<label for="validationCustom02" class="form-label">disabled</label>
								<input type="text" class="form-control" id="validationCustom02"
									required disabled>
								<div class="invalid-feedback">제목2을 입력해주세요.</div>
							</div>

							<!-- readonly -->
							<div class="col-3 m-input-box">
								<label for="validationCustom03" class="form-label">readonly</label>
								<input type="text" class="form-control" id="validationCustom03"
									required readonly>
								<div class="invalid-feedback">제목3을 입력해주세요.</div>
							</div>

							<!-- form-control-plaintext: 읽기전용 -->
							<div class="col-3 m-input-box">
								<label for="validationCustom04" class="form-label">읽기전용</label>
								<input type="text" class="form-control form-control-plaintext"
									id="validationCustom04" value="email@example.com" readonly>
							</div>

							<div class="col-12 mt-3">
								<button class="btn btn-primary" type="submit">Submit
									form</button>
							</div>
						</form>

						<p class="comp_txt">
							<strong>* textarea, file, color picker</strong>
						</p>
						<div class="row">
							<div class="col-4">
								<div class="m-textarea">
									<label for="exampleFormControlTextarea1" class="form-label">textarea제목</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3"></textarea>
								</div>
							</div>
							<div class="col-4">
								<!-- 단일 파일 업로드 -->
								<div class="m-file">
									<label for="formFile" class="form-label">file</label> <input
										class="form-control" type="file" id="formFile">
								</div>
								<!-- 멀티 파일 업로드 -->
								<!-- <div class="m-file">
                <label for="formFileMultiple" class="form-label">Multiple files input example</label>
                  <input class="form-control" type="file" id="formFileMultiple" multiple>
                </div> -->
							</div>
							<div class="col-4">
								<div class="m-picker">
									<label for="exampleColorInput" class="form-label">Color
										picker</label> <input type="color"
										class="form-control form-control-color" id="exampleColorInput"
										value="#563d7c" title="Choose your color">
								</div>

							</div>
						</div>

						<p class="comp_txt">
							<strong>* 달력</strong>
						</p>
						<div class="row">
							<div class="col-4">
								<div class="m-input-cal">
									<input type="text" class="form-control datepicker">
								</div>
							</div>
						</div>

						<div class="row range-datepicker">
							<div class="col-6 m-input-cal">
								<label for="date-from" class="form-label">시작 예정일</label> <input
									type="text" class="form-control date-from" id="date-from">
							</div>
							<div class="col-6 m-input-cal">
								<label for="date-to" class="form-label">종료 예정일</label> <input
									type="text" class="form-control date-to" id="date-to">
							</div>
						</div>

						<div class="datepicker calendar-datepicker"></div>

					</div>
					<!-- //인풋요소 -->

					<!-- 탭 -->
					<div class="comp_box">
						<h2 class="comp_tit">탭</h2>

						<div class="tab-box">
							<nav>
								<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
									role="tablist">
									<button class="nav-link active" id="nav-home-tab"
										data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
										role="tab" aria-controls="nav-home" aria-selected="true">Home</button>
									<button class="nav-link" id="nav-profile-tab"
										data-bs-toggle="tab" data-bs-target="#nav-profile"
										type="button" role="tab" aria-controls="nav-profile"
										aria-selected="false">Profile</button>
									<button class="nav-link" id="nav-contact-tab"
										data-bs-toggle="tab" data-bs-target="#nav-contact"
										type="button" role="tab" aria-controls="nav-contact"
										aria-selected="false">Contact</button>
								</div>
							</nav>
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-home"
									role="tabpanel" aria-labelledby="nav-home-tab">
									<p>
										This is some placeholder content the <strong>Home
											tab's</strong> associated content. Clicking another tab will toggle
										the visibility of this one for the next. The tab JavaScript
										swaps classes to control the content visibility and styling.
										You can use it with tabs, pills, and any other
										<code>.nav</code>
										-powered navigation.
									</p>
								</div>
								<div class="tab-pane fade" id="nav-profile" role="tabpanel"
									aria-labelledby="nav-profile-tab">
									<p>
										This is some placeholder content the <strong>Profile
											tab's</strong> associated content. Clicking another tab will toggle
										the visibility of this one for the next. The tab JavaScript
										swaps classes to control the content visibility and styling.
										You can use it with tabs, pills, and any other
										<code>.nav</code>
										-powered navigation.
									</p>
								</div>
								<div class="tab-pane fade" id="nav-contact" role="tabpanel"
									aria-labelledby="nav-contact-tab">
									<p>
										This is some placeholder content the <strong>Contact
											tab's</strong> associated content. Clicking another tab will toggle
										the visibility of this one for the next. The tab JavaScript
										swaps classes to control the content visibility and styling.
										You can use it with tabs, pills, and any other
										<code>.nav</code>
										-powered navigation.
									</p>
								</div>
							</div>
						</div>

					</div>
					<!-- 탭 -->

					<!-- 드롭다운 -->
					<div class="comp_box">
						<h2 class="comp_tit">드롭다운</h2>

						<div class="comp_tit02">기본</div>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								data-bs-toggle="dropdown" aria-expanded="false">
								Dropdown button</button>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul>
						</div>

						<div class="comp_tit02">폼 드롭다운</div>
						<div class="dropdown">
							<button type="button" class="btn btn-primary dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false"
								data-bs-auto-close="outside">Dropdown form</button>
							<form class="dropdown-menu p-4">
								<div class="mb-3">
									<label for="exampleDropdownFormEmail2" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleDropdownFormEmail2" placeholder="email@example.com">
								</div>
								<div class="mb-3">
									<label for="exampleDropdownFormPassword2" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleDropdownFormPassword2" placeholder="Password">
								</div>
								<div class="mb-3">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="dropdownCheck2"> <label class="form-check-label"
											for="dropdownCheck2"> Remember me </label>
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Sign in</button>
							</form>
						</div>
					</div>
					<!-- //드롭다운 -->

					<!-- 아코디언 -->
					<div class="comp_box">
						<h2 class="comp_tit">아코디언</h2>

						<div class="accordion" id="accordionExample">
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
										Accordion Item #1</button>
								</h2>
								<div id="collapseOne" class="accordion-collapse collapse show"
									data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<strong>This is the first item's accordion body.</strong> It
										is shown by default, until the collapse plugin adds the
										appropriate classes that we use to style each element. These
										classes control the overall appearance, as well as the showing
										and hiding via CSS transitions. You can modify any of this
										with custom CSS or overriding our default variables. It's also
										worth noting that just about any HTML can go within the
										<code>.accordion-body</code>
										, though the transition does limit overflow.
									</div>
								</div>
							</div>
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">
										Accordion Item #2</button>
								</h2>
								<div id="collapseTwo" class="accordion-collapse collapse"
									data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<strong>This is the second item's accordion body.</strong> It
										is hidden by default, until the collapse plugin adds the
										appropriate classes that we use to style each element. These
										classes control the overall appearance, as well as the showing
										and hiding via CSS transitions. You can modify any of this
										with custom CSS or overriding our default variables. It's also
										worth noting that just about any HTML can go within the
										<code>.accordion-body</code>
										, though the transition does limit overflow.
									</div>
								</div>
							</div>
							<div class="accordion-item">
								<h2 class="accordion-header">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseThree"
										aria-expanded="false" aria-controls="collapseThree">
										Accordion Item #3</button>
								</h2>
								<div id="collapseThree" class="accordion-collapse collapse"
									data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<strong>This is the third item's accordion body.</strong> It
										is hidden by default, until the collapse plugin adds the
										appropriate classes that we use to style each element. These
										classes control the overall appearance, as well as the showing
										and hiding via CSS transitions. You can modify any of this
										with custom CSS or overriding our default variables. It's also
										worth noting that just about any HTML can go within the
										<code>.accordion-body</code>
										, though the transition does limit overflow.
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //아코디언 -->

					<!-- 버튼 -->
					<div class="comp_box">
						<h2 class="comp_tit">버튼영역</h2>

						<ul>
							<li>
								<div class="comp_tit02">버튼 기본</div>
								<div class="btn-box">
									<div class="btn-center">
										<button type="button" class="btn btn-primary">Primary</button>
										<button type="button" class="btn btn-secondary">Secondary</button>
									</div>
								</div>
							</li>
							<li>
								<div class="comp_tit02">버튼 우측</div>
								<div class="btn-box">
									<div class="btn-right">
										<button type="button" class="btn btn-primary">Primary</button>
										<button type="button" class="btn btn-secondary">Secondary</button>
									</div>
								</div>
							</li>
							<li>
								<div class="comp_tit02">버튼 좌우</div>
								<div class="btn-box">
									<div class="btn-left">
										<button type="button" class="btn btn-primary">Primary</button>
										<button type="button" class="btn btn-secondary">Secondary</button>
									</div>
									<div class="btn-right">
										<button type="button" class="btn btn-primary">Primary</button>
										<button type="button" class="btn btn-secondary">Secondary</button>
									</div>
								</div>
							</li>
						</ul>
					</div>

					<!-- 버튼 -->
					<div class="comp_box">
						<h2 class="comp_tit">버튼</h2>

						<ul>
							<li>
								<!-- 버튼 기본 -->
								<div class="comp_tit02">버튼 기본</div>
								<button type="button" class="btn btn-primary">Primary</button>
								<button type="button" class="btn btn-secondary">Secondary</button>
								<button type="button" class="btn btn-success">Success</button>
								<button type="button" class="btn btn-danger">Danger</button>
								<button type="button" class="btn btn-warning">Warning</button>
								<button type="button" class="btn btn-info">Info</button>
								<button type="button" class="btn btn-light">Light</button>
								<button type="button" class="btn btn-dark">Dark</button>

								<button type="button" class="btn btn-link">Link</button>

							</li>
							<li>
								<!-- 버튼 비활성화 -->
								<div class="comp_tit02">버튼 비활성화</div>
								<button type="button" disabled class="btn btn-primary">Primary</button>
								<button type="button" disabled class="btn btn-secondary">Secondary</button>
								<button type="button" disabled class="btn btn-success">Success</button>
								<button type="button" disabled class="btn btn-danger">Danger</button>
								<button type="button" disabled class="btn btn-warning">Warning</button>
								<button type="button" disabled class="btn btn-info">Info</button>
								<button type="button" disabled class="btn btn-light">Light</button>
								<button type="button" disabled class="btn btn-dark">Dark</button>

								<button type="button" disabled class="btn btn-link">Link</button>

							</li>
							<li>
								<!-- a, buttton, input 의 버튼 -->
								<div class="comp_tit02">a, buttton, input 의 버튼</div> <a
								class="btn btn-primary" href="#" role="button">Link</a>
								<button class="btn btn-primary" type="submit">Button</button> <input
								class="btn btn-primary" type="button" value="Input"> <input
								class="btn btn-primary" type="submit" value="Submit"> <input
								class="btn btn-primary" type="reset" value="Reset">
							</li>
							<li>
								<!-- disabled: a, buttton, input 의 버튼 -->
								<div class="comp_tit02">'disabled'이 적용된 a, buttton, input
									의 버튼</div> <a class="btn btn-primary disabled" href="#" role="button">Link</a>
								<button class="btn btn-primary" disabled type="submit">Button</button>
								<input class="btn btn-primary" disabled type="button"
								value="Input"> <input class="btn btn-primary" disabled
								type="submit" value="Submit"> <input
								class="btn btn-primary" disabled type="reset" value="Reset">
							</li>
						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 팝업 -->
					<div class="comp_box">
						<h2 class="comp_tit">팝업</h2>

						<!-- Modal -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#exampleModal01">
							팝업01</button>

						<div class="modal fade" id="exampleModal01" tabindex="-1"
							aria-labelledby="exampleModal01Label" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<div class="modal-title fs-5 h1" id="exampleModal01Label">팝업01
											제목</div>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>

						<!-- Scrollable modal -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#exampleModal02">
							팝업02 - 스크롤형</button>

						<div class="modal fade" id="exampleModal02" tabindex="-1"
							aria-labelledby="exampleModal02Label" aria-hidden="true">
							<div class="modal-dialog modal-dialog-scrollable">
								<div class="modal-content">
									<div class="modal-header">
										<div class="modal-title fs-5 h1" id="exampleModal02Label">팝업02
											제목</div>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="modal-contents" style="height: 1000px;">
											...팝업02 - 스크롤형</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
										<button type="button" class="btn btn-primary">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- 팝업 -->

					<!--  라벨 -->
					<div class="comp_box">
						<h2 class="comp_tit">라벨</h2>
						<!-- .rounded-pill: 더 동그란 라벨 -->

						<div>
							<span class="badge text-bg-primary">Primary</span> <span
								class="badge text-bg-secondary">Secondary</span> <span
								class="badge text-bg-success">Success</span> <span
								class="badge text-bg-danger">Danger</span> <span
								class="badge text-bg-warning">Warning</span> <span
								class="badge text-bg-info">Info</span> <span
								class="badge text-bg-light">Light</span> <span
								class="badge text-bg-dark">Dark</span>
						</div>
					</div>
					<!-- // 라벨 -->

					<!-- 아이콘 -->
					<div class="comp_box">
						<h2 class="comp_tit">아이콘</h2>

						<div>
							<p class="comp_txt">
								<strong>* <a
									href="https://icons.getbootstrap.kr/#%EC%82%AC%EC%9A%A9%EB%B2%95"
									style="color: blue; text-decoration: underline;">부트스트랩 아이콘</a></strong>
							</p>

							<ul class="icon-box">
								<li>header.jsp : <i class="bi bi-bell-fill"></i> <i
									class="bi bi-exclamation-circle text-warning"></i> <i
									class="bi bi-x-circle text-danger"></i> <i
									class="bi bi-check-circle text-success"></i>
								</li>
								<li>PostList.jsp : <i class="bi bi-arrow-left-circle"></i>
									<i class="bi bi-arrow-right-circle"></i> <i class="bi bi-heart"></i><i
									class="bi bi-heart-fill"></i>
								</li>
								<li>ApplyManagement.jsp : <i class="bi bi-file-earmark"></i>
								</li>
								<li>WorkManage.jsp : <i class="bi bi-folder2-open"></i> <i
									class="bi bi-three-dots-vertical"></i> <i
									class="bi bi-pencil-square"></i> <i class="bi bi-trash3"></i>
								</li>
								<li>GroupHome.jsp : <i class="bi bi-person"></i>
								</li>
								<li>sidebar.jsp: <i class="bi bi-menu-button-wide"></i> <i
									class="bi bi-circle"></i> <i class="bi bi-grid"></i>
								</li>
								<li>WorkManage.jsp: <i class="bi bi-plus-circle-dotted"></i>
								</li>

							</ul>
						</div>
					</div>
					<!-- //아이콘 -->

					<!-- 페이지네이션 -->
					<div class="page-box">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
					<!-- //페이지네이션 -->

					<!-- 프로그래스바 -->
					<div class="comp_box">
						<h2 class="comp_tit">프로그래스바</h2>

						<ul>
							<li>
								<div class="comp_tit02">여러개를 하나의 프로그래스바로 노출</div>

								<div class="progress-stacked">
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
								</div> <br>

							</li>
							<li>
								<div class="comp_tit02">여러개의 프로그래스바 노출</div> <!-- progress-bar-animated: 움직이는 바 형태 -->
								<div class="progress" role="progressbar"
									aria-label="Success example" aria-valuenow="25"
									aria-valuemin="0" aria-valuemax="100">
									<div class="progress-bar progress-bar-animated bg-success"
										style="width: 25%">25%</div>
								</div>
								<div class="progress" role="progressbar"
									aria-label="Info example" aria-valuenow="50" aria-valuemin="0"
									aria-valuemax="100">
									<div class="progress-bar bg-info text-dark" style="width: 50%">50%</div>
								</div>
								<div class="progress" role="progressbar"
									aria-label="Warning example" aria-valuenow="75"
									aria-valuemin="0" aria-valuemax="100">
									<div class="progress-bar bg-warning text-dark"
										style="width: 75%">75%</div>
								</div>
								<div class="progress" role="progressbar"
									aria-label="Danger example" aria-valuenow="100"
									aria-valuemin="0" aria-valuemax="100">
									<div class="progress-bar bg-danger" style="width: 100%">100%</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- //프로그래스바 -->

					<!-- 로딩중 -->
					<div class="comp_box">
						<h2 class="comp_tit">로딩중, 툴팁</h2>

						<div class="row">
							<li class="col-3">
								<div class="comp_tit02">로딩중</div>
								<div class="spinner-border text-primary" role="status">
									<span class="visually-hidden">Loading...</span>
								</div>
							</li>
							<li class="col-3">
								<div class="comp_tit02">툴팁</div>
								<button type="button" class="btn btn-secondary"
									data-bs-toggle="tooltip" data-bs-placement="top"
									data-bs-title="툴팁 내용">Tooltip on top</button>
							</li>
							<li class="col-3"><a class="icon-link icon-link-hover"
								style="-bs-link-hover-color-rgb: 25, 135, 84;" href="#">
									Icon link <i class="bi bi-arrow-right"></i>
							</a></li>
						</div>
					</div>
					<!-- //로딩중 -->



				</div>
				<!-- //컴포넌트 콘텐츠 영역 -->

			</div>
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
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