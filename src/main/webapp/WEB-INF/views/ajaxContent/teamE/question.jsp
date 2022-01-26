<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<%--  <c:forEach items="${questions}" var="q" varStatus="status">
			<div class="main_question">${q.question}</div>
		</c:forEach>--%>
		<div class="main_question question">${questions[0].question}</div>