<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); String cp=request.getContextPath(); %>

<!-- 프로필 -->
<div class="card">
	<div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

		<div class="profile-img rounded-circle">
			<img src="" alt="Profile">
			<div class="pt-2">
				<a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i
						class="bi bi-upload"></i></a>
				<a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i
						class="bi bi-trash"></i></a>
			</div>
		</div>
		<p class="h2">닉네임</p>
		<p class="h5">@아이디</p>
	</div>
</div>
<!-- //프로필 -->
