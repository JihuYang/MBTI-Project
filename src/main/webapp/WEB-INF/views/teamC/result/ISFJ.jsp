<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../../resources/js/shareProject.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- teamC css -->
<link rel="stylesheet" type="text/css" href="../../resources/css/teamC.css?after">
<!-- google font -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
<!-- icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>teamC Result</title>
<!-- loading -->
<script type="text/javascript" src="../../resources/js/loading.js"></script>

<!-- menu를 위한 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>


</head>
<body>
<div id="loader"></div>
<div id="a_loader" style="display:none;">
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col" id="sideCol"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"과제나 숙제 꼬박꼬박 해 가는 끈기 만수르" <br> <span id="resultNick">공부의 정석
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ISFJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ISFJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>남에게 민폐끼치는 거 못함</li>
							<li>겉으로 무덤덤해 보여도 속으로는 온갖 걱정을 다함</li>
							<li>계획을 꼼꼼하게 잘 세우며 한번 시작하면 끈기있게 잘해냄</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>게으르지만 완벽을 추구하는 성향으로 한번 진도가 밀려버리면 엄청난 스트레스를 받음</li>
							<li>자신만의 기준이 매우 높아 스스로 만족하기 어려움</li>
							<li>공감능력이 뛰어나다 보니 개인적인 감정이입이 많아 에너지 소비가 큼</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">찰떡 공부법!<i class="bi bi-book"></i></div>
					<ul>
						<li>무리한 계획을 세우지 않고 차츰차츰 늘려가도록 유도</li>
						<li>나에게 맞는 학습 속도 찾기 중요</li>
						<li>벼락치기가 특히 비효율적이므로 꾸준하고 반복적인 학습 추천</li>
						<li>동일한 자료로 반복 학습 추천!</li>
					</ul>
					<div class="box2">
						<div class="smtitle">찰떡 파트너!<i class="bi bi-people-fill"></i></div>
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="INFJ">숲 속 선비형 [INFJ]</a>
							<img src="../../resources/img/teamC/INFJ.png" style="width: 100px;">
						</div>
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="INTJ">본투비 전략가형 [INTJ]</a>
							<img src="../../resources/img/teamC/INTJ.png" style="width: 100px;">
						</div>
						
						<div class="box2">
							<div class="smtitle">찰떡 공부장소!<i class="bi bi-shop-window"></i></div>
							<div class="studyPlace">난 익숙해야 공부가 잘 되거든~ 편한게 최고! 집이다!</div>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">저장하기</div>
				

				<div class="d-flex mt-5 mb-5 justify-content-around">

					<button class="sharebtn1" type="button" onclick="sendLink();">
						<img src="../../resources/img/teamC/kakaoLogo.png"
							style="width: 40px;" />
					</button>
					<button class="sharebtn1" type="button" onclick="copyLink();">
						<img src="../../resources/img/teamC/copyLink.png"
							style="width: 30px;" />
					</button>

				</div>

				<jsp:include page="../../ajaxContent/teamC/comment.jsp" flush="false" />


			</div>
			<div class="col" id="sideCol"></div>
		</div>
	</div>
</div>
	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>