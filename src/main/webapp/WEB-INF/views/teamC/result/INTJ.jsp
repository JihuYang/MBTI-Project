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
						"비판적인 관점으로 목표 설정 후 RUN" <br> <span id="resultNick">본투비 전략가형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/INTJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">INTJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>굉장히 분석적이고 이성적인 유형</li>
							<li>전략적 사고에 뛰어나고 응용력이 뛰어남</li>
							<li>이론적인 학문에 학구열이 굉장히 높으며 흥미를 느낌</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>과도한 자신감으로 모든 것을 안다고 생각하는 착각에 빠질 수 있음</li>
							<li>대인관계에 외로움을 느낄 수 있음</li>
							<li>진리나 깊이 있는 지식을 쫓는 스타일 이기에 쓸데없는 시간을 보내는걸 매우 아까워 함</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>큰 그림을 보며, 조직화된 구조로 노트 정리를 한다.</li>
						<li>같은 내용을 여러 번 복습 추천!</li>
						<li>맥락 있게 이해하면서 공부하면 좋음</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ISFJ, INFJ</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">쓸데없이 에너지 낭비말고 완벽한 계획짜서 집에서 하자</div>
						</div>
					</div>
				</div>

				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<input name="mbti"id = "mbti" value="INTJ" style="display: none">
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