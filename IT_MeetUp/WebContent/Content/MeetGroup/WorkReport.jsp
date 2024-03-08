<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<div class="modal-body">
	<div id="#newItem-1" class="comp_tit">
		제목(주제) <input type="text" class="form-control" id="title"
			required="required" style="width: 450px;">
	</div>
	<div id="#newItem-2" class="comp_tit">
		내용
		<textarea class="form-control" id="content" rows="3"
			style="width: 450px;" required="required"></textarea>
	</div>
	<br>
	<hr>
	<div id="#newItem-3" class="comp_tit">
		업무 수행 기간
		<div style="display: flex;">
			<span>시작일 <input type="date" class="form-control"
				id="startDate" onchange="startDateCheck()" style="width: 150px;">
			</span> <span>종료일 <input type="date" class="form-control"
				id="endDate" onchange="endDateCheck()" style="width: 150px;">
			</span>
		</div>
	</div>
	<br>
	<hr>
	<div id="#newItem-4" class="dropdown skill-dropdown ">
		<div class="comp_tit">사용 스킬</div>
		<div class="skill-box">
			<nav>
				<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
					<c:forEach var="skill" items="${skillCategorys}" varStatus="status">
						<button
							class="nav-link 
																		<c:if test="${status.index == 0}">active</c:if>"
							id="nav-skill${status.index + 1}-tab" data-bs-toggle="tab"
							data-bs-target="#nav-skill${status.index + 1}" type="button"
							role="tab" aria-controls="nav-skill${status.index + 1}"
							aria-selected="true" value="${skill.scCode}">${skill.scName}
						</button>
					</c:forEach>
				</div>

			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-skill1" role="skill1"
					aria-labelledby="nav-skill1-tab">
					<ul class="skill-check">
						<c:forEach var="skillItem" items="${skills }" varStatus="status">
							<c:if test="${skillItem.skScCode == 'SC_1' }">
								<li>
									<div
										class="form-check skill-item 
																					<c:forEach var="entry" items="${skProcessors}">
																						 <c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
										<input class="form-check-input skill " type="checkbox"
											name="useskills" value="${skillItem.skCode }"
											id="${status.index +1}"> <label
											class="form-check-label"> ${skillItem.skName } </label>
									</div>
								</li>
							</c:if>
						</c:forEach>

					</ul>

				</div>
				<div class="tab-pane fade" id="nav-skill2" role="skill2"
					aria-labelledby="nav-skill2-tab">
					<ul class="skill-check">
						<c:forEach var="skillItem" items="${skills }" varStatus="status">

							<c:if test="${skillItem.skScCode == 'SC_2' }">
								<li>
									<div
										class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
										<input class="form-check-input skill " type="checkbox"
											name="useskills" value="${skillItem.skCode }"
											id="${status.index +1}"> <label
											class="form-check-label"> ${skillItem.skName } </label>
									</div>
								</li>
							</c:if>
						</c:forEach>

					</ul>

				</div>
				<div class="tab-pane fade" id="nav-skill3" role="skill3"
					aria-labelledby="nav-skill3-tab">
					<ul class="skill-check">

						<c:forEach var="skillItem" items="${skills }" varStatus="status">

							<c:if test="${skillItem.skScCode == 'SC_3' }">
								<li>
									<div
										class="form-check skill-item 
																						<c:forEach var="entry" items="${skProcessors}">
																							<c:set var="skillCode" value="${entry.key}" />
																							<c:set var="imageName" value="${entry.value}" />
																							
																							<c:if test="${skillCode == skillItem.skCode }">
																								${imageName}
																							</c:if>
																						</c:forEach>">
										<input class="form-check-input skill " type="checkbox"
											name="useskills" value="${skillItem.skCode }"
											id="${status.index +1}"> <label
											class="form-check-label"> ${skillItem.skName } </label>
									</div>
								</li>
							</c:if>
						</c:forEach>

					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="skill-box" id="skilArea"
		style="border: 2px solid black; border-radius: 30px; width: 300px;">
		<!-- 내가 체크한 기술 나오는 공간 -->
	</div>
	<br>
	<hr>
	<div id="#newItem-5" class="comp_tit ">
		첨부파일
		<div class="m-file">
			<label for="formFile" class="form-label">file</label> <input
				class="form-control" type="file" id="formFile">
		</div>
	</div>
</div>


