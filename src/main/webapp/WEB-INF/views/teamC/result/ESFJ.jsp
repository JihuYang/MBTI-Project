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
						"공부는 자고로 시끄러워야 하는 법" <br> <span id="resultNick">인싸형
							공부러</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ESFJ.png" />

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
							<li>사람들과 만나며 스트레스를 해소하는 스타일.</li>
							<li>단순 암기에 강함!</li>
							<li>의사 소통하며 공부하는 것 좋아함.</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움.</li>
							<li>냉철하지 못해 손해보는 경우 발생.</li>
							<li>한꺼번에 많은 양을 공부하면 집중력 약해짐.</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="feature">
					<div class="featureText">찰떡 공부법 <i class="bi bi-book"></i>
					</div>
					<ul>
						<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움.</li>
						<li>냉철하지 못해 손해보는 경우 발생.</li>
						<li>한꺼번에 많은 양을 공부하면 집중력 약해짐.</li>
					</ul>
					<div class="box2">
						<div class="featureText">찰떡 파트너 <i class="bi bi-people-fill"></i>
						</div>
						<div class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/ESTJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="ESTJ">추진부스터 [ESTJ]</a>
							
						</div>
						<div class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/ESFJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="ESFJ">인싸형 공부러 [ESFJ]</a>
							
						</div>
						<div class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/ENFJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="ENFJ">인간플래너형 [ENFJ]</a>
							
						</div>
						<div class="mt-3 d-flex align-items-center group1">
							<img src="../../resources/img/teamC/ISTJ.png" style="width: 100px;">
							<a class="text-dark" style="font-size: 1.5em;" href="ISTJ">현실주의형 [ISTJ]</a>
							
						</div>
						
						<div class="box2">
							<div class="featureText">찰떡 공부장소 <i class="bi bi-shop-window"></i>
							</div>
							<ul style="list-style: none;">
								<li>같이하자! 스터디 카페.</li>
							</ul>
						</div>
					</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="ESFJ" style="display: none">
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