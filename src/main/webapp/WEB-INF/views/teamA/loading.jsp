<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<meta http-equiv="refresh" content="3;url=./result"> !-->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>


<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamA.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamA 질문</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.loader {
	position: relative;
	display: flex;
}

.loader span {
	position: relative;
	width: 250px;
	height: 250px;
	background-color: #eaeef0;
	border: 6px solid #eaeef0;
	border-radius: 50%;
	box-shadow: -8px -8px 15px rgba(255, 255, 255, 1), 8px 8px 25px
		rgba(255, 255, 255, 0.2);
	overflow: hidden;
}

.loader span::before {
	content: "";
	position: absolute;
	inset: 0;
	border-radius: 50%;
	box-shadow: inset 10px 10px 20px rgba(0, 0, 0, 0.5), inset -5px -5px
		15px rgba(255, 255, 255, 1);
}

.loader span::after {
	content: "";
	position: absolute;
	inset: 40px;
	background: #eaeef0;
	border: 3px solid #eaeef0;
	border-radius: 50%;
	box-shadow: -8px -8px 25px rgba(255, 255, 255, 1), 8px 8px 25px
		rgba(0, 0, 0, 0.25), inset 3px 3px 10px rgba(0, 0, 0, 0.15), inset
		-1px -1px 15px rgba(255, 255, 255, 1);
}

.loader span i {
	position: absolute;
	inset: 0;
	border-radius: 50%;
	background: linear-gradient(#42abff, #ff4f8b, #ffeb3b);
	animation: animateLoader 1s linear infinite;
}

@
keyframes animateLoader { 0% {
	transform: rotate(0deg);
}

100






%
{
transform






:






rotate




(






360deg






)




;
}
}
.rocket {
	position: absolute;
	inset: 50px;
	z-index: 10;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-content: center;
	overflow: hidden;
}

.rocket .fa-rocket {
	position: absolute;
	top: 35%;
	color: #ff518c;
	font-size: 3.5em;
	-webkit-text-stroke: 2px #000;
	animation: animateRocket 0.2s linear infinite;
}

@
keyframes animateRocket { 0%,100% {
	transform: translate(0, 0) rotate(-45deg);
}

50






%
{
transform






:






translate




(






0
,
3px






)






rotate




(






-45deg






)




;
}
}
.rocket .fa-cloud {
	position: absolute;
	top: calc(45px * var(- -i));
	left: calc(40px * var(- -i));
	font-size: 2em;
	color: #fff;
	-webkit-text-stroke: 2px #000;
	animation: animateCloud 1.5s linear infinite;
	animation-delay: calc(-0.5s * var(- -i));
}

@
keyframes animateCloud { 0% {
	transform: translateY(calc(-35 * 5px));
}
100






%
{
transform






:






translateY




(






calc




(






35






*



 



5px






)






)




;
}
}
</style>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content ">
				<div id="top" class="top">
					<div class="explanation text-white mb-3">나의 개발자 유형 찾는 중<%=request.getContextPath()%>.</div>
					<!-- 					<div class="speech-container mb-3">
						<div class="p-3 speech-bubble">
							<div class="number">
								<span>1/12번째 </span>
							</div>
						</div>
						<div class="p-3 speech-shadow"></div>
					</div> -->
				</div>
				<div id="middle" class="text-center">
					<div class="container">
						<svg xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 400 400"> 
						 <defs>
						   <linearGradient id="Lg" x1="0" x2="0" y1="1" y2="0">
						      <stop offset="0" stop-color="white" stop-opacity="0.05" />
							  <stop offset="0.8" stop-color="white" />
						        
						   </linearGradient> 
						   <mask id="mask">    
						      <rect width="100%" height="100%" fill="white" />
						       <path transform="rotate(0,200,200)"
								d="M200,90 A110,110 0 0 1 200,310" stroke-width="20"
								fill="black" stroke="black">  
						      <animateTransform attributeName="transform" type="rotate"
								begin="0s" dur="4s" values="0,200,200;360,200,200"
								repeatCount="indefinite" /> 
							 </path>	
						   </mask>
						 </defs>   		 
						<path id="textPath" d="M200,110 A90,90 0 0 1 200,290"
								stroke-width="2" fill="none" stroke="none" /> 
						<text mask="url(#mask)" class="txt1" font-size="32px"
								letter-spacing="0.2em" fill="white">
						  <textPath href="#textPath" startOffset="12">
						    <tspan dy="-0.1em">Loading . . .</tspan>
						  </textPath>
						</text>
						  
						<circle id="circle" cx="200" cy="200" r="150" stroke="url(#Lg)"
								stroke-width="20" stroke-dashoffset="942" stroke-dasharray="471"
								fill="none" stroke="crimson" stroke-linecap="round">
						    <animate attributeName="stroke-dashoffset" begin="0s" dur="1s"
								values="942;471;235;0" keyTimes="0;0.75;0.9;1" calcMode="linear"
								repeatCount="indefinite" /> 
						  
						</circle> 
						</svg>
					</div>
					<!-- 					<div class="container">
						<div class="loader">
							<div class="rocket">
								<i class="fas fa-rocket"></i> <i class="fas fa-cloud"
									style="-i: 0"></i> <i class="fas fa-cloud" style="-i: 1"></i> <i
									class="fas fa-cloud" style="-i: 2"></i> <i class="fas fa-cloud"
									style="-i: 3"></i>
							</div>
							<span> <i></i>
							</span>
						</div>
					</div> -->
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