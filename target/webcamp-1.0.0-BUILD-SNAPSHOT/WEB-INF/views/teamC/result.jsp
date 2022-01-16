<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamCResult</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col bg-white content">
				<div class="wholeBox">
					<div class="box1">
						<img src="../resources/img/teamC/character.png" />
						<div class="resultName">
							"공부는 자고로 시끄러워야 하는 법" <br> <span id="resultNick">인싸형
								공부러</span>
						</div>
					</div>
					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ESFJ</span>에 가까운?
						</div>
					</div>
				</div>


				<div class="wholeBox box3">
					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>사람들과 만나며 스트레스를 해소하는 스타일</li>
							<li>단순 암기에 강함!</li>
							<li>의사 소통하며 공부하는 것 좋아함</li>
						</ul>
					</div>
				</div>

				<div class="wholeBox box3">
					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
							<li>냉철하지 못해 손해보는 경우 발생</li>
							<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
						</ul>
					</div>
				</div>

				<div class="wholeBox box4">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
						<li>냉철하지 못해 손해보는 경우 발생</li>
						<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
					</ul>
				</div>
				<div class="wholeBox box5">
					<div class="smtitle study">찰떡 파트너!</div>
					<div class="mbtiPartner">ESTJ. ESFJ. ENFJ. ISTJ</div>
				</div>

				<div class="wholeBox box6">
					<div class="smtitle place">찰떡 공부장소!</div>
					<div class="studyPlace">같이하자! 스터디 카페</div>
				</div>
				<div class="wholeBox two_btn re_btn">다시하기</div>
				<div class="wholeBox two_btn sv_btn">저장하기</div>

				<div class="shareBtn">
					<img src="../resources/img/teamC/kakaoLogo.png"/>
					<img src="../resources/img/teamC/copyLink.png"/>
				</div>
				<div>
					<br> <br> <br>
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