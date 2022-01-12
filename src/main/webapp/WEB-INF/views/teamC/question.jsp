<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamCQuestion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
	$(function() {
		var progressbar = $("#progressbar"), progressLabel = $(".progress-label");

		progressbar.progressbar({
			value : 1 / 12 * 100,
			change : function() {
				progressLabel.text("Current Progress: "
						+ progressbar.progressbar("value") + "%");
			}
		});

	});
</script>
<style>
#progressbar {
	width: 400px;
	height: 10px;
	margin: auto;
}

.progress-label {
	font-weight: bold;
	margin:auto;
	text-shadow: 1px 1px 0 #fff;
}

#quiz-button {
	
}

#Button1 {
	width: 400px;
	height: 87px;
	margin: auto;
	display: block;
	background: #4BDF86;
	border: 3px solid #000000;
	box-shadow: 10px 10px 0px #000000;
	font-family: Do Hyeon;
}

#Button2 {
	margin: auto;
	display: block;
	width: 400px;
	height: 87px;
	left: 57px;
	background: #FF005C;
	border: 3px solid #000000;
	box-shadow: 10px 10px 0px #000000;
}

#quiz-img {
	margin: auto;
}

.quiz-question {
	margin: auto;
	font-size:20px;
	font-weight: bold;
}

footer {
	margin: auto;
}
</style>
</head>
<body>
	<div id="main"></div>
	<div id="progressDiv">
		<div id="progressbar"></div>

		<div class="progress-label" style='width: 100%; text-align: center; padding-top: 100px'>Q1/12</div>


	</div>
	<div class="quiz-question" for="baboya"
		style='width: 100%; text-align: center; padding-top: 100px'>힘들게
		공부한 시험 결과가 좋지 않다... 어떻게 하면 기분이 나아질까..</div>

	<div class="imgDiv"
		style='width: 100%; text-align: center; padding-top: 100px'>
		<img class="quiz-img" src="../resources/img/teamC/q1.png" width="150" />
	</div>

	<div id="quiz-button" style='width: 100%; text-align: center;'>
		<button id="Button1" onclick="moveSlider(-1)">사람들과 만나서 놀아야지!!
			집에 혼자 있으면 괜히 울적해지기만 한다.</button>
		<button id="Button2" onclick="">집에서 조용히 쉬어야지 이럴 때 나가봤자 더
			힘들어...</button>
	</div>
	<footer> </footer>
</body>
</html>


