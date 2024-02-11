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
  <title>PostList</title>
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

      <div class="section">
        <div class="container-xl">
          <p class="h1">마감임박</p>

          <!-- 마감 스와이퍼 -->
          <div class="deadline-box">
            <div class="deadline-swiper-btn">
              <button type="button" class="swiper-button-prev"><i class="bi bi-arrow-left-circle"></i>
                <span class="blind">이전</span>
              </button>
              <button type="button" class="swiper-button-next"><i class="bi bi-arrow-right-circle"></i>
                <span class="blind">이후</span>
              </button>
            </div>
            <div class="swiper deadlineSwiper">
              <ul class="swiper-wrapper card-list">
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
                <li class="swiper-slide">
                  <div class="card p-4 d-flex flex-column">
                    <!-- 찜하기 -->
                    <div class="form-check zzim">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                        <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                      </label>
                    </div>
                    <!-- 데드라인/ 시작예정일 - 예상기간 -->
                    <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                    <!-- 직무 -->
                    <div class="d-flex job-box mb-3">
                      <span class="badge rounded-pill bg-primary">프론트</span>
                      <span class="badge rounded-pill bg-secondary">백</span>
                      <span class="badge rounded-pill bg-success">기획</span>
                      <span class="badge rounded-pill bg-danger">디자인</span>
                    </div>
                    <!-- 작성자 -->
                    <strong class="mt-5 mb-2 text-primary-emphasis writer"><span
                        class="leader-level"></span>작성자닉네임</strong>
                    <!-- 제목 -->
                    <a href="javascript:;" class="card-tit mb-3">
                      <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                    </a>
                    <!-- 상세내용 -->
                    <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                    <div class="d-flex justify-content-between align-items-center">
                      <!-- 사용언어 -->
                      <div class="language-box">
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                        <span class="badge-language"><span class="blind">파이썬</span></span>
                      </div>
                      <!-- 조회수 -->
                      <small class="text-body-secondary">view 10</small>
                    </div>
                  </div>
                </li>
              </ul>
              <div class="swiper-pagination"></div>
            </div>
          </div>
          <!-- //마감 스와이퍼 -->

        </div>
      </div>
      <div class="section bg-body-tertiary">
        <div class="container-xl">
          <p class="h1">프로젝트</p>

          <!-- 필터 -->
          <div class="filter-box mb-5">
            <ul class="d-flex">
              <li>
                <div class="m-select">
                  <select class="form-select" aria-label="경력" title="경력">
                    <option selected>경력</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select>
                </div>
              </li>
              <li>
                <div class="dropdown skill-dropdown skill-box">
                  <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
                    aria-expanded="false" data-bs-auto-close="outside">
                    보유스킬
                  </button>
                  <form class="dropdown-menu p-4">
                    <nav>
                      <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab"
                          data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home"
                          aria-selected="true">프론트</button>
                        <button class="nav-link" id=av-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile"
                          type="button" role="tab" aria-controls="nav-profile" aria-selected="false">백엔드</button>
                        <button class="nav-link" id자인av-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact"
                          type="button" role="tab" aria-controls="nav-contact" aria-selected="false">기획, 디자인,
                          개발툴</button>
                      </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                      <div class="tab-pane fade show active" id="nav-home" role="skill01"
                        aria-labelledby="nav-home-tab">
                        <ul class="skill-check">
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="tab-pane fade" id="nav-profile" role="skill02" aria-labelledby="nav-profile-tab">
                        <ul class="skill-check">
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="tab-pane fade" id="nav-contact" role="skill03" aria-labelledby="nav-contact-tab">
                        <ul class="skill-check">
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check skill-item">
                              <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" value="" id="">
                                Default checkbox
                              </label>
                            </div>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </form>
                </div>
              </li>
              <li>
                <div class="d-flex">
                  <div class="m-select">
                    <select class="form-select" aria-label="선호지역 1단계(시)" title="선호지역 1단계(시)">
                      <option selected>Open this select menu</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                  </div>
                  <div class="m-select">
                    <select class="form-select" aria-label="선호지역 1단계(도)" title="선호지역 1단계(도)">
                      <option selected>Open this select menu</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                  </div>
                </div>
              </li>
              <li>
                <div class="m-select">
                  <select class="form-select" aria-label="선호 모임방식" title="선호 모임방식">
                    <option selected>Open this select menu</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                  </select>
                </div>
              </li>
              <li>
                <div class="form-check">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="">
                    Default checkbox
                  </label>
                </div>
              </li>
            </ul>
          </div>

          <ul class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 card-list">
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
            <li class="col-12 col-sm-6 col-md-4 col-lg-3">
              <div class="card p-4 d-flex flex-column">
                <!-- 찜하기 -->
                <div class="form-check zzim">
                  <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" value="" id="" title="찜하기">
                    <span class="icon-box"><i class="bi bi-heart"></i><i class="bi bi-heart-fill"></i></span>
                  </label>
                </div>
                <!-- 데드라인/ 시작예정일 - 예상기간 -->
                <div class="mb-1 text-body-secondary"><span class="deadline">(D-100)</span>2.4 - 3.19</div>
                <!-- 직무 -->
                <div class="d-flex job-box mb-3">
                  <span class="badge rounded-pill bg-primary">프론트</span>
                  <span class="badge rounded-pill bg-secondary">백</span>
                  <span class="badge rounded-pill bg-success">기획</span>
                  <span class="badge rounded-pill bg-danger">디자인</span>
                </div>
                <!-- 작성자 -->
                <strong class="mt-5 mb-2 text-primary-emphasis writer"><span class="leader-level"></span>작성자닉네임</strong>
                <!-- 제목 -->
                <a href="javascript:;" class="card-tit mb-3">
                  <h3>제목입니다.제목입니다.<br>제목입니다.제목입니다.</h3>
                </a>
                <!-- 상세내용 -->
                <p class="card-text text-truncate mb-3">내용입니다. 내용입니다. 내용입니다. 내용입니다. 내용입니다.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <!-- 사용언어 -->
                  <div class="language-box">
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                    <span class="badge-language"><span class="blind">파이썬</span></span>
                  </div>
                  <!-- 조회수 -->
                  <small class="text-body-secondary">view 10</small>
                </div>
              </div>
            </li>
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
    <div role="footer" data-include="../Components/Footer.jsp" class="mt-auto"></div>
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