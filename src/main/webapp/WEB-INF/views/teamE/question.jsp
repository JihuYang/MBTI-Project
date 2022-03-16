<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamEQuestion</title>
	
	<link rel="stylesheet" type="text/css" href="../resources/css/teamE.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="../resources/js/question.js?ver=<%System.currentTimeMillis();%> %>" ></script>

</head>
<body>

<!-- 질문화면 -->
<div class="question-wrap">
    <!-- <div class="topbar-logo logo-none"></div> -->
    <div class = "box">
      <div class="text-b"><%@ include file="../ajaxContent/teamE/question.jsp"%></div>
    <img src="../resources/img/teamE/bar.jpg" class="bar">
    </div>
    
    
    <!-- class="img-main-title block-90" -->
    <button class="btn-question-1" onclick="saveType(${1}, '${questions[0].result}')"> <%@ include file="../ajaxContent/teamE/answer1.jsp"%> </button><br>
    <button class="btn-question-2" onclick="saveType(${2}, '${questions[1].result}')"> <%@ include file="../ajaxContent/teamE/answer2.jsp"%> </button>
    
    <div class="number"><span id="Qnum">${questions[0].questionNum}</span>/12</div>
    <div class="share-wrap" style="margin-top: 20px">
		
    		<a id="home-link-btn" class="btn-wrap" href="<%=request.getContextPath()%>/index"> 
		    <img src="<%=request.getContextPath()%>/resources/img/teamE/home.svg" alt="homeIcon"></a>
		    <a id="replay-link-btn" class="btn-wrap" href="./start"> 
		    <img src="<%=request.getContextPath()%>/resources/img/teamE/redo.svg" alt="redoIcon"></a>
		
    </div>
    




</div>
</body>
</html>