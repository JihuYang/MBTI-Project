<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  jquery CDN  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamA.css?ver=1">
<script src="../resources/js/question.js?ver=<%System.currentTimeMillis();%> %>" ></script>
<script>
		function loadCall() {
			window.onbeforeunload = function (e) {
				return "refresh";	
			}
		}
</script>	

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamA 질문</title>
</head>
<body onload="loadCall()">
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content ">
				<div id="questionContent">
					<%@ include file="../ajaxContent/teamA/question.jsp"%>
					
				</div>
				<%-- <c:forEach items="${questions}" var="q" varStatus="status">--%>
					<div id="bottom" class="bottom">
						<button type="button" class="btn btn-light btn-answer btn1"
							onclick="saveType(${1}, '${questions[0].result}')">${questions[0].answer}</button>
					</div>
					<div id="bottom" class="bottom">
						<button type="button" class="btn btn-light btn-answer btn2"
							onclick="saveType(${2}, '${questions[1].result}')">${questions[1].answer}</button>
					</div>
				<%-- </c:forEach> --%>
				
			</div>
			<div class="col d-none d-lg-block"></div>
		</div>

	</div>
	<footer class="text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>