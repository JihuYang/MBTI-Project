<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--  responsive web -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Bootstrap css 5.1.x -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- teamC external css file-->
<link rel="stylesheet" href="../resources/css/teamC.css" />
<!--  Google font  -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
<title>teamCStart</title>

</head>
<body>
	<div class="background">
		<div class="container-fluid">
			<div class="row text-center">
				<div class="col"></div>
				<div class="col content">
					<div class="start bg-white"
						style="border: 5px solid black; box-shadow: 10px 10px 0px #000000; margin: 50px 0 50px 0; border-radius: 10px; padding: 30px 30px 30px 30px;">
						<div class="startHeader">
							<div class="tag ">#MBTI &nbsp; #나에게 맞는 공부법은?</div>
							<div id="titleBg"></div>
							<div class="title">찰떡 공부</div>
						</div>

						<div class="btnContainer">

							<div class="fade-slide">
								<img src="../resources/img/teamC/ENFJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ENFP.png" style="width:200px;"/> 
								<img src="../resources/img/teamC/ENTJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ENTP.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ESFJ.png" style="width:200px;"/> 
								<img src="../resources/img/teamC/ESFP.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ESTJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ESTP.png" style="width:200px;"/> 
								<img src="../resources/img/teamC/INTJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/INFP.png" style="width:200px;"/>
								<img src="../resources/img/teamC/INTJ.png" style="width:200px;"/> 
								<img src="../resources/img/teamC/INTP.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ISFJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ISFP.png" style="width:200px;"/> 
								<img src="../resources/img/teamC/ISTJ.png" style="width:200px;"/>
								<img src="../resources/img/teamC/ISTP.png" style="width:200px;"/>
							</div>

							<button class="startButton" onclick="moveToQ()">
								<div class="btntext1">터치해서 알아보기</div>
								<div class="btntext2">지금까지 55,816명이 알아봤어요.</div>
							</button>
						</div>
					</div>
				</div>
				<div class="col"></div>

			</div>
		</div>
	</div>
	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>
	<script>
		function moveToQ() {
			location.href = "question";
		}
		$(function(){
			$(".fade-slide img:gt(0)").hide(); // 첫째 이미지외에 모두 가리고.
			  setInterval(  function(){
			    $(".fade-slide :first-child").fadeOut(0).next("img").fadeIn(0).end().appendTo(".fade-slide");},
			  500);
			});
	
		
	</script>
</body>
</html>