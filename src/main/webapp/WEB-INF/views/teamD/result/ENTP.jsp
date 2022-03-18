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
	<title>teamDResult-ENTP</title>
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
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/짱구.png" style="width:230px; height:230px;">
				<td><h2>천방지축 <br>흥부자 짱구 (ENTP)</h2>
				<p>+ 상성 좋은 케미:<br>현실주의 선생님 채성아<br>
				- 상성 안 좋은 케미:<br>무한 긍정 짱아</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 짱구처럼 인기만점 슈퍼스타!<br>
				사교적이고 언제나 낙천적인 당신, 에너자이저에요. 언제나 발랄한 언변으로 주위 사람들을 매료시켜요.<br>
				아끼는 사람들과 희로애락을 함께하며 몇 시간씩 수다를 떨어요. 친구들을 위로하고 용기를 북돋아 주는데 이들보다 더 많은 시간과 에너지를 소비하는 사람이 없을 거에요.<br>
				사회생활에서도 만랩이며 분위기 메이커인 당신은 인기를 독차지해요. 하지만 누구에게는 시끄럽고 불편한 친구일 수도 있어요.<br>
				개방적이고 자유로운 영혼의 소유자이기에 틀에 얽매이는 것을 싫어해요. 그래서 뛰어난 미적 감각을 가지고 있어요.<br>
				다만 해야 할 일을 미루는 경향이 있어 게으르다는 평을 들을 때도 있어요.<br><br>
				한국인 중의 5.3%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ENTP" style="display: none">
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