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
						"자고로 공부는 고독하게" <br> <span id="resultNick">숲 속 선비형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/INFJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">INFJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>나긋나긋하고 부드러워 보이지만, 단호함과 결단력이 있음. 자기만의 캐릭터가 확실</li>
							<li>바라는 이상향을 이루기 위해 구체적으로 계획을 세워 실행함</li>
							<li>인문과 사회과학과 관련된 이론적 내용 선호</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>스스로를 채찍질하는 스타일이라 번아웃이 쉽게 올 수 있음</li>
							<li>단순 암기에 매우 취약</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">찰떡 공부법!<i class="bi bi-book"></i></div>
					<ul>
						<li>시각 자료를 활용하여 공부하는 것 추천!</li>
						<li>시간별, 학습량 별 디테일 한 계획을 세워 실행하는 것이 효과적</li>
						<li>학습 계획을 세울때 쉬는 시간을 반드시 넣기</li>
						<li>개념만 정리한 카드를 따로 정리하여 복습하는 방식을 활용</li>
						
					</ul>
					<div class="box2">
						<div class="smtitle">찰떡 파트너!<i class="bi bi-people-fill"></i></div>
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ISFJ">공부의 정석 [ISFJ]</a>
							<img src="../../resources/img/teamC/ISFJ.png" style="width: 100px;">
						</div>
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="INTJ">본투비 전략가형 [INTJ]</a>
							<img src="../../resources/img/teamC/INTJ.png" style="width: 100px;">
						</div>
						
						<div class="box2">
							<div class="smtitle">찰떡 공부장소!<i class="bi bi-shop-window"></i></div>
							<div class="studyPlace">개별학습을 하면서도 친구와 교류할 수 있는 나는 도서관이나 스터디 카페에서! 주변 관심이 학습에 도움이 된다구~</div>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="INFJ" style="display: none">
					<button class="btn" type="submit">
					저장하기
					</button>
				</form>
				</div>
				

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

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>