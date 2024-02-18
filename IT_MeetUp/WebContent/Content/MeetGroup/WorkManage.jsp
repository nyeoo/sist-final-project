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
  <title>WorkManage</title>
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
    	
    		<!-- 사이드 영역 -->
	        <div role="side" data-include="../Components/Side.jsp"></div>
	        <!-- //사이드 영역 -->

		    <!-- 탭 -->
			<div class="comp_box">
				<h2 class="comp_tit">업무관리</h2>
		
				<div class="tab-box">
					<nav>
						<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
							role="tablist">
							<button class="nav-link active" id="nav-home-tab"
								data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
								role="tab" aria-controls="nav-home" aria-selected="true">일정관리</button>
							<button class="nav-link" id="nav-profile-tab"
								data-bs-toggle="tab" data-bs-target="#nav-profile"
								type="button" role="tab" aria-controls="nav-profile"
								aria-selected="false">업무할당표</button>
							<button class="nav-link" id="nav-contact-tab"
								data-bs-toggle="tab" data-bs-target="#nav-contact"
								type="button" role="tab" aria-controls="nav-contact"
								aria-selected="false">업무 보고 목록</button>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<!-- 일정관리 -->
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<p>
								<div class="card tbl-card">
						            <h5 class="card-header">일정</h5>
						            <div class="table-responsive text-nowrap tbl-border">
						              <table class="table">
						                <colgroup>
						                  <col style="width: 30px;">
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                </colgroup>
						                <thead>
						                  <tr>
						                    <th>주제</th>
						                    <th>시작일</th>
						                    <th>종료일</th>
						                    <th>실제시작일</th>
						                    <th>실제종료일</th>
						                    <th>업무상태</th>
						                  </tr>
						                </thead>
						                <tbody>
						                  <tr class="range-datepicker">
						                    <td><strong>분석</strong></td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-select">
						                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
						                          <option selected="">업무상태를 선택하세요.</option>
						                          <option value="1">시작예정</option>
						                          <option value="2">진행중</option>
						                          <option value="3">완료</option>
						                        </select>
						                      </div>
						                    </td>
						                  </tr>
						                  <tr class="range-datepicker">
						                    <td><strong>설계</strong></td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-select">
						                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
						                          <option selected="">업무상태를 선택하세요.</option>
						                          <option value="1">시작예정</option>
						                          <option value="2">진행중</option>
						                          <option value="3">완료</option>
						                        </select>
						                      </div>
						                    </td>
						                  </tr>
						                  <tr class="range-datepicker">
						                    <td><strong>구현</strong></td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-select">
						                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
						                          <option selected="">업무상태를 선택하세요.</option>
						                          <option value="1">시작예정</option>
						                          <option value="2">진행중</option>
						                          <option value="3">완료</option>
						                        </select>
						                      </div>
						                    </td>
						                  </tr>
						                  <tr class="range-datepicker">
						                    <td><strong>테스트</strong></td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-from" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-input-cal">
						                        <input type="text" class="form-control date-to" disabled="disabled">
						                      </div>
						                    </td>
						                    <td>
						                      <div class="m-select">
						                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
						                          <option selected="">업무상태를 선택하세요.</option>
						                          <option value="1">시작예정</option>
						                          <option value="2">진행중</option>
						                          <option value="3">완료</option>
						                        </select>
						                      </div>
						                    </td>
						                  </tr>
						                </tbody>
						              </table>
						            </div>
						          </div>
							</p>
						</div>
						<!-- //일정관리 -->
						
						<!-- 업무할당표  -->
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<p>
								<div class="comp_box">
									<h5 class="comp_tit">업무할당표
										<button type="button" class="btn btn-primary" style="float: right;">업무할당</button>
									</h5>	
									<hr>
									
									<div class="accordion" id="accordionExample">
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													분석</button>
											</h2>
											<div id="collapseOne" class="accordion-collapse collapse show"
												data-bs-parent="#accordionExample">
												<div class="accordion-body">
													<div class="table-responsive text-nowrap tbl-border">
														<table class="table">
											                <colgroup>
											                  <col style="width: 30px;">
											                  <col>
											                  <col>
											                  <col>
											                  <col>
											                  <col>
											                  <col>
											                  <col>
											                </colgroup>
											                <thead>
											                  <tr>
											                    <th>주제</th>
											                    <th>시작일</th>
											                    <th>종료일</th>
											                    <th>담당자</th>
											                    <th>실제시작일</th>
											                    <th>실제종료일</th>
											                    <th>업무상태</th>
											                    <th>작성하기</th>
											                    <th>추가/조회</th>
											                  </tr>
											                </thead>
											                <tbody>
											                  <tr class="range-datepicker">
											                    <td><input type="button" class="form-control form-control-plaintext" id="validationCustom01" value="요구사항분석"></td>
											                    <td>
											                      <div class="m-input-cal">
											                        <input type="text" class="form-control date-from" disabled="disabled">
											                      </div>
											                    </td>
											                    <td>
											                      <div class="m-input-cal">
											                        <input type="text" class="form-control date-to" disabled="disabled">
											                      </div>
											                    </td>
											                    <td>
											                      <div class="m-select">
											                        <select class="form-select" aria-label="Default select example" title="selectTitle00">
											                          <option selected="">담당자명</option>
											                          <option value="1">방장</option>
											                          <option value="2">팀원1</option>
											                          <option value="3">팀원2</option>
											                        </select>
											                      </div>                      
											                    </td>
											                    <td>
											                      <div class="m-input-cal">
											                        <input type="text" class="form-control date-from">
											                      </div>
											                    </td>
											                    <td>
											                      <div class="m-input-cal">
											                        <input type="text" class="form-control date-to">
											                      </div>
											                    </td>
											                    <td>
											                      <div class="m-select">
											                        <span class="badge bg-label-success me-1">Completed</span>
											                      </div>
											                    </td>
											                    <td>
											                      <div class="dropdown">
											                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
											                          <i class="bi bi-three-dots-vertical"></i>
											                        </button>
											                        <div class="dropdown-menu">
											                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
											                            	업무보고</a>
											                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>업무삭제</a>
											                        </div>
											                      </div>
											                    </td>
											                    <td>
											                    	<button type="button" class="btn btn-primary btn-plus" style="background-color: green;"><i class="bi bi-list-task"></i></button>
											                    </td>
											                  </tr>
											                </tbody>
											              </table>
										              </div>
												</div>
											</div>
										</div>
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													설계</button>
											</h2>
											<div id="collapseTwo" class="accordion-collapse collapse"
												data-bs-parent="#accordionExample">
												<div class="accordion-body">
													
												</div>
											</div>
										</div>
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													구현</button>
											</h2>
											<div id="collapseThree" class="accordion-collapse collapse"
												data-bs-parent="#accordionExample">
												<div class="accordion-body">
												</div>
											</div>
										</div>
										<div class="accordion-item">
											<h2 class="accordion-header">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse" data-bs-target="#collapseFour"
													aria-expanded="false" aria-controls="collapseFour">
													테스트</button>
											</h2>
											<div id="collapseFour" class="accordion-collapse collapse"
												data-bs-parent="#accordionExample">
												<div class="accordion-body">
												</div>
											</div>
										</div>
									</div>
								</div>
							</p>
						</div>
						<!--// 업무할당표  -->
						
						<!-- 업무 보고 목록 -->
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">
							<p>
								<div class="card tbl-card">
						            <h5 class="card-header">업무 보고 목록</h5>
						            <!-- 필터 -->
									<div class="filter-box mb-5" style="margin: auto;">
										<ul class="d-flex">
											<li>
												<div class="m-select">
													<select class="form-select" aria-label="업무단계" title="업무단계">
														<option selected>업무단계</option>
														<option value="1">분석</option>
														<option value="2">설계</option>
														<option value="3">구현</option>
														<option value="4">테스트</option>
													</select>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<div class="m-select">
														<select class="form-select" aria-label="업무분류"
															title="업무분류">
															<option selected>업무분류</option>
															<option value="1">회의록</option>
															<option value="2">요구사항분석서</option>
															<option value="3">최종보고서</option>
														</select>
													</div>
													<div class="m-select">
														<select class="form-select" aria-label="담당자"
															title="담당자">
															<option selected>담당자</option>
															<option value="1">오수경</option>
															<option value="2">임하성</option>
															<option value="3">이주형</option>
														</select>
													</div>
												</div>
											</li>
										</ul>
									</div>
						            <div class="table-responsive text-nowrap tbl-border">
						              <table class="table">
						                <colgroup>
						                  <col style="width: 30px;">
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                  <col>
						                </colgroup>
						                <thead>
						                  <tr>
						                  	<th>업무단계</th>
						                    <th>업무분류</th>
						                    <th>제목</th>
						                    <th>담당자</th>
						                    <th>작성일자</th>
						                    <th>첨부파일명</th>
						                    <th>삭제</th>
						                  </tr>
						                </thead>
						                <tbody>
						                  <tr class="range-datepicker">          
						                    <td><strong>분석</strong></td>
						                    <td><strong>회의록</strong></td>
						                    <td>
						                      <input type="button" class="form-control form-control-plaintext" id="validationCustom01" value="1차 회의록">
						                    </td>
						                    <td>
						                      	담당자명    
						                    </td>                    
						                    <td>
						                    	2024-01-18
						                    </td>                                     
						                    <td>
						                    	첨부한파일1.hwp
						                    	<button type="button" class="btn btn-primary btn-plus"><i class="bi bi-file-arrow-down"></i></button>
						                    </td>                                     
						                    <td>
						                    	<button type="button" class="btn btn-primary btn-dash" style="background-color: red;"><i class="bi bi-dash-circle-dotted"></i></button>
						                    </td>
						                  </tr>                  
						                  <tr class="range-datepicker">          
						                    <td><strong>설계</strong></td>
						                    <td><strong>요구분석서</strong></td>
						                    <td>
						                      <input type="button" class="form-control form-control-plaintext" id="validationCustom01" value="요구분석서1차">
						                    </td>
						                    <td>
						                      	담당자명    
						                    </td>                    
						                    <td>
						                    	2024-01-31
						                    </td>                                     
						                    <td>
						                    	첨부한파일2.pdf
						                    	<button type="button" class="btn btn-primary btn-plus"><i class="bi bi-file-arrow-down"></i></button>
						                    </td>                                     
						                    <td>
						                    	<button type="button" class="btn btn-primary btn-dash" style="background-color: red;"><i class="bi bi-dash-circle-dotted"></i></button>
						                    </td>
						                  </tr>                  
						                </tbody>
						              </table>
						            </div>
						          </div>
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
							</p>
						</div>
						<!-- //업무 보고 목록 -->
					</div>
				</div>
		
			</div>
			<!-- 탭 -->

    </div>
    </section>
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

  </script>
</body>

</html>