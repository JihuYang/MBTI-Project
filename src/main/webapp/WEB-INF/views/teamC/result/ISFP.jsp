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

<script type="text/javascript" src="../../resources/js/share/teamC.js"></script>
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
			<!-- <div class="col" id="sideCol"></div> -->
			<div class="col d-none d-lg-block"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"이쁜게 최고지, 어차피 할 공부 언젠가 함" <br> <span id="resultNick">미적 탐구형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ISFP.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ISFP</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>관심 받는 것을 싫어하는 관종</li>
							<li>예술가형이기에 아름다운 것, 예쁜 것 등 시각적인 것에 매력을 느낌</li>
							<li>자신이 이해한 게 실생활에 적용이 가능한 것이면 즐거움을 느낌</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>본인이 좋아하는 과목만 파는 스타일</li>
							<li>생각은 많이 하지만 실천력이 부족함</li>
							<li>미룰 수 있을만큼 미루다가 발등에 불 떨어져야 움직임</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
				<div class="feature">
					<div class="featureText">찰떡 공부법 <i class="bi bi-book"></i></div>
					<ul>
						<li>단순 암기에 매우 강하기에 규칙적인 복습을 이용해 장기기억으로 만든다</li>
						<li>상상력이 뛰어나기에 배경지식과 스토리를 먼저 알고 공부하면 이해가 쉽다</li>
						<li>시각적 자료를 활용한 학습 추천!!</li>
					</ul>
					<div class="box2">
						<div class="featureText">찰떡 파트너 <i class="bi bi-people-fill"></i></div>
						<div
							class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/INFJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="INFJ">숲 속 선비형 [INFJ]</a>
							
						</div>
						<div
							class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/INTJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="INTJ">본투비 전략가형 [INTJ]</a>
							
						</div>
						
						<div class="box2">
							<div class="featureText">찰떡 공부장소 <i class="bi bi-shop-window"></i></div>
							<ul style="list-style:none;">
							<li>그룹 스터디를 할 때 학습 효과가 좋은 나는, 스터디 카페에서!</li>
							</ul>
						</div>
					</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="/teamC/saved">
					<input name="mbti" id="mbti" value="ISFP" style="display: none">
					<button class="btn" type="submit">
					저장하기
					</button>
				</form>
				</div>

				<div class="d-flex mt-5 mb-5 justify-content-around">

					<a class="sharebtn1" id="kakao-link-btn" href="javascript:sendLink()">
						<img src="../../resources/img/teamC/kakaoLogo.png"
							style="width: 40px;" />
					</a>
					<button class="sharebtn1" type="button" onclick="copyLink();">
						<img src="../../resources/img/teamC/copyLink.png"
							style="width: 30px;" />
					</button>

				</div>

				<jsp:include page="../../ajaxContent/teamC/comment.jsp" flush="false" />


			</div>
			<!-- <div class="col" id="sideCol"></div> -->
			<div class="col d-none d-lg-block"></div>
		</div>
	</div>
</div>
	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>