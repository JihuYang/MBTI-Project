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
<link rel="stylesheet" type="text/css" href="../../resources/css/teamC.css">
<!-- google font -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
<!-- icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>teamC Result</title>

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
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col" id="sideCol"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"일단 시작하면 날새는 줄 모르고 계속 달림" <br> <span id="resultNick">추진부스터
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ESTJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ESTJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>한번 시작한 일은 철저하게 마무리</li>
							<li>법과 규칙을 중요시 여기기에 매우 이성적인 판단</li>
							<li>사람들을 단결시키는 재능이 있음</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>자신의 주장이 강하다보니 다른 사람의 조언을 무시하는 경우가 있음</li>
							<li>계산적이고 이성적이다 보니 다른 사람 입장에서 냉정하고 차갑게 여길 수 있음</li>
							<li>감정이 얼굴에 다 나타남</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>단계별로 서서히 난이도를 올리는게 좋음. 갑자기 난이도가 높아지면 흥미를 잃음</li>
						<li>도표나 그래프를 통해 다른 것과 비교해보고 비슷한 것과 차이점을 파악하며 공부</li>
						<li>주제별, 페이지수, 목표 등 디테일한 계획을 세운다</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ENFJ, ESFJ, ISTJ</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">공부는 각 잡고! 독서실! 공부 분위기가 제대로 잡혀있는 공간!</div>
						</div>
					</div>
				</div>

				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<input name="mbti"id = "mbti" value="ESTJ" style="display: none">
				<button class="wholeBox two_btn sv_btn">저장하기</button>

				<div class="shareBtn">
					<a id="kakao-link-btn" href="javascript:sendLink()"> <img
						src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
					</a>

					<button class="sharebtn-kakao" type="button" onclick="sendLink();">
						<img src="../../resources/img/teamC/kakaoLogo.png" />
					</button>
					<button class="sharebtn-link" type="button" onclick="copyLink();">
						<img src="../../resources/img/teamC/copyLink.png" />
					</button>

				</div>

				<jsp:include page="../../ajaxContent/teamC/comment.jsp" flush="false" />


			</div>
			<div class="col" id="sideCol"></div>
		</div>
	</div>

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>