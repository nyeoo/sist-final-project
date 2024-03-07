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
  <title>CompletProject.jsp</title>
  <meta name="description" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="subject" content="IT 프로젝트 모집·진행 웹 어플리케이션">
  <meta name="title" content="IT MeetUp">
  <meta name="author" content="Sist 2Team">
  <meta name="keywords" content="IT 프로젝트 모집, 사이드 프로젝트 진행">

  <!-- css -->
  <link rel="stylesheet" href="<%=cp %>/asset/css/style.css">
  <link rel="stylesheet" href="<%=cp %>/asset/css/layout_bny.css">

</head>

<body>
  <div class="wrapper">

    <!-- 헤더영역 -->
    <c:import url="../Components/Header.jsp"></c:import>
    <!-- //헤더영역 -->

    <!-- 바디영역 -->
    <section class="m-body-area c-body-section">
      <!-- <div class="section bg-body-tertiary"> -->
        <div class="container-xl">
          <p class="h1">완료된 프로젝트</p>

          <!-- 필터(카테고리) -->
          <div class="filter-box mb-4">
            <ul class="d-flex category">
              <li>
                <div class="dropdown category-dropdown category-box">
                  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
                    aria-expanded="false" data-bs-auto-close="outside">
                    카테고리
                  </button>
                  <form class="dropdown-menu p-4" id="form" action="completeproject.action">
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-home" role="skill01"
                        aria-labelledby="nav-home-tab">
                        <ul class="category-check">
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="allCheck">
                                전체
                              </label>
                            </div>
                          </li>
                          <c:forEach var="cat" items="${catList }">
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" name="checkedValues" value="${cat.catCode}" id="">
                                ${cat.catName }
                              </label>
                            </div>
                          </li>
                          </c:forEach>
                        </ul>
                      </div>
                    </div>
                  </form>
                </div>
              </li>
            </ul>
          </div>
		  <!-- //필터(카테고리) -->
          <div class="con-section complete-list">
			<ul class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
				<!-- //이미지 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<c:forEach var="cp" items="${cpList }">
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column  add-zzim">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">${cp.title }</div>
								<div class="thumbnail-txt text-truncate">#${cp.teamName }</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
								${cp.title }
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">${cp.content }</p>
						</div>
					</div>
				</li>
				</c:forEach>
				<!-- //텍스트 썸네일 -->
			</ul>
		

          <!-- 페이지네이션 -->
          <div class="page-box">
            <nav aria-label="Page navigation example">
              <ul class="pagination">${indexList }</ul>
            </nav>
          </div>
          <!-- //페이지네이션 -->
        </div>

      </div>

    </section>
    <!-- //바디영역 -->

    <!-- 푸터영역 -->
    <c:import url="../Components/Footer.jsp" ></c:import>
    <!-- //푸터영역 -->

  </div>

  <!-- script -->
  <script src="<%=cp %>/asset/js/jquery-3.5.1-min.js"></script>
  <script src="<%=cp %>/asset/js/jquery-ui.js"></script>
  <script src="<%=cp %>/asset/js/bootstrap.bundle.min.js"></script>
  <script src="<%=cp %>/asset/js/swiper-bundle.min.js"></script>
  <script src="<%=cp %>/asset/js/common.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
        $('#allCheck').click(function () {
            var checked = $('#allCheck').is(':checked');
            if (checked)
                $('input:checkbox').prop('checked', true);
            else
                $('input:checkbox').prop('checked', false);
        });
    });
</script>
</body>
</html>