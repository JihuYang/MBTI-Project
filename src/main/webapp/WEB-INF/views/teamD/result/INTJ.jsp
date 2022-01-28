<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- 공유하기 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript" src="../resources/js/shareProject.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamDResult-INTJ</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
</head> 

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="../resources/img/teamD/수지.png" style="width:230px; height:230px;">
				<td><h2>호불호 확실한<br>수지 (INTJ)</h2>
				<p>+ 상성 좋은 케미:<br>오직 나의 길을 간다 철수<br>
				- 상성 안 좋은 케미:<br>타고난 리더십 봉미선</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 수지처럼 허당미 츤데레!<br>
				효율성을 중요시하는 당신, 이상주의 괴짜에요. 단체활동은 싫어하지만, 하게되면 주도적인 역할을 담당해요.<br>
				사람들과 친해지는데에 시간이 걸리고 관계정리는 칼 같아서 친구가 많지 않아요. 내 사람한테만 잘해줘요.<br>
				겉으로는 차갑지만 엄청 츤데레에요. 선의의 거짓말보다는 진심 어린 팩트 폭행이 더 편해요.<br>
				남들 눈치 안보고 한 번 꽂히면 깊게 빠져들어요. 감정에 휘둘리는 건 싫어요. 고집을 꺾기 위해서는 그에 타당한 이유가 있어해요.<br>
				원리원칙을 중요하게 여기고 다양한 관점으로 일을 해석하고 해결하려고 노력해요. 기발한 아이디어와 뛰어난 논리력은 내 최고의 무기에요.<br>
				내성적이라 티를 내지는 않지만 은근히 관종이에요. 수다 떠는 것을 좋아하고 의외로 허당끼가 있어 주위 사람들과 낯선 사람들의 평가가 많이 달라요.<br><br>
				한국인 중의 5.5%가 나랑 같은 유형이에요.</p>
		</div>
		
		<div id="end">
		<table style="width: 100%" id="endbar">
			<tr>
				<td onclick="location.href='start'">
				<div id="img1"><img id="back" style="float:none;width:40px;height:42px;" src="../resources/img/teamD/back.png" >다시하기</div></td>
				<td>
				<div id="img2"> <a id="kakao-link-btn" href="javascript:sendLink()"> <img id="share" style="float:none;width:40px;height:40px;" src="../resources/img/teamD/share.png">결과 공유하기</a></div></td>
				
			</tr>
		</table>
		</div>
	</div>
</body>
</html>