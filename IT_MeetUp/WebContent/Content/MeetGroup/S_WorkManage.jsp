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

        <!-- 콘텐츠 -->
        <div class="content">

          <div class="content_tit">
            <p class="h3">Heading 3</p>
            <!-- 브레드크럼블 -->
            <div role="breadcrumb" data-include="../Components/Breadcrumb.jsp"></div>
            <!-- //브레드크럼블 -->
          </div>

          <div class="card tbl-card">
            <h5 class="card-header">Table Basic</h5>
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
                    <th class="dep0"><span class="blind">1 dep</span></th>
                    <th>주제</th>
                    <th>시작일</th>
                    <th>종료일</th>
                    <th>담당자</th>
                    <th>Status</th>
                    <th>Actions</th>
                    <th>Add</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="range-datepicker">
                    <td class="dep0"><i class="bi bi-folder2-open"></i></td>
                    <td><strong>분석</strong></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                  <tr class="range-datepicker">
                    <td class="dep0">└</td>
                    <td><input type="text" class="form-control form-control-plaintext" id="validationCustom01" value="요구사항분석"></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" disabled class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                  <tr class="range-datepicker">
                    <td class="dep0">└</td>
                    <td><input type="text" class="form-control" id="validationCustom01"></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                  <tr class="range-datepicker">
                    <td class="dep0"><i class="bi bi-folder2-open"></i></td>
                    <td><strong>설계</strong></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                  <tr class="range-datepicker">
                    <td class="dep0"><i class="bi bi-folder2-open"></i></td>
                    <td><strong>구현</strong></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                  <tr class="range-datepicker">
                    <td class="dep0"><i class="bi bi-folder2-open"></i></td>
                    <td><strong>테스트</strong></td>
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
                      담당자명
                    </td>
                    <td>
                      <div class="m-select">
                        <select class="form-select" aria-label="Default select example" title="selectTitle01">
                          <option selected="">Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bi bi-three-dots-vertical"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-pencil-square"></i>
                            Edit</a>
                          <a class="dropdown-item" href="javascript:void(0);"><i class="bi bi-trash3"></i> Delete</a>
                        </div>
                      </div>
                    </td>
                    <td>
                      <button type="button" class="btn btn-primary btn-plus"><i class="bi bi-plus-circle-dotted"></i></button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>

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