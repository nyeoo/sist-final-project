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
    <title>모집공고 상세보기</title>
    <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
    <meta name="title" content="IT MeetUp">
    <meta name="author" content="Sist 2Team">
    <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

    <!-- css -->
    <link rel="stylesheet" href="../../asset/css/style.css">

</head>

<body>
    <div class="wrapper">

        <!-- 헤더영역 -->
        <div role="header" data-include="../Components/Header.jsp" class="sticky-top"></div>
        <!-- //헤더영역 -->

        <!-- 바디영역 -->
        <section class="m-body-area">
            <div class="container-xl">

                <div class="content_tit">
                    <p class="h3">모집공고 상세보기</p>
                    <!-- 브레드크럼블 -->
                    <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
                    <!-- //브레드크럼블 -->
                </div>

                <!-- 작성영역 -->
                <div class="row write-area">
                    <div class="col-12 col-sm-4 col-lg-3 write-nav">
                        <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
                            <nav class="nav nav-pills flex-column write-nav-con">
                                <a class="nav-link" href="#item-1">
                                    <p class="h4">모집 내용</p>
                                </a>
                                <nav class="nav nav-pills flex-column">
                                    <a class="nav-link ms-3 my-1" href="#item-1-1">
                                        <p class="h5">제목</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-1-2">
                                        <p class="h5">내용</p>
                                    </a>
                                </nav>
                                <a class="nav-link" href="#item-2">
                                    <p class="h4">모집 상세내용</p>
                                </a>
                                <nav class="nav nav-pills flex-column">
                                    <a class="nav-link ms-3 my-1" href="#item-2-1">
                                        <p class="h5">일정</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-2-2">
                                        <p class="h5">모집인원</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-2-3">
                                        <p class="h5">희망기술</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-2-4">
                                        <p class="h5">선호지역</p>
                                    </a>
                                    <a class="nav-link ms-3 my-1" href="#item-2-5">
                                        <p class="h5">모임방식</p>
                                    </a>
                                </nav>
                            </nav>
                        </nav>
                    </div>

                    <div class="col-12 col-sm-8 col-lg-9 write-content">
                        <form action="">
                            <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true"
                                class="scrollspy-example-2" tabindex="0">

                                <div class="row">
                                    <!-- 모집내용 -->
                                    <div id="item-1" class="col-12">
                                        <p class="h4">모집 내용</p> 
                                        
                                        <!-- 신고버튼 시작 -->
                                        <div style="text-align: right;"> <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#exampleModal01" >  <i class="bi bi-emoji-angry"></i>  </button></div>
										<div class="modal fade" id="exampleModal01" tabindex="-1"
											aria-labelledby="exampleModal01Label" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
													<div class="modal-header">
														<h1 class="modal-title fs-5" id="exampleModal01Label">신고 사유</h1>
															<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
															<select class="form-select" aria-label=""
															title="" id="singo" >
															<option selected>신고샤유</option>
															<option value="1">부적절한 활동</option>
															<option value="2">욕설/비방</option>
															<option value="3">부적절한 이름 사용</option>
															<option value="4">유해정보</option>
															<option value="5">광고 및 상업성 홍보</option>
															<option value="6">비인가 프로그램 유포</option>
															<option value="7">허위이력</option>
															<option value="8">도용</option> 
														</select>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"	data-bs-dismiss="modal">Close</button>
														<button type="button" class="btn btn-danger" data-bs-dismiss="modal" id="singo">신고하기</button>
													</div>
												</div>
											</div>
										</div> <!-- 신고버튼끝 -->
									</div>
                                    <!-- //모집내용 -->
                                    <!-- 제목 -->
                                    <div id="item-1-1" class="col-12">
                                        <div class="m-input-box">
                                            <label for="writePost01" class="form-label">
                                                <p class="h5">제목</p>
                                            </label>
                                            <input type="text" class="form-control" id="writePost01" readonly="readonly" value="모집 제목입니다."> 
                                            
                                        </div>
                                    </div>
                                    <!-- //제목 -->
                                    <!-- 내용 -->
                                    <div id="item-1-2" class="col-12">
                                        <div class="m-textarea">
                                            <label for="exampleFormControlTextarea1" class="form-label">
                                                <p class="h5">내용</p>
                                            </label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" readonly="readonly" >모집 내용입니다.</textarea>
                                        </div>
                                    </div>
                                    <!-- //내용 -->
                                    <br>
                                    <!-- 모집 세부내용 -->
                                    <div id="item-2" class="col-12">
                                        <p class="h4">모집 상세내용</p>
                                    </div>
                                    <!-- //모집 필요사항 -->
                                    <!-- //일정 -->
                                    <div id="item-2-1" class="col-12">
                                        <p class="h5">일정</p>
                                        <div class="row range-datepicker">
                                            <div class="col-6 m-input-cal">
                                                <label for="date-from" class="form-label">시작 예정일</label>
                                                <input type="text" class="form-control date-from" id="date-from">
                                            </div>
                                            <div class="col-6 m-input-cal">
                                                <label for="date-to" class="form-label">종료 예정일</label>
                                                <input type="text" class="form-control date-to" id="date-to">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //일정 -->
                                    <!-- 모집인원 -->
                                    <div id="item-2-2" class="col-12">
                                        <p class="h5">모집인원</p>
                                        <div class="row">
                                            <div class="col-2 m-select">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="프론트" style="width: 150px;">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="백엔드" style="width: 150px;">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="디자인" style="width: 150px;">
                                            </div>
                                            <div class="col-5 m-select">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="2명" style="width: 50px;">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="3명" style="width: 50px;">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="1명" style="width: 50px;">
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <!-- //모집인원 -->
                                    <!-- 희망기술 -->
                                    <div id="item-2-3" class="col-12">
                                        <p class="h5">기술 / 언어</p>
                                        <div class="skill-box">
											
											<div class="tab-content" id="nav-tabContent">
                                                <div class="tab-pane fade show active" id="nav-home" role="skill01"
                                                    aria-labelledby="nav-home-tab">
                                                    <ul class="skill-check">
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    HTML
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    JavaScript
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    CSS
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="form-check skill-item">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        value="" id="">
                                                                    Java
                                                                </label>
                                                            </div>
                                                        </li>
                                                     </ul>
                                                
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //희망기술 -->
                                    <!-- 선호지역 -->
                                    <div id="item-2-4" class="col-12">
                                        <p class="h5">선호지역</p>
                                        <div class="row">
                                            <div class="col-2 ">
                                                <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="서울" style="width: 150px;">
                                            </div>
                                            <div class="col-2 ">
                                               <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="마포구" style="width: 150px;">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //선호지역 -->
                                    <!-- 모임방식 -->
                                    <div id="item-2-5" class="col-12">
                                        <p class="h5">모임방식</p>
                                        <div class="row">
                                            <div class="col-6 m-select">
                                            <input type="text" class="form-control" id="validationCustom03" readonly="readonly" value="온라인" style="width: 150px;">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //모임방식 -->
                                </div>
                                <br><br>
                                <!-- 버튼영역 -->
                                <div class="btn-box">
                                    <div class="btn-center">
                                      <button type="button" class="btn btn-primary">수정하기</button>
                                      
                                      
                                      
                                      
                        <!-- Modal -->
						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#sinchungpeople">
							신청한 사람보기</button>

						<div class="modal fade" id="sinchungpeople" tabindex="-1" 
							aria-labelledby="sinchungpeopleLabel" aria-hidden="true"> <!-- 픽 리스트 등장 -->
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<div class="modal-title fs-5 h1" id="sinchungpeopleLabel">신청한 사람들</div>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="닫기"></button>
									</div>
									<div class="modal-body">
									<table class="table">
										<tr>
											<th>이름?닉네임?</th>
											<th>지원한 직무</th>
											<th>경력</th>
											<th>지원한 날짜</th>
											<th>픽 여부</th>
										</tr>
										<tr>
											<td>홍길동</td>
											<td>백엔드</td>
											<td>3년</td>
											<td>2024-02-18</td>
											<td>
											<button type="button" class="btn btn-primary" id="pick" >픽</button> 																			
											</td>
										</tr>
									</table> 
									
											
									
									
									</div> <!-- 1파업바디 엔드 -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div> <!-- 픽 리스트 등장// -->
                                      
                                      
                                      
                                    </div>
                                  </div><!-- 버튼// -->


								<div class="comp_box">
									<h2 class="comp_tit">부가 정보</h2>

									<nav>
										<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
											role="tablist">
											<button class="nav-link active" id="nav-home-tab2"
												data-bs-toggle="tab" data-bs-target="#nav-home2"
												type="button" role="tab" aria-controls="nav-home2"
												aria-selected="true">모집현항</button>

											<button class="nav-link" id="nav-profile-tab2"
												data-bs-toggle="tab" data-bs-target="#nav-profile2"
												type="button" role="tab" aria-controls="nav-profile2"
												aria-selected="false">댓글</button>

											
										</div>
									</nav>
									<div class="tab-content" id="nav-tabContent2">
										<div class="tab-pane fade show active" id="nav-home2"
											role="tabpanel" aria-labelledby="nav-home-tab2">
											<h5>프론트 1/2</h5>
											<h5>백엔드 0/3</h5>
											<h5>디자인 1/1</h5>
										</div>
										<div class="tab-pane fade" id="nav-profile2" role="tabpanel"
											aria-labelledby="nav-profile-tab2">
										  <div class="comments mt-3"><!-- 댓글 나오는창 -->
											
										  </div>
											<div class="card-footer">
										  <form onsubmit="addComment(event)">
										   <div class="form-group">
										      <input type="text" class="form-control" placeholder="댓글을 입력하세요"  id="comment"required>
										    </div>
										    <button type="submit" class="btn btn-primary">작성</button>
										  </form>
										</div>
										</div>
										
									</div>
								</div>
								<!-- </div> -->

                        
                    </div>
                </div>
                <!-- //작성영역 -->


            </div>
        </section>
        <!-- //바디영역 -->

        <!-- 푸터영역 -->
        <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div>
        <!-- //푸터영역 -->

    </div>

    <!-- script -->
    <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/jquery-ui.js"></script>
    <script src="../../asset/js/bootstrap.bundle.min.js"></script>
    <script src="../../asset/js/common.js"></script>
    <script>
    $(function()
	{
    	$("#singo").click(function()
    	{
	    	alert("신고했습니다. 😁");
    	
    	});
		
    	$("#pick").click(function()
    	{
    		if(confirm("이 사람을 정말정말 진짜루다가 픽하시겠습니까?"))
    		{
    			alert("픽 보내기 성공.");
    		}else
    		{
    			alert("픽 보내기 보류!");
    		}
    	    	
    	});
    	
    	
	});
    
    
    
    
    
    
    function addComment(event)
    {
    	  event.preventDefault();
    	  var commentInput = event.target.querySelector("input");
    	  var commentText = commentInput.value;
    	  var date = new Date().toLocaleString();

    	  var commentDiv = document.createElement("div");
    	  commentDiv.className = "card my-3";
    	  commentDiv.innerHTML = `
    	    <div class="card-body">
    	      <p class="card-text">${commentText}</p>
    	      <p class="card-text"><small class="text-muted">${date}</small></p>
    	    </div>
    	  `;

    	  var commentsDiv = event.target.parentNode.querySelector(".comments");
    	  commentsDiv.insertBefore(commentDiv, commentsDiv.firstChild);

    	  commentInput.value = "";
    }
    </script>
</body>

</html>