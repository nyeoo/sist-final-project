<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<nav>
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="javascript:;">1depth</a></li>
      <li class="breadcrumb-item"><a href="javascript:;">2depth</a></li>
      <li class="breadcrumb-item active"><a href="javascript:;">3depth</a></li>
    </ol>
</nav>