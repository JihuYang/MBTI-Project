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
<!-- comment 수정 부분 -->

</head>
<body>
<div id="loader"></div>
<div id="a_loader" style="display:none;">
<div class="container-fluid mt-5">
	<div class="text-center">
		<div class="row">
			<div class="col"></div>
			<div class="col content">
				<div class="bg-white p-4 col-box text-center">
					<div class="resultName">
						"높은 확률로 지금 다이어리에 계획표 작성 중" <br> <span id="resultNick">인간 플래너형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ESFJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ENFJ</span>에 가까운?
						</div>
					</div>



				</div>
		
				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>계획 세우는 것이 취미</li>
							<li>친절하고 재치 있으며 성실하고 호기심이 많은 유형</li>
							<li>원하는 목표를 달성하기 위해 수단과 방법을 가리지 않음</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>거절하는 것을 어려워함</li>
							<li>한번 우울에 빠져버리면 헤어 나오는데 오랜 시간이 걸림</li>
							<li>계획이 흐트러질 경우 불안한 마음에 하던 일을 아예 포기해버림</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">
						찰떡 공부법 <i class="bi bi-book"></i>
					</div>
					<ul>
						<li>수업 할때 앞자리에 앉아 능동적인 참여 추천!</li>
						<li>시간을 맞춰놓고 스스로 보채며 공부하는 게 효과적!</li>
						<li>피드백을 주고받을 수 있는 멘토를 찾는다</li>
						<li>수업 후 질문을 따로 하거나, Q&A 게시판을 잘 활용한다</li>
					</ul>
				
					<div class="box2">
						<div class="smtitle">
							찰떡 파트너 <i class="bi bi-people-fill"></i>
						</div>

						<div
						
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ESTJ">추진부스터 [ESTJ]</a>
							<img src="../../resources/img/teamC/ESTJ.png" style="width: 100px;">
						</div>
						
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ESFJ">인싸형 공부러 [ESFJ]</a>
							<img src="../../resources/img/teamC/ESFJ.png" style="width: 100px;">
						</div>
		
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="ISTJ">현실주의형 [ISTJ]</a>
							<img src="../../resources/img/teamC/ISTJ.png" style="width: 100px;">
						</div>

						<div class="box2">
							<div class="smtitle">
								찰떡 공부장소 <i class="bi bi-shop-window"></i>
							</div>
							<p class="studyPlace">같이하자! 스터디 카페</p>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="ENFJ" style="display: none">
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
				
	

						<jsp:include page="../comment.jsp" flush="false" />


			</div>
			<div class="col" id="sideCol"></div>
		</div>
	</div>
	</div>
	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>
</div>

</body>

</html>