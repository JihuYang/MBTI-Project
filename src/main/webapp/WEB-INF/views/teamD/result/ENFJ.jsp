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
	<title>teamDResult-ENFJ</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
	
</head>

<body style="background-attachment : fixed ;">

	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="../resources/img/teamD/유리.png" style="width:230px; height:230px;">
				<td><h2>정의 구현자<br>유리 (ENFJ)</h2>
				<p>+ 상성 좋은 케미:<br>무한 긍정 짱아<br>
				- 상성 안 좋은 케미:<br>오직 나의 길을 간다 철수</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 유리처럼 정의 구현자!<br>
				말로 사람들을 움직이게하는 당신, 낯도 안가리고 말을 예쁘게해서 대인관계가 좋고 인기가 많아요.<br>
				무리에 속해있어도 마이웨이를 달리는데 밉지가 않아요. 사람들을 잘 믿고 정이 많지만 배신 당하면 칼 같이 아웃!<br>
				그렇지만 능력치가 말빨에 몰빵되어 숫자에는 약해요. 수학은 나의 적이에요.<br>
				감수성이 풍부해서 가끔 이성적인 판단을 못해요. 고집도 있는 편이라 내 의견이 무시당하면 분노가 치밀어 올라요. 짜증을 내고 나중에 후회하는 경우가 많아요.<br><br>
				한국인 중의 3.5%가 나랑 같은 유형이에요.</p>
		</div>
		
		<div id="end">
		<table style="width: 100%" id="endbar">
			<tr>
				<td onclick="location.href='start'"><div id="img1"><img id="back" style="float:none;width:30px;height:30px;" src="../resources/img/teamD/back.png" >다시하기</div></td>
				<td><div id="img2"> <a id="kakao-link-btn" href="javascript:sendLink()"> <img id="share" style="float:none;width:40px;height:40px;" src="../resources/img/teamD/share.png">결과 공유</a></div></td>
			</tr>
			<tr>
				<td><div onclick="location.href='../index'" style="margin-left:0px"><img id="save" style="float:none;width:30px;height:30px;" src="../resources/img/teamD/home.jpg"> Home</div></td>
				<td><div onclick="location.href='../index'" style="margin-left:0px"><img id="save" style="float:none;width:30px;height:30px;" src="../resources/img/teamD/save-file.png"> 저장하기</div></td>
				
			</tr>
		</table>
		</div>
	</div>
	
</body>
</html>