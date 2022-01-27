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
	<script>
		function loadCall() {
			window.onbeforeunload = function (e) {
				return "refresh";	
			}
		}
	</script>
</head>
<body onload="loadCall()">

<!-- 질문화면 -->
<div class="question">
    <!-- <div class="topbar-logo logo-none"></div> -->
    <div class = "box">
      <div class="text-b"><%@ include file="../ajaxContent/teamE/question.jsp"%></div>
    <img src="../resources/img/teamE/bar.jpg" class="bar" />
    </div>
    
    
    <!-- class="img-main-title block-90" -->
    <button class="btn-question-1 btn1" onclick="saveType(${1}, '${questions[0].result}')"> ${questions[0].answer} </button><br>
    <button class="btn-question-2 btn2" onclick="saveType(${2}, '${questions[1].result}')"> ${questions[1].answer} </button>
    
    <div class="number"><span id="Qnum">${questions[0].questionNum}</span>/12</div>
        
    




</div>
</body>
</html>