<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta id="metaDescription" name="description"
	content="MBTI로 나의 배우자 캐릭터 찾기">
<meta id="metaKeywords" name="keywords" content="MBTI로 나의 배우자 캐릭터 찾기">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/shareProject.js"></script>
<!-- loading -->
<script type="text/javascript" src="../../resources/js/loading.js"></script>

<title>[결과]나의 배우자는 누구?</title>
<link rel="stylesheet" type="text/css" href='<%=request.getContextPath()%>/resources/css/teamB.css' />
<style>
.comment-bubble {
	text-align: left;
}

.scroll-comment {
	overflow-y: scroll;
}
.share-wrap p{
	margin-bottom: 18px;
}
</style>
</head>
<body>

<div id="loader"></div>
<div id="a_loader" style="display:none;">

	<div class="result-wrap">
		<div id="optadATF" style="min-height: 110px"></div>
		<div class="img-result">
			<img src="<%=request.getContextPath()%>/resources/img/teamB/ENTP.png" alt="MBTI:결과 img">
		</div>
		<br>
<div class="share-wrap">
			<p>공유하기</p>
			<a id="kakao-link-btn" href="javascript:sendLink()"> <img
				src="<%=request.getContextPath()%>/resources/img/teamB/kakaotalk_icon.png"
				alt="kakaoicon"></a> <a id="copy-link-btn"
				href="javascript:copyLink()"> <img
				src="<%=request.getContextPath()%>/resources/img/teamB/link_icon.png"
				alt="linkicon"></a>
		</div>
		<div class="restarticon">
			<a id="home-btn" href="<%=request.getContextPath()%>/index"> <input
				type="button" value="홈가기" class="btn btn-warning btn-yellow"
				style="border-radius: 15px; margin: 10px; font-size: 25px;"></a>
			
			<input type="button" value="다시하기"
				class="btn btn-warning btn-yellow "
				style="border-radius: 15px; margin: 10px; font-size: 25px;"
				onclick="location.href='<%=request.getContextPath()%>/start'">
			<form method="post"
				action="<%=request.getContextPath()%>/teamB/saved"
				style="display: inline-block;">
				<input name="mbti" id="mbti" value="ENTP" style="display: none">
				<button>
					<input type="button" value="저장하기"
						class="btn btn-warning btn-yellow"
						style="border-radius: 15px; pointer-events: none; margin: 10px; font-size: 25px;">
				</button>
			</form>
		</div>
		<div id="other_test_link">
			<img src="<%=request.getContextPath()%>/resources/img/teamB/check.png" alt="MBTI:결과"
				style="vertical-align: center; weight: auto; height: 20px;"> <span
				class="other_test" style="font-size: 20px; font-weight: bold;">다른
				테스트 하러가기</span>
		</div>
		<br>
		<div class="btn-group-vertical" style="margin-bottom: 50px;">
			<button type="button" class="btn btn-warning btn-fink"
				style="border-radius: 15px; margin-bottom: 10px;"
				onclick="location.href='../../teamA/start'">
				<h3 style="font-size: 20px;">내가 개발자라면? 개발자 유형 테스트</h3>
			</button>
			<button type="button" class="btn btn-warning btn-fink"
				style="border-radius: 15px; margin-bottom: 10px;"
				onclick="location.href='../../teamC/start'">
				<h3 style="font-size: 20px;">MBTI 유형에 맞는 찰떡 공부법</h3>
			</button>
			<button type="button" class="btn btn-warning btn-fink"
				style="border-radius: 15px; margin-bottom: 10px;"
				onclick="location.href='../../teamD/start'">
				<h3 style="font-size: 20px;">짱구에서 나는 누굴까?</h3>
			</button>
			<button type="button" class="btn btn-warning btn-fink"
				style="border-radius: 15px; margin-bottom: 10px;"
				onclick="location.href='../../teamE/start'">
				<h3 style="font-size: 20px;">인간관계 유형별 MBTI</h3>
			</button>
		</div>
		<jsp:include page="../../ajaxContent/teamB/comment.jsp" flush="false" />
	</div>
	<div class="footer">
		<p class=footer-text>@HGU 2022 Winter Camp</p>
	</div>
	</div>
	<script type="text/javascript">
		function share_link() {

			var url = '';
			var textarea = document.createElement("textarea");
			document.body.appendChild(textarea);
			url = "http://localhost:8080/webcamp/teamB/start";
			textarea.value = url;
			textarea.select();
			document.execCommand("copy");
			document.body.removeChild(textarea);
			alert("URL이 복사되었습니다.")
		}
	</script>
</body>
</html>