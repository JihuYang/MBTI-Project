<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
	
	function moveTo() {
		location.href="loading";
	}
</script>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--  Google font  -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon' rel='stylesheet'>
<script src="../resources/js/question.js?ver=<%System.currentTimeMillis();%> %>" ></script>

<title>teamCQuestion</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col content">
				<div class="bg-white p-4 position-absolute top-50 start-50 translate-middle col-box">
					
			
				<div id="progressDiv">
					<div class="progress">
						<div class="progress-bar bg-warning" role="progressbar"
							style="width: 10%" aria-valuenow="10" aria-valuemin="0"
							aria-valuemax="100"></div>
					</div>
					
					<div class="progress-label"><span id="Qnum">${questions[0].questionNum}</span>/12</div>


				</div>

				<div class="quiz-question question ">힘들게 공부한 시험 결과가 좋지 않다... 어떻게 하면 기분이 나아질까..</div>

				<div id="quiz-button">
					<button id="Button" class="btn1" onclick="saveType(${1}, '${questions[0].result}')">${questions[0].answer}</button>
					<button id="Button" class="btn2" onclick="saveType(${2}, '${questions[1].result}')">${questions[1].answer}</button>
				</div>
			</div>
			</div>
			<div class="col"></div>
		

	</div>
	</div>
	<footer class="text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>
