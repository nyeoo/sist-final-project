<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<aside id="sidebar" class="sidebar">
	<i class="bi bi-layout-text-window-reverse toggle-sidebar-btn"></i>
	<div class="sidebar-inner">
		<ul class="sidebar-nav" id="sidebar-nav">

			<!-- <li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav01" data-bs-toggle="collapse"
				href="#"> <i class="bi bi-menu-button-wide"></i><span>진행중인
						그룹</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav01" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="javascript:;"> <i class="bi bi-circle"></i><span>그룹3</span>
					</a></li>
				</ul></li>
			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#components-nav02" data-bs-toggle="collapse"
				href="#"> <i class="bi bi-menu-button-wide"></i><span>완료된
						그룹</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav02" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="javascript:;"> <i class="bi bi-circle"></i><span>그룹1</span>
					</a></li>
					<li><a href="javascript:;"> <i class="bi bi-circle"></i><span>그룹2</span>
					</a></li>
				</ul></li> -->


			<li class="nav-heading">Pages</li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="grouphome.action?memCode=${sessionScope.loginDTO.piMemCode}"> <i class="bi bi-grid"></i> <span>그룹홈</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="calendar.action?memCode=${sessionScope.loginDTO.piMemCode}"> <i class="bi bi-grid"></i> <span>캘린더</span>
				
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed"
				href="weeklyReport.action?memCode=${sessionScope.loginDTO.piMemCode}"> <i class="bi bi-grid"></i> <span>주간업무
						보고</span>
			</a></li>


			<li class="nav-item"><a class="nav-link collapsed" href="workManage.action?memCode=${sessionScope.loginDTO.piMemCode}"> <i class="bi bi-grid"></i> <span>업무
						관리</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed" href="groupSetup.action?memCode=${sessionScope.loginDTO.piMemCode}">
					<i class="bi bi-person"></i> <span>그룹원 정보</span>
			</a></li>
		</ul>
	</div>
</aside>