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
	<title>teamDResult-ENFP</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
</head>

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/흰둥이 투명 배경.png" style="width:230px; height:230px;">
				<td><h2>활발한<br>귀염둥이 흰둥이 (ENFP)</h2>
				<p>+ 상성 좋은 케미:<br>외유내강 차은주<br>
				- 상성 않좋은 케미:<br>행동대장 신혼부부</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 흰둥이처럼 자유로운 아이디어 뱅크!<br>
				표현력이 풍부한 당신, 대화를 즐기는 리액션쟁이에요. 자유로운 영혼이라 톡톡튀는 아이디어도 많지만 주의가 산만하다는 말도 자주 들어요. 친구들에게 돌아이라고 놀리는게 나한테는 극찬이에요.<br>
				누가 나서지 않으면 답답해서 스스로 나서요. 지루하고 반복되는 일상은 싫어요. 하루하루가 즐겁고 재미있었으면 좋겠어요.<br>
				싫고 좋은게 명확해요. 그래서 싫은 사람에게 아부하는 것은 나랑 다른 세계의 일이에요.<br>
				나를 위해 돈을 쓰고 싶을 때에는 바로 FLEX해버려요. 한 번 사는 인생인데! 가만히 집콕하는게 싫어요. 코시국 너무 싫은것.<br><br>
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
							<input name="mbti" id="mbti" value="ENFP" style="display: none">
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