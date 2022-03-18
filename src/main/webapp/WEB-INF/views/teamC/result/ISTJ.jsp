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

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/share/teamC.js"></script>
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
						"어차피 해야하는 공부 걍 정면돌파" <br> <span id="resultNick">현실주의형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ISTJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ISTJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>주변을 객관적으로 분석하고 사실에 입각하여 현실적인 계획을 세우려 함</li>
							<li>실용적인 지식에 관심이 많음</li>
							<li>스트레스를 잘 견디는 강인한 멘탈을 가지고 있음</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>보수적이고 전통적인 성향으로 새로운 것을 받아들이는데 시간이 오래걸린다</li>
							<li>자신의 감정이나 생각을 표현하지 않아 스스로 마음속에 쌓아두는 것이 많음</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">찰떡 공부법!<i class="bi bi-book"></i></div>
					<ul>
						<li>공부를 시작하기전 전체적인 흐름을 파악하고 나의 목표 학습량을 정해둔다</li>
						<li>시청각 자료와 체험학습을 잘 활용한다</li>
						<li>목차만 펼쳐두고 공부했던 내용을 복습해보자</li>
						<li>수업의 목표와 계획이 확실한 수업을 듣는 것을 추천!</li>
					</ul>
					<div class="box2">
						<div class="smtitle">찰떡 파트너!<i class="bi bi-people-fill"></i></div>
						<div
						
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ESTJ">추진부스터 [ESTJ]</a>
							<img src="../../resources/img/teamC/ESTJ.png" style="width: 100px;">
						</div>
						<div
						
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ENFJ">인간플래너형 [ENFJ]</a>
							<img src="../../resources/img/teamC/ENFJ.png" style="width: 100px;">
						</div>
						<div
						
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ESFJ">인싸형 공부러 [ESFJ]</a>
							<img src="../../resources/img/teamC/ESFJ.png" style="width: 100px;">
						</div>
						
						<div class="box2">
							<div class="smtitle">찰떡 공부장소!<i class="bi bi-shop-window"></i></div>
							<div class="studyPlace">여러명에서 공부하는 것보다는 혼자 자기주도 학습에 더 집중이 잘 되는 나는 독서실에서!</div>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="ISTJ" style="display: none">
					<button class="btn" type="submit">
					저장하기
					</button>
				</form>
				</div>
				

				<div class="d-flex mt-5 mb-5 justify-content-around">

					<a class="sharebtn1" id="kakao-link-btn" href="javascript:sendLink()">
						<img src="<%=request.getContextPath()%>/resources/img/teamC/kakaoLogo.png"
							style="width: 40px;" />
					</a>
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