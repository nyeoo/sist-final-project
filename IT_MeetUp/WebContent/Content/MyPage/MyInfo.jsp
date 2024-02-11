<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>

<!-- 내정보 -->
<div class="row con-section">
	<div class="col-md-4 my-user">

		<!-- 프로필영역 -->
		<c:import url="../MyPage/Profile.jsp"></c:import>
		<!-- //프로필영역 -->

	</div>

	<div class="col-md-8">
		<!-- 내정보조회 및 수정 -->
		<div class="card">
			<div class="card-body pt-3">
				<form>

					<div class="row mb-3">
						<label for="myId" class="col-md-3 col-lg-2 col-form-label">아이디</label>
						<div class="col-md-9 col-lg-10">
							<input name="myId" type="text" class="form-control" id="myId"
								value="Kevin Anderson">
						</div>
					</div>

					<div class="row mb-3">
						<label for="myId" class="col-md-3 col-lg-2 col-form-label">비밀번호</label>
						<div class="col-md-9 col-lg-10">
							<input name="myPassword" type="password" class="form-control"
								disabled="" id="myPassword">
						</div>
					</div>

					<div class="row mb-3">
						<label for="myName" class="col-md-3 col-lg-2 col-form-label">이름</label>
						<div class="col-md-9 col-lg-10">
							<input name="myId" type="text" class="form-control" id="myName"
								value="Kevin Anderson">
						</div>
					</div>

					<div class="row mb-3">
						<label for="Email" class="col-md-3 col-lg-2 col-form-label">이메일</label>
						<div class="col-md-9 col-lg-10">
							<input name="email" type="email" class="form-control" readonly=""
								id="Email" value="meetup@example.com">
						</div>
					</div>

					<div class="col-12">
						<a href="javascript:;" class="text-muted float-end">탈퇴하기</a>
					</div>

					<div class="col-12 btn-box">
						<div class="btn-center">
							<button type="button" class="btn btn-primary">저장하기</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
		<!-- //내정보조회 및 수정 -->

	</div>

</div>
<!-- //내정보 -->
<!-- 모집/신청관리 & 차단관리 -->
<div class="my-detail con-section">
	<div class="row">
		<nav>
			<div class="nav nav-tabs nav-tabs-bordered mb-3" id="nav-tab"
				role="tablist">
				<button class="nav-link active" id="nav-management-tab"
					data-bs-toggle="tab" data-bs-target="#nav-management" type="button"
					role="tab" aria-controls="nav-management" aria-selected="false">모집/신청관리</button>
				<button class="nav-link" id="nav-block-tab" data-bs-toggle="tab"
					data-bs-target="#nav-block" type="button" role="tab"
					aria-controls="nav-block" aria-selected="false">차단관리</button>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">

			<!-- 모집/신청 관리 탭 -->
			<div class="tab-pane fade show active" id="nav-management"
				role="tabpanel" aria-labelledby="nav-management-tab">
				<nav>
					<div class="nav nav-tabs nav-tabs-bordered mb-3"
						id="nav-management-subtab" role="tablist">
						<button class="nav-link active" id="nav-applied-tab"
							data-bs-toggle="tab" data-bs-target="#nav-applied" type="button"
							role="tab" aria-controls="nav-applied" aria-selected="true">신청한
							모집공고</button>
						<button class="nav-link" id="nav-created-tab" data-bs-toggle="tab"
							data-bs-target="#nav-created" type="button" role="tab"
							aria-controls="nav-created" aria-selected="false">작성한
							모집공고</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-management-subtabContent">
					<!-- 신청한 모집공고 탭 -->
					<div class="tab-pane fade show active" id="nav-applied"
						role="tabpanel" aria-labelledby="nav-applied-tab">
						<div class="board_list">
							<!-- 신청한 모집공고 목록과 내용 -->
							<table class="table table-hover">
								<colgroup>
									<col class="num" style="width: 70px">
									<col class="category">
									<col class="tit">
									<col class="strat_date" style="width: 120px;">
									<col class="end_date" style="width: 120px;">
									<col class="join_date" style="width: 120px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="num">번호</th>
										<th scope="col" class="category">구분</th>
										<th scope="col" class="tit">제목</th>
										<th scope="col" class="start_date">시작일</th>
										<th scope="col" class="end_date">종료일</th>
										<th scope="col" class="join_date">신청일자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">1</span></td>
										<td class="category">모집중</td>
										<td class="tit new"><a href="projectDetail.jsp">어쩌고
												저쩌고 프로젝트 모집중입니다. 클릭시 상세한 내용이 나옵니다. <span class="ico_att_new">new</span>
										</a></td>
										<td class="start_date">2023.02.06</td>
										<td class="end_date">2023.08.06</td>
										<td class="join_date">2023.01.11</td>
									</tr>
								</tbody>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">2</span></td>
										<td class="category">모집완료</td>
										<td class="tit"><a href="projectDetail.jsp"> 어쩌고 저쩌고
												프로젝트 모집중입니다. 클릭시 상세한 내용이 나옵니다. </a></td>
										<td class="start_date">2022.04.06</td>
										<td class="end_date">2022.10.06</td>
										<td class="join_date">2022.03.20</td>
									</tr>
								</tbody>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">3</span></td>
										<td class="category">모집실패</td>
										<td class="tit"><a href="projectDetail.jsp">어쩌고 저쩌고
												프로젝트 모집중입니다. 클릭시 상세한 내용이 나옵니다. </a></td>
										<td class="start_date">2021.02.06</td>
										<td class="end_date">2021.08.06</td>
										<td class="join_date">2021.01.21</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- 페이지네이션 -->
						<div class="page-box">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">2</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">3</a>
									</li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<!-- //페이지네이션 -->

					</div>
					<!-- //신청한 모집공고 탭 -->
					<!-- 작성한 모집공고 탭 -->
					<div class="tab-pane fade" id="nav-created" role="tabpanel"
						aria-labelledby="nav-created-tab">
						<div class="board_list">
							<!-- 작성한 모집공고 목록과 내용 -->
							<table class="table table-hover">
								<colgroup>
									<col class="num" style="width: 70px">
									<col class="category">
									<col class="tit">
									<col class="strat_date" style="width: 120px;">
									<col class="end_date" style="width: 120px;">
									<col class="join_date" style="width: 120px;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="num">번호</th>
										<th scope="col" class="category">구분</th>
										<th scope="col" class="tit">제목</th>
										<th scope="col" class="start_date">시작일</th>
										<th scope="col" class="end_date">종료일</th>
										<th scope="col" class="join_date">신청일자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">1</span></td>
										<td class="category">모집중</td>
										<td class="tit new"><a href="listDetail.jsp">어쩌고 저쩌고
												프로젝트 모집중입니다. 클릭시 상세한 내용이 나옵니다. <span class="ico_att_new">new</span>
										</a></td>
										<td class="start_date">2023.02.06</td>
										<td class="end_date">2023.08.06</td>
										<td class="join_date">2023.01.11</td>
									</tr>
								</tbody>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">2</span></td>
										<td class="category">모집완료</td>
										<td class="tit"><a href="listDetail.jsp"> 어쩌고 저쩌고
												프로젝트 모집중입니다. 클릭시 상세한 내용이 나옵니다. </a></td>
										<td class="start_date">2022.04.06</td>
										<td class="end_date">2022.10.06</td>
										<td class="join_date">2022.03.20</td>
									</tr>
								</tbody>
								<tbody>
									<tr>
										<td class="num"><span class="tag_txt">3</span></td>
										<td class="category">모집실패</td>
										<td class="tit"><a href="listDetail.jsp">어쩌고 저쩌고 프로젝트
												모집중입니다. 클릭시 상세한 내용이 나옵니다. </a></td>
										<td class="start_date">2021.02.06</td>
										<td class="end_date">2021.08.06</td>
										<td class="join_date">2021.01.21</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- 페이지네이션 -->
						<div class="page-box">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">2</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">3</a>
									</li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
							</nav>
						</div>
						<!-- //페이지네이션 -->
					</div>
					<!-- //작성한 모집공고 탭 -->
				</div>
			</div>
			<!-- //모집/신청 관리 탭 -->
			<!-- 차단관리 탭 -->
			<div class="tab-pane fade" id="nav-block" role="tabpanel"
				aria-labelledby="nav-block-tab">
				<div class="board_list">
					<!-- 차단 관리에 관련된 목록과 내용 -->
					<table class="table table-hover">
						<caption>목록 : 번호, 차단 날짜, 차단한 닉네임, 차단여부</caption>
						<colgroup>
							<col class="num" style="width: 70px">
							<col class="date" style="width: 300px;">
							<col class="name">
							<col class="category">
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="num">번호</th>
								<th scope="col" class="date">차단 날짜</th>
								<th scope="col" class="name">차단 닉네임</th>
								<th scope="col" class="category">차단 여부</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="num"><span class="tag_txt">1</span></td>
								<td class="date">2023.02.06</td>
								<td class="name">흑곰발바닥</td>
								<td class="category"><button type="button"
										class="btn btn-primary">차단 해제</button></td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td class="num"><span class="tag_txt">2</span></td>
								<td class="date">2022.02.01</td>
								<td class="name">이주형은 멋쟁이</td>
								<td class="category"><button type="button"
										class="btn btn-primary">차단 해제</button></td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td class="num"><span class="tag_txt">3</span></td>
								<td class="date">2021.11.26</td>
								<td class="name">2조 화이팅</td>
								<td class="category"><button type="button"
										class="btn btn-primary">차단 해제</button></td>
							</tr>
						</tbody>
						<tbody>
							<tr>
								<td class="num"><span class="tag_txt">4</span></td>
								<td class="date">2020.12.21</td>
								<td class="name">하성이형 아웃</td>
								<td class="category"><button type="button"
										class="btn btn-primary">차단 해제</button></td>
							</tr>
						</tbody>
					</table>
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
			<!-- 차단관리 탭 -->
		</div>
	</div>
</div>
<!-- //모집/신청관리 & 차단관리 -->