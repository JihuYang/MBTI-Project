<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- 공유하기 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/shareProject.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamDResult-ENTJ</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
</head>

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/나미리 선생님.png" style="width:230px; height:230px;">
				<td><h2>타고난 리더십<br>나미리 (ENTJ)</h2>
				<p>+ 상성 좋은 케미:<br>사려깊은 몽상가 맹구<br>
				- 상성 안 좋은 케미:<br>행동대장 신혼부부</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 나미리처럼 타고난 리더!<br>
				자신감이 넘치고 비효율이 제일 싫은 당신, 승부사에요. 겉으로는 차갑지만 속내는 따뜻하기에 주위에 사람들이 몰려들어요.<br>
				항상 바쁜 삶을 사고 있고 똑똑해서 일처리를 잘해요. 다만 우유부단하거나 능력 없는 사람들과 같이 일하느니, 혼자 일하는게 편하다고 생각하여 본인보다 똑똑하지 않으면 무시하는 경향이 있어요. 나는 피해를 안 줄테니 남들도 나에게 피해만 안 줬으면해요.<br>
				승부욕이 강해서 한 번 마음먹으면 엄청난 끈기와 책임감으로 성과를 이뤄내요.<br>
				주위에 해보지도 않고 못한다는 사람들을 보면 답답하지만 딱히 신경은 안 써요. 내 인생이 아니니까요.<br><br>
				한국인 중의 3.8%가 나랑 같은 유형이에요.</p>
		</div>
		
		<div id="end">
		<table style="width: 100%" id="endbar">
			<tr>
				<td onclick="location.href='start'"><div id="img1"><img id="back" style="float:none;width:30px;height:30px;" src="<%=request.getContextPath()%>/resources/img/teamD/back.png" >다시하기</div></td>
				<td><div id="img2"> <a id="kakao-link-btn" href="javascript:sendLink()"> <img id="share" style="float:none;width:40px;height:40px;" src="<%=request.getContextPath()%>/resources/img/teamD/share.png">결과 공유</a></div></td>
			</tr>
			<tr>
				<td><div onclick="location.href='../index'" style="margin-left:0px"><img id="save" style="float:none;width:30px;height:30px;" src="<%=request.getContextPath()%>/resources/img/teamD/home.jpg"> Home</div></td>
				<td>
						<form method="post" action="../saved"
							style="display: inline-block; width: 46px; margin: 0 15px;">
							<input name="mbti" id="mbti" value="ENTJ" style="display: none">
							<button>
								<img style="float: none; width: 30px; height: 30px;"
									src="<%=request.getContextPath()%>/resources/img/teamD/save-file.png">저장하기
							</button>
						</form>
					</td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>