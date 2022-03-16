<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="refresh" content="3;url=./result/ESFJ">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- teamC css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamC.css">
<!-- google font -->
<link href='https://fonts.googleapis.com/css?family=Do Hyeon' rel='stylesheet'>

<!-- jquery -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>teamC loading</title>
</head>
<style>
.loader {
	
	z-index: 1;
	width: 200px;
	height: 200px;
	border: 16px solid red;
	border-radius: 50%;
	border-top: 16px solid black;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
	margin-top:35px;
}

@-webkit-keyframes spin { 
	0% {-webkit-transform: rotate(0deg);}
	100%{-webkit-transform:rotate(360deg);}
}
@keyframes spin {
 	0% {transform: rotate(0deg);}
	100%{transform:rotate(360deg);}}
</style>
<script type="text/javascript">
$(function(){
	$(".fade-slide img:gt(0)").hide(); // 해당 이미지 외에 모두 가리고.
	  setInterval(
			  function(){
				  $(".fade-slide :first-child").fadeOut(0).next("img").fadeIn(0).end().appendTo(".fade-slide");},
	  500);
	});
</script>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col" id="sideCol"></div>
			<div id="main" class="col content mainCont">
				<div class="bg-white p-4 position-absolute top-50 start-50 translate-middle col-box">
					<div class="loadingEx">나에게 맞는 공부법은.</div>
					
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
				</div>
				<div id="middle" class="position-absolute top-50 start-50 translate-middle ">
					<div class="container">
						<div class="loader"></div>
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