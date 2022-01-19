<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="3;url=./result">



<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamC 질문</title>
</head>
<style>
.loader {
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 1;
	width: 150px;
	height: 150px;
	margin: -75px 0 0 -75px;
	border: 16px solid red;
	border-radius: 50%;
	border-top: 16px solid black;
	width: 120px;
	height: 120px;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
}

@-webkit-keyframes spin { 
	0% {-webkit-transform: rotate(0deg);}
	100%{-webkit-transform:rotate(360deg);}
}
@keyframes spin {
 	0% {transform: rotate(0deg);}
	100%{transform:rotate(360deg);}}
</style>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content ">
				<div id="top" class="top">
					<div class="loadingEx">나에게 맞는 공부법은...</div>
				
				</div>
				<div id="middle" class="text-center">
					<div class="container">
						<div class="loader"></div>
					</div>
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