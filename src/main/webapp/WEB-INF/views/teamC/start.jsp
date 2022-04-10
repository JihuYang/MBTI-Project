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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- teamC external css file-->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamC.css"/>
<!--  Google font  -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon' rel='stylesheet'>
<!-- jquery -->
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-3.6.0.min.js"></script>
<title>teamCStart</title>

<script>
		function moveToQ() {//질문페이지로 이동 버튼 
			location.href = "question";
		}
		$(function(){
			$(".fade-slide img:gt(0)").hide(); // 해당 이미지 외에 모두 가리고.
			  setInterval(
					  function(){
						  $(".fade-slide :first-child").fadeOut(0).next("img").fadeIn(0).end().appendTo(".fade-slide");},
			  500);
			});
	
		
</script>
	
</head>
<body>

	<div class="container-fluid">
		<div class="row text-center">
			<div class="col" id="sideCol"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 position-absolute top-50 start-50 translate-middle col-box">
					
					<div class="startHeader">
						<div class="tag ">#MBTI &nbsp; #나에게 맞는 공부법은?</div>
						<div class="title">찰떡 공부</div>
					</div>


						<div class="fade-slide">
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ENFJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ENFP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ENTJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ENTP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ESFJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ESFP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ESTJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ESTP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/INTJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/INFP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/INTJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/INTP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ISFJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ISFP.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ISTJ.png" style="width: 200px;" />
							<img src="<%=request.getContextPath()%>/resources/img/teamC/ISTP.png" style="width: 200px;" />
						</div>

						<button class="startButton" onclick="moveToQ()">
							<div class="btntext1">터치해서 알아보기</div>
							<div class="btntext2">지금까지 ${views}명이 알아봤어요.</div>
						</button>
					</div>
				</div>
			
			<div class="col" id="sideCol"></div>
</div>
		</div>
		

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>
</body>
</html>