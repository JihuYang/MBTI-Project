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
	<title>teamDResult-ESFP</title>
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
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/봉미선.png" style="width:230px; height:230px;">
				<td><h2>타고난 리더십 <br>봉미선 (ESFP)</h2>
				<p>+ 상성 좋은 케미:<br>만능 재주꾼 옆집아줌마<br>
				- 상성 안 좋은 케미:<br>외유내강 차은주</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 봉미선처럼 눈치백단 고집쟁이!<br>
				자기확신이 뚜렷하고 호불호가 확실한 당신, 모임 같은 건 좋아하지만 리더하는 건 너무 싫어요. 막상 시키면 잘하지만요.<br>
				항상 명확한 사실을 토대로 일을 처리해요.<br>
				현실적이고 꼼꼼해서 계획은 철저히 세우지만 융통성이 ‘0’에 가까워요. 더불어 황소고집은 덤이고요. 물론 능력은 뛰어나서 남들이 보기에 힘든 일도 차근차근 잘 수행해요.<br>
				눈치가 빠르고 말도 잘하기에 말싸움에서 져본 적이 없어요. 겉과 속이 다른 사람이 있으면 다 알고 바로 아웃!<br>
				다만 공감능력은 부족해서 친구가 속상해 하고 있어도 위로는 잘 못해줘요. 참견하는 것을 싫어해서 말하지는 않지만 속으로 누가 옳고 그른지는 항상 판단하고 있어요.<br><br>
				한국인 중의 10.7%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ESFP" style="display: none">
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
</body>
</html>