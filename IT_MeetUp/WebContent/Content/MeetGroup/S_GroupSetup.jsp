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

        <!-- 콘텐츠 -->
        <div class="content">

          <div class="content_tit">
            <p class="h3">Heading 3</p>
            <!-- 브레드크럼블 -->
            <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
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

              <div class="content_tit">
                <p class="h4">Heading 4</p>
              </div>

            </div>
            <div class="tab-pane fade" id="nav-tab02" role="tabpanel" aria-labelledby="nav-tab02-tab">

              <div class="content_tit">
                <p class="h4">Heading 4</p>
              </div>

              <div class="card tbl-card">
                <h5 class="card-header">Table Basic</h5>
                <div class="table-responsive text-nowrap">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>Project</th>
                        <th>Client</th>
                        <th>Users</th>
                        <th>Status</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>Angular Project</strong></td>
                        <td>Albert Cook</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person"></i>
                            </li>
                          </ul>
                        </td>
                        <td><span class="badge bg-label-primary me-1">Active</span></td>
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
                        <td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>React Project</strong></td>
                        <td>Barry Hunter</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person"></i>
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
                        <td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>VueJs Project</strong></td>
                        <td>Trevor Baker</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person"></i>
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
                          <i class="fab fa-bootstrap fa-lg text-primary me-3"></i> <strong>Bootstrap Project</strong>
                        </td>
                        <td>Jerry Milton</td>
                        <td>
                          <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                            <li data-bs-toggle="tooltip" data-popup="tooltip-custom" data-bs-placement="top"
                              class="avatar avatar-xs pull-up" title="" data-bs-original-title="Lilian Fuller">
                              <i class="bi bi-person"></i>
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

            </div>
          </div>
          <!-- 탭 -->

        </div>
        <!-- //콘텐츠 -->

      </div>
    </section>
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <!-- <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div> -->
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