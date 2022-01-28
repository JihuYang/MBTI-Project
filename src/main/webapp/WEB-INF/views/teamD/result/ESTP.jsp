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
	<title>teamDResult-ESTP</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
</head>

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="../resources/img/teamD/신혼부부.png" style="width:230px; height:230px;">
				<td><h2>행동대장<br>신혼부부 (ESTP)</h2>
				<p>+ 상성 좋은 케미:<br>다정다감한 원장선생님<br>
				- 상성 안 좋은 케미:<br>타고난 리더십 나미리</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 신혼부부처럼 인싸 그 자체!<br>
				생각보다 행동으로 실천하는 당신, 행동대장이에요. 언제나 자신감이 넘치고 쾌활한 성격이 장점이기에 말을 돌려서 못해요. 솔직한 편이 좋아요.<br>
				생각이 단순하다는 평을 들을 때도 있지만 눈치는 백 단이에요. 순발력이 좋고 임기응변에 능해서 사회생활을 잘 하지만, 가끔 욱해요. 다혈질이에요.<br>
				싫어하는건 진지한 분위기와 원리원칙, 즉흥적이고 자유분방한게 좋아요. 스릴 넘치는 스카이다이빙, 번지점프는 나의 버킷리스트에 필수!<br>
				유혹에 약해요. 남들은 할 일을 미룬다고 뭐라고 하지만, 일단 미뤄두면 나중의 내가 알아서 할 거에요. 나는 나를 믿어요. 내일의 나보다 지금의 내가 행복한게 중요해요.<br><br>
				한국인 중의 4.4%가 나랑 같은 유형이에요.</p>
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