<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamEQuestion</title>
	
	<link rel="stylesheet" type="text/css" href="../resources/css/teamE.css">

</head>
<body>

<!-- 질문화면 -->
<div class="question">
    <!-- <div class="topbar-logo logo-none"></div> -->
    <div class = "box">
    <div class="text-b"><%@ include file="../ajaxContent/teamE/question.jsp"%></div>
    <img src="../resources/img/teamE/bar.jpg" class="bar" />
    </div>
    
    
    <!-- class="img-main-title block-90" -->
    <button class="btn-question-1" onclick="location.href='./result'" >내 생각을 충분히 정리하고 말한다.</button><br>
    <button class="btn-question-2" onclick="location.href='./result'">정리하고 말하기보다 그때그때 떠오르는 말들을 바로하는 편이다.</button>
    
    <div class="number">1/12</div>
        
    




</div>
</body>
</html>