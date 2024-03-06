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

<script src="<%=cp%>/asset/js/jquery-3.5.1-min.js"></script>
<script src="<%=cp%>/asset/js/jquery-ui.js"></script>
<script src="<%=cp%>/asset/js/bootstrap.bundle.min.js"></script>
<script src="<%=cp%>/asset/js/common.js"></script>
<script type="text/javascript">
	$(function()
	{
		$("#modifyTeamName").click(function()
		{
			// 데이터 검사(누락된 입력값이 있는지 없는지에 대한 여부 확인)
			if ($("#teamName").val() == "")
			{
				$("#err").html("번호 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#teamName").focus();
				return; //-- submit 액션 처리 중단
			}

			var teamName = $("#teamName").val();
			$.post("groupteamnamemodify.action",
			{
				teamName : teamName
			}, function(data)
			{
				// 수정 성공 시 모달 닫기
				$("#teamnameUpdate").modal("hide");
				// 페이지 리로드 또는 필요한 작업 수행
				window.location.href = "groupSetup.action";
			});
		});
	});
</script>

</html>