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
	<title>teamDResult-ISFP</title>
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
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/훈이.png" style="width:230px; height:230px;">
				<td><h2>울보 중재자<br>훈이 (ISFP)</h2>
				<p>+ 상성 좋은 케미:<br>따뜻한 가장 신형만<br>
				- 상성 안 좋은 케미:<br>현실주의 선생님 채성아</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 훈이처럼 감수성 넘치는 예술가!!<br>
				섬세하고 발랄하면서 순수한 영혼의 소유자인 당신, 내적 갈등이 심해요. 나는 완벽하다고 생각하여 창대하게 시작했지만 끝은 흐지부지인 경우가 많아요. 현실에 적응하지 못하는것 같기도 해요.<br>
				자기애가 강하지만 자존감이 낮아요. 한번씩 너무 우울해져요. 유리멘탈일 경우가 높아요. 사소한 일에도 혼자 감동 받다가 충격받고 그래요.<br>
				의사소통 능력이 뛰어나요. 처음보는 사람한테 말 거는 것은 잘하는데 이상하게 조직생활에서는 그게 안돼요.<br>
				남에게 의지하는 것이 싫어서 내 얘기를 잘 안하고 폐 끼치는 것도 싫어요. 이런저런 잡생각 때문에 예민 보스일 때가 많아요.<br><br>
				한국인 중의 6.5%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ISFP" style="display: none">
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