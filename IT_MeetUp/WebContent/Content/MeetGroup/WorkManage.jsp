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
  
  
<script>

  	$(function()
	{
  		
  		$(".skil").change(function(){
  	        var skilArea = $("#skilArea");		// div 영역 가져오기
  	        var skillName = $(this).attr("id"); // 기술이름가져오기
  	        var skillLabel = $("label[for='" + skillName + "']").text();  

  	        var checkSkill = skilArea.find("span");
  	        if ($(this).is(":checked"))
  	        {
  	            // 선택된 기술이 5개 미만인 경우에만 추가
  	            if (checkSkill.length < 5)
  	            {
  	              var skill = $("<span>").text("["+skillLabel+"]"   );
  	               skilArea.append(skill);
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
  	                if ($(this).text().indexOf(skillLabel) !== -1)
  	                {
  	                    $(this).remove();
  	                }
  	            });
  	        }
  	    });	
  
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
							<div>
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
						                          <option selected="selected">업무상태를 선택하세요.</option>
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
						                          <option selected="selected">업무상태를 선택하세요.</option>
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
						                          <option selected="selected">업무상태를 선택하세요.</option>
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
						                          <option selected="selected">업무상태를 선택하세요.</option>
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
							</div>
						</div>
						<!-- //일정관리 -->
						
						<!-- 업무할당표  -->
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							<div>
								<div class="comp_box">
									<h5 class="comp_tit">업무할당표
										<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float: right;">업무할당</button>
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
											                    <th>할당일</th>
											                    <th>시작일</th>
											                    <th>종료일</th>
											                    <th>작성자</th>
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
											                    <td>03/11</td>
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
											                          <option selected="selected">담당자명</option>
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
											                          <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#staticBackdrop2"><i class="bi bi-pencil-square"></i>
											                            	업무보고</a>
											                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>할당삭제</a>
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
							</div>
						</div>
						<!--// 업무할당표  -->
						
						<!-- 업무 보고 목록 -->
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">
							<div>
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
						                    <th>보고일자</th>
						                    <th>첨부파일명</th>
						                    <th>처리</th>
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
						                    <div class="dropdown">
						                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
						                          <i class="bi bi-three-dots-vertical"></i>
						                        </button>
						                        <div class="dropdown-menu">
						                          <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#staticBackdrop3"><i class="bi bi-pencil-square"></i>
						                            	업무처리</a>
						                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>보고삭제</a>
						                        </div>
						                    </div>
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
						                    <div class="dropdown">
						                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
						                          <i class="bi bi-three-dots-vertical"></i>
						                        </button>
						                        <div class="dropdown-menu">
						                          <a class="dropdown-item" href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#staticBackdrop3"><i class="bi bi-pencil-square"></i>
						                            	업무처리</a>
						                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>보고삭제</a>
						                        </div>
						                    </div>
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
							</div>
						</div>
						<!-- //업무 보고 목록 -->
					</div>
				</div>
		
			</div>
			<!-- 탭 -->
			
			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">업무 할당</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        <div id="#item-1" class="comp_tit">제목(주제) 
					<input type="text" class="form-control" id="title" required="required" style="width: 450px;">
				</div>

				<div  id="#item-2" class="comp_tit">내용
					<textarea class="form-control" id="content" rows="3" style="width: 450px;" required="required"></textarea>
		        </div>
		        <br>
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
				<br><hr>
				<div id="#item-4" class="d-flex comp_tit">
					업무 분류 : 
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
				<br><hr>
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
				<br><hr>		
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
				<br><hr>
				<div id="#item-7" class="comp_tit ">첨부파일 
					<div class="m-file">
						<label for="formFile" class="form-label">file</label> <input
							class="form-control" type="file" id="formFile">
					</div>
				</div>			
				<br>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary">제출</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!--// Modal  -->
			
			<!-- Modal2 -->
			<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">업무보고</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			      
			        <div id="#newItem-1" class="comp_tit">제목(주제) 
						<input type="text" class="form-control" id="title" required="required" style="width: 450px;">
					</div>	
					<div  id="#newItem-2" class="comp_tit">내용
						<textarea class="form-control" id="content" rows="3" style="width: 450px;" required="required"></textarea>
			        </div>
			        <br><hr>
			        <div  id="#newItem-3" class="comp_tit">업무 수행 기간
					<div style="display: flex;">
						<span>시작일 <input type="date" class="form-control"
							id="startDate" onchange="startDateCheck()" style="width: 150px;">
						</span>
						
						<span>종료일 <input type="date" class="form-control"
							id="endDate" onchange="endDateCheck()" style="width: 150px;">
						</span>
					</div>		
				</div>
				<br><hr>
				<div  id="#newItem-4" class="dropdown skill-dropdown ">
                  <div class=" comp_tit">사용 스킬</div>
                    <nav id="skilLIst">
                      <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-front-tab" data-bs-toggle="tab"
                          data-bs-target="#nav-front" type="button" role="tab" aria-controls="nav-front"
                          aria-selected="true">프론트</button>
                        <button class="nav-link" id=av-back-tab" data-bs-toggle="tab" data-bs-target="#nav-back"
                          type="button" role="tab" aria-controls="nav-back" aria-selected="false">백엔드</button>
                        <button class="nav-link" id="av-tool-tab" data-bs-toggle="tab" data-bs-target="#nav-tool"
                          type="button" role="tab" aria-controls="nav-tool" aria-selected="false">기획, 디자인,
                          개발툴</button>
                      </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-front" role="skill01"
                        aria-labelledby="nav-front-tab">
                        <ul class="skill-check">
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="html" autocomplete="off">
                              <label class="btn btn-light" for="html">
                              HTML5
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="css" autocomplete="off">
                              <label class="btn btn-light" for="css" id="csslabel">
                              CSS
                             <!--  <img alt="CSS" src="../../asset/images/skill/ico_css.png"> -->    
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="javasSript" autocomplete="off">
                              <label class="btn btn-light" for="javasSript">
                              JavaScript
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="typeScript" autocomplete="off">
                              <label class="btn btn-light" for="typeScript">
                              TypeScript
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="react" autocomplete="off">
                              <label class="btn btn-light" for="react">
                              React
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="vue" autocomplete="off">
                              <label class="btn btn-light" for="vue">
                              Vue
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="svelte" autocomplete="off">
                              <label class="btn btn-light" for="svelte">
                              Svelte
                              </label>
                          </li>
                          <li>
                           	  <input class="btn-check skil" type="checkbox" value="" id="next.js" autocomplete="off">
                              <label class="btn btn-light" for="next.js">
                              Next.js
                              </label>
                          </li>
                        </ul>
                      </div>
                      <div class="tab-pane fade" id="nav-back" role="skill02" aria-labelledby="nav-back-tab">
                        <ul class="skill-check">
                          <li>
                          	 <input class="btn-check skil" type="checkbox" value="" id="Ruby" autocomplete="off">
                              <label class="btn btn-outline-primary" for="Ruby">
                              Ruby
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="java" autocomplete="off">
                              <label class="btn btn-outline-dark" for="java">
                              JAVA
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="jsp" autocomplete="off">
                              <label class="btn btn-outline-light" for="jsp">
                              JSP
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="Python" autocomplete="off">
                              <label class="btn btn-outline-info" for="Python">
                              Python
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="C#">
                              <label class="btn btn-outline-warning" for="C#">
                                C#
                              </label>
                          </li>
                          <li>
                              <input class="btn-check skil" type="checkbox" value="" id="C++">
                              <label class="btn btn-outline-danger" for="C++">
                                C++
                              </label>
                          </li>
                          <li>
                             <input class="btn-check skil" type="checkbox" value="" id="C">
                              <label class="btn btn-outline-success" for="C">
                                C
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="ORACLE">
                              <label class="btn btn-outline-secondary" for="ORACLE">
                               ORACLE
                              </label>
                          </li>
                           <li>
                            <input class="btn-check skil" type="checkbox" value="" id="MySQL">
                              <label class="btn btn-success" for="MySQL">
                               MySQL
                              </label>
                          </li>
                           <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="React">
                              <label class="btn btn-danger" for="React">
                               React
                              </label>
                          </li>
                           <li>  
                            <input class="btn-check skil" type="checkbox" value="" id="PHP">
                              <label class="btn btn-info" for="PHP">
                               PHP
                              </label>
                          </li>
                           <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="Node.js">
                              <label class="btn btn-warning" for="Node.js">
                               Node.js
                              </label>
                          </li>
                          <li> 
                             <input class="btn-check skil" type="checkbox" value="" id="Spring">
                              <label class="btn btn-warning" for="Spring">
                              Spring
                              </label>
                          </li>
                          <li> 
                           <input class="btn-check skil" type="checkbox" value="" id="Jquery">
                              <label class="btn btn-warning" for="Jquery">
                              Jquery
                              </label>
                          </li>
                          <li> 
                           <input class="btn-check skil" type="checkbox" value="" id="Mybatis">
                              <label class="btn btn-warning" for="Mybatis">
                              Mybatis
                              </label>
                          </li>
                          <li> 
                           <input class="btn-check skil" type="checkbox" value="" id="Javascript">
                              <label class="btn btn-dark" for="Javascript">
                              Javascript
                              </label>
                          </li>
                          <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="Spring Boot">
                              <label class="btn btn-dark" for="Spring Boot">
                              Spring Boot
                              </label>
                          </li>
                          <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="Rust">
                              <label class="btn btn-dark" for="Rust">
                              Rust
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="Scala">
                              <label class="btn btn-dark" for="Scala">
                              Scala
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="Kotlin">
                              <label class="btn btn-dark" for="Kotlin">
                              Kotlin
                              </label>
                          </li>
                          <li> 
                             <input class="btn-check skil" type="checkbox" value="" id="Unity">
                              <label class="btn btn-dark" for="Unity">
                              Unity
                              </label>
                          </li>
                        </ul>
                      </div>
                      <div class="tab-pane fade" id="nav-tool" role="skill03" aria-labelledby="nav-tool-tab">
                        <ul class="skill-check">
                          <li> 
                             <input class="btn-check skil" type="checkbox" value="" id="power">
                              <label class="btn btn-outline-primary" for="power">
                              파워목업
                              </label>
                          </li>
                          <li>  
                           <input class="btn-check skil" type="checkbox" value="" id="naver">
                              <label class="btn btn-outline-primary" for="naver">
                              네이버 프로토 나우
                              </label>
                          </li>
                          <li>
                            <input class="btn-check skil" type="checkbox" value="" id="kakao">
                              <label class="btn btn-outline-primary" for="kakao">
                              카카오 오븐
                              </label>
                          </li>
                          <li> 
                             <input class="btn-check skil" type="checkbox" value="" id="Sketch">
                              <label class="btn btn-outline-primary" for="Sketch">
                              Sketch
                              </label>
                          </li>
                          <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="Zeplin">
                              <label class="btn btn-outline-primary" for="Zeplin">
                              Zeplin
                              </label>
                          </li>
                          <li>   
                            <input class="btn-check skil" type="checkbox" value="" id=" Axure RP">
                              <label class="btn btn-outline-primary" for=" Axure RP">
                               Axure RP
                              </label>
                          </li>
                          <li>  
                            <input class="btn-check skil" type="checkbox" value="" id=" Adobe XD">
                              <label class="btn btn-outline-primary" for=" Adobe XD">
                              Adobe XD
                              </label>
                          </li>
                          <li>  
                           <input class="btn-check skil" type="checkbox" value="" id=" VSCode">
                              <label class="btn btn-outline-primary" for=" VSCode">
                              Visual Studio Code
                              </label>
                          </li>
                          <li> 
                            <input class="btn-check skil" type="checkbox" value="" id="VS">
                              <label class="btn btn-outline-primary" for="VS">
                              Visual Studio 
                              </label>
                          </li>
                          <li>   
                            <input class="btn-check skil" type="checkbox" value="" id="IntelliJ">
                              <label class="btn btn-outline-primary" for="IntelliJ">
                              IntelliJ
                              </label>
                          </li>
                          <li>  
                             <input class="btn-check skil" type="checkbox" value="" id=" Notepad++">
                              <label class="btn btn-outline-primary" for=" Notepad++">
                               Notepad++
                              </label>
                          </li>
                          <li>  
                            <input class="btn-check skil" type="checkbox" value="" id=" Vim">
                              <label class="btn btn-outline-primary" for=" Vim">
                               Vim
                              </label>
                          </li>
                          <li>    
                          <input class="btn-check skil" type="checkbox" value="" id="Android Studio">
                              <label class="btn btn-outline-primary" for="Android Studio">
                              Android Studio
                              </label>
                          </li>
                          <li> 
                             <input class="btn-check skil" type="checkbox" value="" id="PyCharm">
                              <label class="btn btn-outline-primary" for="PyCharm">
                              PyCharm
                              </label>
                          </li>
                          <li>  
                            <input class="btn-check skil" type="checkbox" value="" id="Eclipse">
                              <label class="btn btn-outline-primary" for="Eclipse">
                              Eclipse
                              </label>
                          </li>
                          <li>  
                            <input class="btn-check skil" type="checkbox" value="" id="Xcode">
                              <label class="btn btn-outline-primary" for="Xcode">
                              Xcode
                              </label>
                          </li>
                        </ul>
                      </div>
                    </div> 
                
                </div>
                
                
				<div id="skilArea" style="border: 2px solid black; border-radius: 30px; width: 300px;"> <!-- 내가 체크한 기술 나오는 공간 -->
                <br><br>	
                </div>
                <br><hr>
                <div id="#newItem-5" class="comp_tit ">첨부파일 
					<div class="m-file">
						<label for="formFile" class="form-label">file</label> <input
							class="form-control" type="file" id="formFile">
					</div>
				</div>	
			        
			        
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary">제출</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- //Modal2 -->
			
			<!-- Modal3 -->
			<div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">업무 결재</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        <form id="decisionForm">
			          <div class="form-check">
			            <input class="form-check-input" type="radio" name="decision" id="approve" value="approve">
			            <label class="form-check-label" for="approve">
			              승인
			            </label>
			          </div>
			          <div class="form-check">
			            <input class="form-check-input" type="radio" name="decision" id="reject" value="reject">
			            <label class="form-check-label" for="reject">
			              반려
			            </label>
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
			        <button type="button" class="btn btn-primary" onclick="submitDecision()">제출</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!--// Modal3  -->

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