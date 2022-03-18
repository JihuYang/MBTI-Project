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
			<div class="col" id="sideCol"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"듣고 읽고 쓰고 다 해야함" <br> <span id="resultNick">오감활용형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ISTP.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ISTP</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box text-center">

					<div class="feature text-center">
						<div class="featureText">특징</div>
						<ul>
							<li>매우 논리적이고 상황 적응력이 빠름</li>
							<li>핵심만 간단히! 말이 길어지는 것 싫어한다</li>
							<li>공감능력이 부족</li>
						</ul>
					</div>



					<div class="weakness text-center">
						<div class="weaknessText">약점</div>
						<ul>
							<li>지루함을 빨리 느껴 한가지를 오래하는 것에 어려움을 느낌</li>
							<li>불안함을 자주 느껴 공부에만 집중하기 어렵다</li>
							<li>복잡한 것을 싫어하다보니 어려운 이론을 이해할때 인내심이 부족</li>
						</ul>
					</div>

					



				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle">찰떡 공부법!<i class="bi bi-book"></i></div>
					<ul>
						<li>하루에 다양한 과목을 조금씩 나눠서 공부한다</li>
						<li>혼자서 차근차근 여유 있게 공부해야 효과적!!</li>
						<li>손으로 쓰면서 학습하면 암기할때 효과적!</li>
						<li>가장 쉬운 기본서 혹은 강의(구체적인 학습 자료)로 기초를 다진다</li>
					</ul>
					<div class="box2">
						<div class="smtitle">찰떡 파트너!<i class="bi bi-people-fill"></i></div>
						<div
							class="mt-3 d-flex align-items-center justify-content-center group1">
							<a class="text-dark" style="font-size: 1.5em;" href="INFP">미루기 빌런형 [INFP]</a>
							<img src="../../resources/img/teamC/INFP.png" style="width: 100px;">
						</div>
						
						<div class="box2">
							<div class="smtitle">찰떡 공부장소!<i class="bi bi-shop-window"></i></div>
							<div class="studyPlace">시험장 가는 길에 요약정리나 봐야겠다. 어디서나! 환경에 구애받지 않는다구~</div>
						</div>
					</div>
				</div>

				<div class="wholeBox text-center two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox text-center two_btn sv_btn">
				<form method="post" action="<%=request.getContextPath()%>/teamC/saved">
					<input name="mbti" id="mbti" value="ISTP" style="display: none">
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