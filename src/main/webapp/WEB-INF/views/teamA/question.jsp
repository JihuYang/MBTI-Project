<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamA.css">
<link rel="stylesheet" type="text/css"
	href="../resources/js/question.js">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamA 질문</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content ">
				<div id="questionContent">
					<%@ include file="../ajaxContent/teamA/question.jsp"%>
				</div>
				<div id="bottom" class="bottom">
<%-- 					<button type="button" class="btn btn-light btn-answer"
						onclick="readQuestion(${1})">역시 세상은 따뜻해ㅠㅠ(감동)</button> --%>
					<button type="button" class="btn btn-light btn-answer"
						onclick="location.href='./loading')">역시 세상은 따뜻해ㅠㅠ(감동)</button>
				</div>
				<div id="bottom" class="bottom">
					<button type="button" class="btn btn-light btn-answer"
						onclick="location.href='./loading'">내가 알아서 할 수 있는ㄷ.. 초큼
						부담스럽다..</button>
				</div>

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