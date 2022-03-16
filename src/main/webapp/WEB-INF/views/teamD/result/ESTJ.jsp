<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- 공유하기 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/shareProject.js"></script>
	<!-- loading -->
<script type="text/javascript" src="../../resources/js/loading.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamDResult-ESTJ</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
</head>

<body style="background-attachment : fixed ;">
<div id="loader"></div>
<div id="a_loader" style="display:none;">

	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/철수.png" style="width:230px; height:230px;">
				<td><h2>오직 나의 길을 간다<br>철수 (ESTJ)</h2>
				<p>+ 상성 좋은 케미:<br>호불호 확실한 수지<br>
				- 상성 안 좋은 케미:<br>무한 긍정 짱아</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 철수처럼 마이웨이 직진러!<br>
				남의 시선은 신경 안쓰는 당신, 새로운 시도를 좋아하는 도전가에요. 독립심이 강해 혼자서 돌아다니는걸 좋아해요. 밖에 나가서도 잘 놀지만 집도 좋아해요.<br>
				여러 방면에서 관심이 많아 남 눈치를 안보고 이것저것 다 해봐요. 하지만 뒷심과 집중력이 부족해 흐지부지 되는 경우가 많아요. 그래도 자기합리화를 잘 해서 스트레스는 잘 안 받아요. 포기를 잘 하는 것도 능력이에요.<br>
				솔직한게 좋아요, 말을 예쁘게 순화하는 건 내 스타일이 아니에요. 남들이 세심하지 못한 사람이라고해도 전혀 개의치 않아요. 비슷한 성향을 가진 사람들과 문제없이 잘 지내요.<br><br>
				한국인 중의 3.5%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ESTJ" style="display: none">
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
	</div>
</body>
</html>