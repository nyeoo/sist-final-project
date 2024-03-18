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
<link rel="stylesheet" href="<%=cp%>/asset/css/style.css">
<style type="text/css">
/* .comment {
	margin-bottom: 20px;
}

.comment .profile-picture {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	margin-right: 10px;
}

.comment .comment-content {
	margin-top: 5px;
} */

/* .reply {
	display: none;
} */
</style>
</head>

<body>
	<div class="wrapper">

		<!-- 헤더영역 -->
		<c:import url="../Components/Header.jsp"></c:import>
		<!-- //헤더영역 -->

		<!-- 바디영역 -->
		<section class="m-body-area">
			<div class="container-xl">


				<!-- 내용 영역 -->
				<div class="row write-area">
					<div class="col-12 col-sm-8 col-lg-9 write-content">
						<div class="container">
							<p class="h3">모집공고 상세보기</p>
							<!-- <h1>어쩌구저쩌구 프로젝트</h1> -->
							<h1>${choicProList.title}</h1>

							<div style="text-align: right;">
								<button type="button" class="btn btn-secondary"
									data-bs-toggle="modal" data-bs-target="#exampleModal01">
									<i class="bi bi-emoji-angry"></i>
								</button>
							</div>
							<hr>

							<div class="row">
								<div class="col-md-6">
									<div class="project-details">
										<p>
											<strong>번호:</strong> ${choicProList.code}
										</p>
										<p>
											<strong>모임 방식:</strong> ${choicProList.meet}
										</p>
										<p>
											<strong>인원:</strong> ${choicProList.mojibsu} 명
										</p>
										<p>
											<strong>모집 분야:</strong>
											<c:forEach var="job" items="${jobs }">
													${job.jobName }
											</c:forEach>
										</p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="project-details">
										<p>
											<strong>사용 언어:</strong>
											<c:forEach var="skill" items="${skillList }">
												<span class="tag">${skill}</span>
											</c:forEach>
											<!-- 
												 <span class="tag">CSS</span>
												 <span class="tag">JavaScript</span>
												  -->
										</p>
										<p>
											<strong>시작일:</strong> ${choicProList.start}
										</p>
										<p>
											<strong>종료일:</strong> ${choicProList.end}
										</p>
										<p>
											<strong>예상 기간:</strong> ${choicProList.day}개월
										</p>
									</div>
								</div>
							</div>
						</div> 
						<hr>
						<div>
							<span style="font-size: 30px;"> ${choicProList.content} </span> <br>
							<br> <br> <br> <br> <br> <br> <br>
							<br> <br>
							<c:forEach var="recomment" items="${recomments[comment.number] }">

								<i class="bi bi-arrow-return-right"></i> ${recomment.nickname }  | <span>
									${recomment.content } </span>   | ${recomment.date }
							</c:forEach>
							<br>



						</div>
					</div>
					<!-- 버튼영역 -->
					<div class="btn-box">
						<div class="btn-center">


							<c:choose>
								<c:when test="${sessionScope.loginDTO.piMemCode eq choicProList.memCode}">
									<button type="button" class="btn btn-primary">수정하기</button>
									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#sinchungpeople">신청한
										사람보기</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-primary"
										data-bs-toggle="modal" data-bs-target="#sinchung">신청하기</button>
								</c:otherwise>
							</c:choose>
									<button type="button" class="btn btn-secondary" id="prolist">목록으로</button>


						</div>
					</div>
					<!-- 버튼// -->
					<br> <br>



					<!--  PICK Modal -->
					<div class="modal fade" id="sinchungpeople" tabindex="-1"
						aria-labelledby="sinchungpeopleLabel" aria-hidden="true">
						<!-- 픽 리스트 등장 -->
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<div class="modal-title fs-5 h1" id="sinchungpeopleLabel">신청한 사람들</div>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="닫기"></button>
								</div>
								<div class="modal-body">
									<table class="table">
										<c:forEach var="pick" items="${pickList }" varStatus="status">
											<tr>
												<th>닉네임</th>
												<th>지원한 직무</th>
												<th>신청한 날짜</th>
												<th>정보 보기</th>
												<th>픽 여부</th>
											</tr>
											<tr>
												
												<td>${pick.nickName }</td>
												<td>${pick.jName }</td>
												<td>${pick.getRegDate() }</td>
												
												<td><button type="button" class="btn btn-primary sinchunInfo" id="sinchunInfo"
														data-bs-target="#nameCard" data-bs-toggle="modal">
														<i class="bi bi-person-square"></i>
													</button>
													<input type="hidden" id="memberCode" name ="memberCode" value="${pick.memCode}" >
													</td>
												<td>
													<form action="updatePick.action" method="get" id="pickForm${status.index +1}">
													<input type="hidden" value="${pick.getPano() }" name="pano">
													<input type="hidden" name ="code" value="${choicProList.code}" >
													<button type="button" class="btn btn-primary pickSubmit" id="pick"
														data-bs-target="#PickCheck" data-bs-toggle="modal">
														<i class="bi bi-arrow-through-heart"></i>
													</button>
													</form>
												</td>
											</tr>
										
										</c:forEach>
									</table>
								</div>
								<!-- 1파업바디 엔드 -->
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 픽 리스트 등장// -->
					<div class="modal fade" id="PickCheck" aria-hidden="true"
						aria-labelledby="PickCheckLabel" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="PickCheckLabel">픽</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="아니오"></button>
								</div>
								<div class="modal-body">이 사람을 정말 픽하시 겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										data-bs-target="#sinchungpeople" data-bs-toggle="modal" id="ok">네</button>
									<button type="button" class="btn btn-secondary"
										data-bs-target="#sinchungpeople" data-bs-toggle="modal" id="n">아니오</button>
								</div>
							</div>
						</div>
					</div>
					
					
					<!-- 네임카드 이동// -->
					<div class="modal fade" id="nameCard" aria-hidden="true"
						aria-labelledby="PickCheckLabel" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="PickCheckLabel">네임카드</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="아니오"></button>
								</div>
								<div class="modal-body">이 사람의 정보를 보시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary-nameCard"
										data-bs-target="#sinchungpeople" data-bs-toggle="modal" id="ok">네</button>
									<button type="button" class="btn btn-secondary"
										data-bs-target="#sinchungpeople" data-bs-toggle="modal" id="n">아니오</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 신청하기 모달 -->
					<div class="modal fade" id="sinchung" tabindex="-1"
							aria-labelledby="sinchungLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<div class="modal-title fs-5 h1" id="sinchungLabel">신청하기</div>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
									<table class="table">
										<tr>
											<th>직무</th>
											<th>모집 수</th>
											
											<th>신청 여부</th>
											
										</tr>
										<c:forEach var="sinchung" items="${sinchung }" varStatus="status">
										<tr>
										
											<td>${sinchung.jName }</td>
											<td>${sinchung.tjnum } 명</td>
											<td>
											<form action="sinchung.action" id="sinchungForm${status.index +1}" method="get">
												<!-- <button type="button" class="btn btn-primary sign" id="back" >신청</button>  -->
												<input type="hidden" name ="tjno" value="${sinchung.tjno }" >
												<input type="hidden" name ="code" value="${choicProList.code}" >
												
												<input type="hidden" value="${sessionScope.loginDTO.piMemCode}"  name="memCode">
													<button type="button" class="btn btn-primary sinchung" id="sinchungForm" data-bs-target="#sinchungCheck" data-bs-toggle="modal">
																신청
													</button>					
											</form>														
											<!-- <button type="button" class="btn btn-secondary canel" id="back" >취소</button> --> 																			
											</td>
										
										</tr>
										</c:forEach>
										
									</table> 
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
										
									</div>
								</div>
							</div>
					</div>
					
					<!-- 신청 확인  -->
					<div class="modal fade" id="sinchungCheck" aria-hidden="true"
						aria-labelledby="sinchungCheckLabel" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="sinchungCheckLabel">신청</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="아니오"></button>
								</div>
								<div class="modal-body">정말 이 프로젝트에 신청하시겠습니까?</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"  id="yes" data-bs-target="#sinchung" data-bs-toggle="modal">네</button>
									<button type="button" class="btn btn-secondary" id="no" data-bs-target="#sinchung" data-bs-toggle="modal">아니오</button>
								</div>
							</div>
						</div>
					</div>
					


					<!-- 신고모달 시작 -->
					<div class="modal fade" id="exampleModal01" tabindex="-1"
						aria-labelledby="exampleModal01Label" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModal01Label">신고
										사유</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<select class="form-select" aria-label="" title=""
										id="singoList">
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
									<button type="button" class="btn btn-secondary"
										data-bs-dismiss="modal">Close</button>
									<button type="button" class="btn btn-danger"
										data-bs-dismiss="modal" id="singo">신고하기</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 신고모달끝 -->

					<div class="comp_box">
						<!-- 부가정보 -->
						<h2 class="comp_tit">부가 정보</h2>
						<nav>
							<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
								role="tablist">
								<button class="nav-link active" id="nav-mojib-tab" 	data-bs-toggle="tab" data-bs-target="#nav-mojib" type="button"
									role="tab" aria-controls="nav-mojib" aria-selected="true">모집현항</button>

								<button class="nav-link" id="nav-comment-tab" 	data-bs-toggle="tab" data-bs-target="#nav-comment"
									type="button" role="tab" aria-controls="nav-comment"
									aria-selected="false">댓글</button>
							</div>
						</nav>
						<div class="tab-content" id="nav-tabContent2">
							<!-- 모집 현항 -->
							<div class="tab-pane fade show active" id="nav-mojib"
								role="tabpanel" aria-labelledby="nav-mojib-tab">
								<c:forEach var="job" items="${jobs }">
									
									<h5>${job.jobName }      ${job.count} / ${job.inwon }</h5>
								</c:forEach>
								<br>

							</div>
							<div class="tab-pane fade" id="nav-comment" role="tabpanel"
								aria-labelledby="nav-comment-tab">
								<!-- 댓글 -->
								<div class="comp_box">
									

									<div class="row comment_reg">
										<form action="commentInsert.action" method="get">
											<input type="hidden" value="${choicProList.code}" name="code" />
											<input type="hidden" value="${sessionScope.loginDTO.piMemCode}"
												name="memCode" />
											<div class="col-12">
												<div class="textarea_wrap">
													<textarea  rows="2" cols="30" placeholder="댓글을 작성하세요"  class="comment-textarea" name="comContent" data-textarea="txt_cnt"></textarea>
												</div>
											</div>
											<div class="col-12 d-flex justify-content-between mt-2">
												<div class="left-box">
													<div class="txt" >※ 글자수는 1000자 이내로 제한됩니다.</div>
												</div>
												<div class="right-box">
													<span class="me-3">
														<strong data-textarea-cnt="txt_cnt">29</strong>/1000
													</span>
													<button type="submit" class="btn btn-primary">등록하기</button>
												</div>
											</div>
										</form>
									</div>

									<div class="comment_area_wrap open">

										<button class="comment_more">
											${count } 개
											<span class="cmnt_txt ty01">
												<i class="bi bi-arrow-down-circle"></i>
												펼치기
											</span>
											<span class="cmnt_txt ty02">
												<i class="bi bi-arrow-up-circle">
												</i>접기
											</span>
										</button>

										<c:choose>
										<c:when test="${empty comments}">
											<h3>현재 등록된 댓글이 없습니다. 1등으로 댓글 달아봐요</h3>
										</c:when>
										<c:otherwise>
										<ul class="comment_area">
											<c:forEach var="comment" items="${comments }">
												<li>
													<!-- 원댓글 -->
													<div class="comment_group">

														<div class="comment">
															<div class="tbl_box">
																<div class="tbl_cont_area ty2">
																	<div class="cont"> ${comment.comContent } </div>
																	
																</div>
																<div class="more_area">
																	<div class="dropdown">
																		<button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
																			<i class="bi bi-three-dots-vertical"></i>
																		</button>
																		<div class="dropdown-menu">
																			<a class="dropdown-item" href="javascript:void(0);">
																				<i class="bi bi-pencil-square"></i> 수정
																			</a> 
																			<a class="dropdown-item" href="commentDelete.action?number=${comment.number }&code=${comment.code }"> 
																				<i class="bi bi-trash3"></i> 삭제
																			</a>
																			<a class="dropdown-item" href="javascript:void(0);">
																				<i class="bi bi-tencent-qq"></i>신고
																			</a> 
																			<a class="dropdown-item" href="namecard.action?memCode=${comment.memCode }">
																				<i class="bi bi-person-circle"></i>정보 보기
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div class="info">
																<ul class="reg_info">
																	<!-- <li>작성자A</li> -->
																	<li>${comment.nickname }</li>
																	<!-- <li><span class="ico_date">2024-02-19 15:34</span></li> -->
																	<li><span class="ico_date">${comment.date }</span></li>
																</ul>
																<div class="fr">
																	<button class="btn_cmnt link_blue">
																		답글달기 <span class="ty02">취소</span>
																	</button>
																</div>
															</div>
														</div>

														<!-- 대댓글 입력 -->
														<div class="row comment_reg reply">
														<form action="insertRecomment.action" method="get">
															<div class="col-12">
																<div class="textarea_wrap">
																	<input type="hidden" value="${choicProList.code}" name="code" />
																	<input type="hidden" value="${comment.number }" name="number" />
																	<input type="hidden" value="${sessionScope.loginDTO.piMemCode}"  name="memCode">
																	<textarea rows="2" cols="30" placeholder="댓글을 작성하세요" class="comment-textarea" data-textarea="txt_cnt" name="comContent"></textarea>
																</div>
															</div>
															<div class="col-12 d-flex justify-content-between mt-2">
																<div class="left-box">
																	<div class="txt">※ 글자수는 1000자 이내로 제한됩니다.</div>
																</div>
																<div class="right-box">
																	<span class="me-3">
																		<strong data-textarea-cnt="txt_cnt">29</strong>/1000
																	</span>
																	<button type="submit" class="btn btn-primary">등록하기</button>
																</div>
															</div>
														</form>
														</div>
														<!-- 대댓글 입력 -->

													</div> <!-- // 원댓글 --> <!-- 답글 -->
													<ul class="reply_group">
														<c:forEach var="recomment" items="${recomments[comment.number] }">
															<li class="comment_group">
																<div class="comment reply">
																	<div class="tbl_box">
																		<div class="tbl_cont_area ty2">
																			<div class="cont">
																				<strong class="name">${comment.nickname }</strong>${recomment.comContent } 
																			</div>
																		</div>
																	</div>
																	<div class="info">
																		<ul class="reg_info">
																			<li>${recomment.nickname }</li>
																			<li><span class="ico_date">${recomment.date }</span></li>
																		</ul>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul> <!-- // 답글 -->

												</li>
											</c:forEach>
										</ul>
										</c:otherwise>
										</c:choose>
									</div>
								</div>
								<!-- 댓글 끝 -->
							</div>

						</div>

					</div>
					<!--부가정보 끝  -->
					<div>
					<br><BR><br><br><br><br>
					</div>
				</div>
				<!-- .col-12 col-sm-8 col-lg-9 write-content end -->
			</div>
			<!-- //내용영역 -->
		</section>
		<!-- //바디영역 -->

		<!-- 푸터영역 -->
		<c:import url="../Components/Footer.jsp"></c:import>
		<!-- //푸터영역 -->

	</div>

	<!-- script -->
	<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
	<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
	<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
	<script src="<%=cp%>/asset/js/common.js"></script>
	<script>
		$(function()
		{
			// 신청한 사람의 네임카드로 이동
			var memCode = "";
			
			$(".sinchunInfo").on("click",function(){
				memCode = $(this).next("input").val();
			});

			
			$(".btn-primary-nameCard").click(function()
			{
				//var memCode = $('#memberCode').val();
				
				$(location).attr("href", "namecard.action?memCode=" + memCode);
			});
	
	//-------------------------------------------------------------------------		
			$("#singo").click(function()
			{
				alert("신고했습니다. 😁");

			});
			
			
			
			// 픽 보내기
			$('.pickSubmit').click(function() {
			  
				var pickFormId = $(this).closest('form').attr('id');
			    // alert(pickFormId);
			    $('#ok').click(function() {
			        // 해당 폼을 서브밋합니다.
			        $('#' + pickFormId).submit();
			    });
			});
			
			// 신청하기
			$('.sinchung').click(function() {
			   
			    var sinchungFormId = $(this).closest('form').attr('id');
			    //alert(sinchungFormId);
			  
			    $('#yes').click(function() {
			        // 해당 폼을 서브밋합니다.
			        $('#' + sinchungFormId).submit();
			    });
			});
			
			
			// 목록 버튼 눌렀을 때
			$("#prolist").click(function()
			{
				$(location).attr("href", "projectList.action");
			});
			 
			 // 댓글 입력 막기
			 var textarea = $('.comment-textarea');
			 var message = $('.txt');
			 var count = $('[data-textarea-cnt="txt_cnt"]');
		    
			textarea.on('input', function() 
			{
		        var text = $(this).val();
		        var textLength = text.length;
		        
		        if (textLength > 1000) 
		        {
		            $(this).val(text.slice(0, 1000)); 
		            textLength = 1000;
	        	}
	        
		        count.text(textLength);
		        
		        if (textLength >= 1000) 
		        {
		            message.show(); 
		            message.css({'color': 'red', 'font-weight': 'bold'});
		        } else
		        {
		            message.hide(); 
		        }
	    	});
			
			 
		});
	</script>
</body>

</html>