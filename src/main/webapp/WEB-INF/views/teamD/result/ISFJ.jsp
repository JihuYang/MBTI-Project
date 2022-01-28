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
	<title>teamDResult-ISFJ</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
</head> 

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/원장님.png" style="width:230px; height:230px;">
				<td><h2>다정다감한<br>원장 선생님 (ISFJ)</h2>
				<p>+ 상성 좋은 케미:<br>행동대장 신혼부부<br>
				- 상성 안 좋은 케미:<br>활발한 귀염둥이 흰둥이</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 원장선생님처럼 꼼꼼한 공감쟁이!<br>
				상식과 조화를 중시하는 당신, 어른스러운 사람이에요. 기본적으로 내성적인데 상황에 따라 달라져요. 나서는 것은 싫지만 관심받는 것은 좋아해요.<br>
				내가 이뤄낸 성과를 다른 사람에게 직접 알리는 것을 부끄러워하지만 또 알아주면 기분이 좋아요.<br>
				인간관계가 좁지만, 깊어요. 마음 맞는 친구들 몇 명만으로 평생을 가요. 그렇기에 가변운 연애는 질색이에요.<br>
				감정을 잘 캐치하고 공감을 잘해줘요. 하지만 쓸데없는 감정 소모는 싫어서 적당히 치고 빠져요.뛰어난 기억력으로 주위 사람들에게 감동을 종종 주기도 해요.<br>
				계획대로 해야 마음이 편해요. 기억해야하는 것들을 메모하는 습관이 있어요. 상식이 안 통하는 사람들을 좋아하지 않아요.<br><br>
				한국인 중의 8.4%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ISFJ" style="display: none">
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