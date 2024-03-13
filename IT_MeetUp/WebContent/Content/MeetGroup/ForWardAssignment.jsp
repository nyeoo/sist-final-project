<%@page import="com.itmeetup.mybatis.AssignmentDTO"%>
<%@ page contentType="application/json; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");
    ArrayList<AssignmentDTO> outputList = (ArrayList<AssignmentDTO>) request.getAttribute("searchOutputList");
    
    StringBuilder jsonOutput = new StringBuilder("[");
    for (int i = 0; i < outputList.size(); i++) {
        AssignmentDTO assignment = outputList.get(i);
        jsonOutput.append("{\"ouCode\": \"").append(assignment.getOuCode()).append("\", \"ouName\": \"").append(assignment.getOuName()).append("\"}");
        if (i < outputList.size() - 1) {
            jsonOutput.append(",");
        }
    }
    jsonOutput.append("]");
    
    out.println(jsonOutput.toString());
%>
