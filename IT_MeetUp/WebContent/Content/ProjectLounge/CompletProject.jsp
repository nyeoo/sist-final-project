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
  <link rel="stylesheet" href="../../asset/css/style.css">
  <link rel="stylesheet" href="../../asset/css/layout_bny.css">

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
                  <form class="dropdown-menu p-4">
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-home" role="skill01"
                        aria-labelledby="nav-home-tab">
                        <ul class="category-check">
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                O2O
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                공유서비스
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                데이트/결혼
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                여행
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                소셜네트워크
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                뷰티/패션
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                이커머스
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                엔터테인먼트
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                게임
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                헬스/스포츠
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                뉴스/정보
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                유틸
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                금융/핀테크
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                부동산/인테리어
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                종교
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                교육/HR
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                의료/병원
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                모빌리티
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                육아/출산
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                우주/외계인
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check category-item">
                              <label class="form-check-label">
                                <input class="form-check-input category-input" type="checkbox" value="" id="">
                                IT/테크
                              </label>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </form>
                </div>
              </li>
			 <!--  <li>
                <div class="m-select ">
                  <select class="form-select" aria-label="정렬" title="정렬">
                    <option selected>조회수</option>
                    <option value="1">최신순</option>
                  </select>
                </div>
              </li> -->
            </ul>
          </div>
		  <!-- //필터(카테고리) -->
          <div class="con-section complete-list">
			<ul class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
				<!-- 이미지 썸네일 -->
				<!-- <li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column add-zzim ">
						<div class="card-top">
							썸네일 이미지
							<div class="thumbnail-box img-box">
								<img src="../../asset/images/img_sample00.jpg" alt="썸네일샘플" />
							</div>
						</div>
						<div class="card-bottom">
							제목
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
									프로젝트 제목
								</span>
							</a>
							상세내용
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				//이미지 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column  add-zzim">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">프로젝트 제목 프로젝트 제목 프로젝트 제목 프로젝트 제목 프로젝트 제목</div>
								<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
								프로젝트 제목
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				<!-- //텍스트 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column  add-zzim">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
								<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">프로젝트 제목
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				<!-- //텍스트 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column add-zzim ">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
								<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
									프로젝트 제목
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				<!-- //텍스트 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column  add-zzim">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
								<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
									제목입니다.제목입니다.<br>제목입니다.제목입니다.
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				<!-- //텍스트 썸네일 -->
				<!-- 텍스트 썸네일 -->
				<li class="col-12 col-sm-6 col-md-4 col-lg-4">
					<div class="card p-3 d-flex flex-column  add-zzim">
						<div class="card-top">
							<!-- 썸네일 텍스트 -->
							<div class="thumbnail-box thumnail-txt">
								<div class="thumbnail-tit text-truncate">제목입니다.제목입니다.</div>
								<div class="thumbnail-txt text-truncate">#팀이름팀이름</div>
							</div>
						</div>
						<div class="card-bottom">
							<!-- 제목 -->
							<a href="javascript:;" class="card-tit mb-2">
								<span class="h3">
									제목입니다.제목입니다.<br>제목입니다.제목입니다.
								</span>
							</a>
							<!-- 상세내용 -->
							<p class="card-text text-truncate mb-2">내용입니다. 내용입니다. 내용입니다.</p>
						</div>
					</div>
				</li>
				<!-- //텍스트 썸네일 -->
			</ul>
		

          <!-- 페이지네이션 -->
          <div class="page-box">
            <nav aria-label="Page navigation example">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
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
  <script src="../../asset/js/jquery-3.5.1-min.js"></script>
  <script src="../../asset/js/jquery-ui.js"></script>
  <script src="../../asset/js/bootstrap.bundle.min.js"></script>
  <script src="../../asset/js/swiper-bundle.min.js"></script>
  <script src="../../asset/js/common.js"></script>
  <script>

  </script>
</body>

</html>