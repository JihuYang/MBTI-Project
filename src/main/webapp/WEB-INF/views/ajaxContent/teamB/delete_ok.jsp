<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.hgu.webcamp.DTO.*,com.hgu.webcamp.DAO.*"%>
<%
	String sid = request.getParameter("id");
	System.out.println("aa");
	if (sid != "") {
		System.out.println("bb");
		int id = Integer.parseInt(sid);
		commentDTO u = new commentDTO();
		u.setId(id);
		commentDAO DAO = new commentDAO();
		DAO.deleteComment(id);
	}
	response.sendRedirect("<%=request.getContextPath()%>/result");
%>