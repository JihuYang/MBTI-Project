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
						"공부 하나도 안했다고 하는데 진짜 안함" <br> <span id="resultNick">미루기 빌런
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/INFP.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">INFP</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>공동의 일에서 자신이 맡은 바에 최선을 다함</li>
							<li>의미 있는 진로를 찾는 것에 의미를 </li>
							<li>감정적으로 끌리는 공부에만 집중하는 편</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>현실 감각이 둔해 평소 몽상을 많이 함</li>
							<li>내면의 갈등이 심해 감정기복이 큼</li>
							<li>아이디어는 넘쳐나지만 실행력이 부족</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">찰떡 공부법!<i class="bi bi-book"></i></div>
					<ul>
						<li>전체 그림과 주요 개념에서 세부적으로 들어가는 방식으로 공부한다</li>
						<li>마인드 맵을 적극적으로 활용</li>
						<li>벼락치기가 특히나 비효율적이므로.. 꾸준히 일정시간을 맞춰 공부하는 것 추천</li>
						<li>작은 개념 부분을 조금 더 집중해 실수를 줄이는 게 필요!</li>
						
					</ul>
					<div class="box2">
						<div class="smtitle">찰떡 파트너!<i class="bi bi-people-fill"></i></div>
						<div
						
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ISTP">오감활용형 [ISTP]</a>
							<img src="../../resources/img/teamC/ISTP.png" style="width: 100px;">
						</div>
						
						<div class="box2">
							<div class="smtitle">찰떡 공부장소!<i class="bi bi-shop-window"></i></div>
							<div class="studyPlace">독서실에서 하면 열공한 느낌 RGRG? 공부는 각 잡고! 독서실!</div>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="INFP" style="display: none">
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