<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<body>
	<form role="form" action="groupteamnamemodify.action" method="post"
		id="updateForm">
		<div class="modal fade" id="teamnameUpdate" tabindex="-1"
			aria-labelledby="#completeListLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="completeListLabel">그룹원 수정</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="modal-contents">
							<div class="con-section complete-list">

								<div class="row">
									<div class="col-md-8">
										<div class="mb-3">
											<label for="teamName" class="form-label">팀명</label> <input
												type="text" class="form-control" id="teamName"
												name="teamName" value="${opdto.teamName}">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">나가기</button>
						<button type="button" class="btn btn-primary" id="modifyTeamName">수정하기</button>

						<span id="err"
							style="color: red; font-weight: bold; display: none;"></span>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>