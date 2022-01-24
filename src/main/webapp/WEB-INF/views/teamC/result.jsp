<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../resources/js/shareProject.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- teamC css -->
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<!-- google font -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>

<title>teamC Result</title>


</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col content">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"공부는 자고로 시끄러워야 하는 법" <br> <span id="resultNick">인싸형
							공부러</span>
					</div>
					<img class="result-img" src="../resources/img/teamC/ESFJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ESFJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>사람들과 만나며 스트레스를 해소하는 스타일</li>
							<li>단순 암기에 강함!</li>
							<li>의사 소통하며 공부하는 것 좋아함</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
							<li>냉철하지 못해 손해보는 경우 발생</li>
							<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
						<li>냉철하지 못해 손해보는 경우 발생</li>
						<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ESTJ. ESFJ. ENFJ. ISTJ</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">같이하자! 스터디 카페</div>
						</div>
					</div>
				</div>

				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox two_btn sv_btn">저장하기</div>
				<div class="wholeBox two_btn cmt_btn" onclick="moveToC()">댓글보기</div>

				<div class="shareBtn">

					<button class="sharebtn-kakao" type="button" onclick="sendLinkDefault();">
						<img src="../resources/img/teamC/kakaoLogo.png" />
					</button>
					<button class="sharebtn-link" type="button"  onclick="copyLink();">
						<img src="../resources/img/teamC/copyLink.png" />
					</button>

				</div>




			</div>
			<div class="col"></div>
		</div>
	</div>

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>
	<script>
		function moveTo() {
			location.href = "start";
		}
		function moveToC() {
			location.href = "comment";
		}
	</script>
</body>

</html>