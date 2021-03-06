<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- 공유하기 -->
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/share/teamD.js"></script>
	<!-- loading -->
<script type="text/javascript" src="../../resources/js/loading.js"></script>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamDResult-INFJ</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
<style>
	body {  
		background-image : url("<%=request.getContextPath()%>/resources/img/teamD/teamD_background.jpg") ;
		background-repeat : no-repeat ;
		background-size: cover;
		height: 100vh;	
		font-family : 'Gaegu' ;
	} 
</style>
</head>

<body style="background-attachment : fixed ;">
<div id="loader"></div>
<div id="a_loader" style="display:none;">

	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/차은주 선생님.png" style="width:230px; height:230px;">
				<td><h2>외유내강<br>차은주 선생님 (INFJ)</h2>
				<p>+ 상성 좋은 케미:<br>활발한 귀염둥이 흰둥이<br>
				- 상성 안 좋은 케미:<br>만능 재주꾼 옆집아줌마</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 차은주 선생님처럼 섬세한 이상주의 괴짜!<br>
				사려 깊고 성숙한 당신, 감수성이 풍부하고 생각이 많아요. 일처리를 할 때에 혼자 부지런히 하는 걸 좋아해요.<br>
				내성적이고 조용해서 남들은 잘 모르는데 엄청 관종이에요. 관심이 쏠리면 부끄러운데 큰 무대에 서보고는 싶어요. 내적 갈등이 심해요.<br>
				평소의 말투는 나긋나긋 하지만 옳다고 생각되는 일에는 확실하게 의견을 피력해요. 전형적인 외유내강 표본이에요.<br>
				계획적이고 예리하지만, 가끔씩 나오는 허당미가 매력이에요. 공감을 잘해서 고민상담을 잘해주는 가끔 감정이입을 너무 심하게 해요.<br>
				남들과 스스럼 없이 잘 어울리지만, 가끔 마음의 평정심을 잃지 않기 위해 혼자만의 재충전 시간이 필요해요. 예의없이 선 넘는 사람이 제일 싫어요.<br><br>
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
						<form method="post" action="<%=request.getContextPath()%>/teamD/saved"
							style="display: inline-block; margin: 0 15px;">
							<input name="mbti" id="mbti" value="INFJ" style="display: none">
							<button id="savebtn">
								<img style="float: none; width: 30px; height: 30px; margin-right: 10px"
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