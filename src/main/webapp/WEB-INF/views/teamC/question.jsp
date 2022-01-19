<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script>
	$(function() {
		var progressbar = $("#progressbar"), progressLabel = $(".progress-label");

		progressbar.progressbar({
			value : 25,
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
	margin-top: 20px;
}

.progress-label {
	font-weight: bold;
	margin-top: 20px;
	text-shadow: 1px 1px 0 #fff;
}

#quiz-button {
	font-family: "Do Hyeon";
	margin-top: 50px;
}

#Button1 {
	width: 400px;
	height: 87px;
	display: block;
	background: #FFC700;
	border: 3px solid #000000;
	box-shadow: 10px 10px 0px #000000;
	border-radius:10px;
	color:black;
	
}
#Button1:hover{
	background:#FFE58A;
	
}

#Button2 {
	display: block;
	width: 400px;
	height: 87px;
	background: #FFC700;
	border: 3px solid #000000;
	box-shadow: 10px 10px 0px #000000;
	border-radius:10px;
	color:black;
}
#Button2:hover{
	background:#FFE58A;
	
}
#quiz-img {
	margin-top: 10px;
}

.quiz-question {
	font-size: 20px;
	font-weight: bold;
	font-family: "Do Hyeon";
}
</style>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!--  Google font  -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
<title>teamCQuestion</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col">1 of 3</div>
			<div class="col bg-white content">
				<div id="progressDiv">
					<div class="progress" style='margin-top: 40px'>
						<div class="progress-bar bg-warning" role="progressbar"
							style="width: 10%" aria-valuenow="10" aria-valuemin="0"
							aria-valuemax="100"></div>
					</div>
					
					<div class="progress-label" style='padding-top: 10px'>Q1/12</div>


				</div>

				<div class="quiz-question">힘들게 공부한 시험 결과가 좋지 않다... 어떻게 하면 기분이
					나아질까..</div>
				<div class="quiz-img"  style='margin-top: 20px'>
					<img src="../resources/img/teamC/q1.png" height="200px" />
				</div>

				<div id="quiz-button" style='width: 100%;'>
					<button id="Button1" onclick="moveTo()">사람들과 만나서
						놀아야지!! 집에 혼자 있으면 괜히 울적해지기만 한다.</button>
					<button id="Button2" onclick="moveTo()" style='margin-top: 20px'>집에서 조용히 쉬어야지 이럴 때 나가봤자 더
						힘들어...</button>
				</div>
			</div>
			<div class="col">3 of 3</div>
		</div>

	</div>
	<footer class="text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
	<script>
	function moveTo() {
		location.href="loading";
	}
	</script>
</body>
</html>
