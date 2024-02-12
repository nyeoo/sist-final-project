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
  <title>GroupHome</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="../../asset/css/style.css">
   <style type="text/css">
  	.icon{text-align: center;}
  	
  	.LayerMore {
    overflow-y: auto;
    position: absolute;
    top: auto;
    left: 0;
    z-index: 1;
    max-height: 416px;
    padding: 8px 0;
    border: 1px solid rgba(0,0,0,.06);
    border-radius: 6px;
    box-shadow: 0 1px 12px 0 rgba(0,0,0,.06);
    background-color: #fff;
    box-sizing: border-box;
    color: #000;
	}
	
	.user-info-container {
	  position: relative;
	}
	
	#writeNickNameMenu {
	  position: absolute;
	  top: 100%;
	  left: 0;
	  transform: translateX(-100%);
	}
	
	.button-right{text-align: right; margin-top: 10px;}
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

        <!-- 사이드 영역 -->
        <c:import url="../Components/Side.jsp"></c:import>
        <!-- //사이드 영역 -->

        <!-- 콘텐츠 -->
        <div class="content">

          <div class="content_tit">
            <p class="h3">그룹 정보 설정</p>
            <p class="icon">
          	<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_Calendar.jsp">
          		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-calendar3" viewBox="0 0 16 16">
				  <path d="M14 0H2a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zM1 3.857C1 3.384 1.448 3 2 3h12c.552 0 1 .384 1 .857v10.286c0 .473-.448.857-1 .857H2c-.552 0-1-.384-1-.857V3.857z"/>
				  <path d="M6.5 7a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm-9 3a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm3 0a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
				</svg>
			</a>
			<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_WorkManage.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-workspace" viewBox="0 0 16 16">
				  <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H4Zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
				  <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.373 5.373 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2H2Z"/>
				</svg>
			</a>
			<a href="http://localhost:3306/IT_MeetUp/Content/MeetGroup/S_GroupSetup.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
				  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z"/>
				</svg>
			</a>
          </p>
            <!-- 브레드크럼블 -->
            <%-- <c:import url="../Components/Breadcrumb.jsp"></c:import> --%>
            <!-- //브레드크럼블 -->
          </div>

          <!-- 탭 -->
          <nav>
            <div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab" role="tablist">
              <button class="nav-link active" id="nav-tab01-tab" data-bs-toggle="tab" data-bs-target="#nav-tab01"
                type="button" role="tab" aria-controls="nav-tab01" aria-selected="true">그룹 정보 조회/수정</button>
              <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-tab02"
                type="button" role="tab" aria-controls="nav-tab02" aria-selected="false">그룹원 정보 조회/설정</button>
            </div>
          </nav>
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-tab01" role="tabpanel" aria-labelledby="nav-tab01-tab">

              <div class="card tbl-card">
                <h5 class="card-header">그룹 설정</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>제목</th>
                        <th>내용</th>
                        <th>사용언어</th>
                        <th>이미지</th>
                        <th>각 역할별 인원수</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> 자바 프로젝트</td>
                        <td>자바를 이용한 프로젝트</td>
                        <td>자바 오라클 c++ 등등
                        </td>
                        <td>이미지</td>
                        <td>
                          각 역할별 인원수
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="button-right">
				<button type="button" class="btn btn-success">그룹 나가기</button>
			  </div>

            </div>
            <div class="tab-pane fade" id="nav-tab02" role="tabpanel" aria-labelledby="nav-tab02-tab">

              <!-- <div class="content_tit">
                <p class="h4">그룹원 설정</p>
              </div> -->

              <div class="card tbl-card">
                <h5 class="card-header">그룹원 설정</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>번호</th>
                        <th>역할</th>
                        <th>아이디</th>
                        <th>Status</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>1</strong></td>
                        <td>분석</td>
                        <td>
                          <div class="user-info-container">
						    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
						      <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top" class="avatar avatar-xs pull-up" title="">
						        <button id="writeNickNameButton" class="nickName"><i class="bi bi-person">오수경</i></button>
						      </li>
						    </ul>
						    <div id="writeNickNameMenu" role="menu" class="LayerMore" style="display: none;">
						      <ul class="layer_list">
						        <li class="layer_item">
						          <a href="#" role="button" class="layer_bottom">네임카드</a>
						        </li>
						        <li class="layer_item">
						          <a href="#" role="button" class="layer_bottom">차단하기</a>
						        </li>
						        <li class="layer_item">
						          <a href="#" role="button" class="layer_bottom">신고하기</a>
						        </li>
						      </ul>
						    </div>
						  </div>
                        </td>
                        <td><span class="badge bg-label-primary me-1">Active</span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bi bi-three-dots-vertical"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                                수정</a>
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>
                                Delete</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>2</strong></td>
                        <td>설계</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person">엄재용</i>
                            </li>
                          </ul>
                        </td>
                        <td><span class="badge bg-label-success me-1">Completed</span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bi bi-three-dots-vertical"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                                Edit</a>
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>
                                Delete</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>3</strong></td>
                        <td>기획</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person">박나영</i>
                            </li>
                          </ul>
                        </td>
                        <td><span class="badge bg-label-info me-1">Scheduled</span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bi bi-three-dots-vertical"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                                Edit</a>
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>
                                Delete</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <i class="fab fa-bootstrap fa-lg text-primary me-3"></i> <strong>4</strong>
                        </td>
                        <td>테스트</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person">문정환</i>
                            </li>
                          </ul>
                        </td>
                        <td><span class="badge bg-label-warning me-1">Pending</span></td>
                        <td>
                          <div class="dropdown">
                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                              <i class="bi bi-three-dots-vertical"></i>
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                                Edit</a>
                              <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i>
                                Delete</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
			
			<div class="button-right">
				<button type="button" class="btn btn-success">중도탈락 신청</button>
				<button type="button" class="btn btn-success">중도탈락 승인</button>
			</div>
            </div>
          </div>
          <!-- 탭 -->

        </div>
        <!-- //콘텐츠 -->

      </div>
    </section>
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <!-- <c:import url="../Components/Footer.jsp" ></c:import> -->
    <!-- //푸터영역 -->

  </div>

  <!-- script -->
  <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/jquery-ui.js"></script>
  <script src="../../asset/js/bootstrap.bundle.min.js"></script>
  <script src="../../asset/js/common.js"></script>
  <script>
  document.getElementById('writeNickNameButton').addEventListener('click', function() {
	  var menu = document.getElementById('writeNickNameMenu');
	  if (menu.style.display === 'none' || menu.style.display === '') {
	    menu.style.display = 'block';
	  } else {
	    menu.style.display = 'none';
	  }
	});
  </script>
</body>

</html>