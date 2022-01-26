<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<!--  responsive web -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>teamDQuestion</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
	<script src="../resources/js/question.js?ver=<%System.currentTimeMillis();%> %>" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</head>
<body>
	<div id="wrapper">
		<h1>Q<span id="Qnum">1</span>. ${questions[0].question}</h1>
		<div id="an1" onclick="saveType(${1}, '${questions[0].result}')">
			<h2 class="btn1">${questions[0].answer}</h2><br>
		</div>
		<div id="an2" onclick="saveType(${2}, '${questions[1].result}')">
			<h2 class="btn2" >${questions[1].answer}</h2>
		</div>
	</div>
</body>
</html>