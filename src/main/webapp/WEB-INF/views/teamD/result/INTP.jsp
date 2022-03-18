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
	<title>teamDResult-INTP</title>
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
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/맹구 투명 배경.png" style="width:230px; height:230px;">
				<td><h2>사려깊은 몽상가<br>맹구 (INTP)</h2>
				<p>+ 상성 좋은 케미:<br>타고난 리더십 나미리<br>
				- 상성 안 좋은 케미:<br>따뜻한 가상 신형만</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 맹구처럼 게으른 천재!<br>
				직설적이고 공감능력이 없는 당신, 자발적 아싸에요. 혼자인게 가장 행복해요. 정말 친한 친구 아니면 나를 이해하기 힘들 거에요. 평소에는 말 한마디 없다가 내 관심분야가 나오면 TMI로 변신해요. <br>
				귀차니즘의 끝판왕, 연락두절은 기본이고 나보다 미루기를 잘하는 사람은 없어요. 그런데 한번 시작하면 결과를 보고야 마는 천재에요. 게으러서 시작을 잘 안 할 뿐!<br>
				남이 내 욕을 하든 말든 신경을 안 써요. 관심이 없어요. 근데 내 앞에서 무논리를 펼치지 말아줘요. 거기에 목소리까지 크면 최악이에요.<br><br>
				한국인 중의 4.3%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="INTP" style="display: none">
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