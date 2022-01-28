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
	<title>teamDResult-ESFJ</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
</head>

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="../resources/img/teamD/신형만.png" style="width:230px; height:230px;">
				<td><h2>따뜻한 가장<br>신형만 (ESFJ)</h2>
				<p>+ 상성 좋은 케미:<br>울보 중재자 훈이<br>
				- 상성 안 좋은 케미:<br>사려깊은 몽상가 맹구</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 신형만처럼 호불호 없는 친목 마스터!<br>
				어느 모임에 가도 환영받는 당신, 핵인싸에요. 자연스럽게 분위기를 주도하는 리더십을 가지고 있어요. 어딜가도 잘 융화되고 사려가 깊어 믿음직스러운 사람이라고 항상 여기저기 불려 다녀서 바빠요.<br>
				공감능력이 뛰어나서 인기도 좋아요. 누군가에게 도움이 필요하면 따뜻한 마음으로 대화상대가 되어줄 준비가 항상 되있어요.<br>
				티를 내지는 않지만 상당히 예민하고 쉽게 상처를 받아요. 만약 사람들이 나를 비판하면 혼자서 속앓이를 엄청 심하게 해요. 낯은 잘 안 가리지만 내 속마음이 허락하기 전까지는 내 본모습을 절대 보여주지 않아요.<br><br>
				한국인 중의 6.6%가 나랑 같은 유형이에요.</p>
		</div>
		
		<div id="end">
		<table style="width: 100%" id="endbar">
			<tr>
				<td onclick="location.href='start'">
				<div id="img1"><img id="back" style="float:none;width:40px;height:42px;" src="../resources/img/teamD/back.png" >다시하기</div></td>
				<td>
				<div id="img2"> <a id="kakao-link-btn" href="javascript:sendLink()"> <img id="share" style="float:none;width:40px;height:40px;" src="../resources/img/teamD/share.png">결과 공유</a></div></td>
				<td><div onclick="location.href='../index'" style="margin-left:0px">Home</div></td>
				
			</tr>
		</table>
		</div>
	</div>
</body>
</html>