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
	<title>teamDResult-ISTP</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamD.css">
</head> 

<body style="background-attachment : fixed ;">
	<div id="wrapper_version1">
		<h1>나랑 꼭 닮은<br>짱구 속 등장인물은?</h1>
		
		<div id="result">
		<table style="width:100%">
			<tr>
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/옆집 아주머니.png" style="width:230px; height:230px;">
				<td><h2>만능 재주꾼<br>옆집 아줌마 (ISTP)</h2>
				<p>+ 상성 좋은 케미:<br>타고난 리더십 봉미선<br>
				- 상성 안 좋은 케미:<br>외유내강 차은주</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 옆집아줌마처럼 시니컬의 결정체!<br>
				현실적이고 직설적인 당신, 주위 친구들에 비해 어른스럽다는 이야기를 많이 들어요. 가장 잘하는 것은 선긋기! 나말고 다른 사람들에게 별로 관심이 없어요. 사실 자신에게도 관심이 없는것 같기도 해요.<br>
				남에게 피해주기도, 피해받기도 싫어요. 특히 찡찡이들이랑 상성이 최악이에요. 그들과는 어떻게 대화를 나눠야할지 모르겠어요.<br>
				자립심도 쎄고 연락도 먼저 잘 안 해서 오해를 받지만 은근 활동적인 것을 좋아해요. 아 물론 집 밖으로 나가는 건 또 큰 결심이 필요해요. 이불 밖은 위험하거든요.<br><br>
				한국인 중의 4.7%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ISTP" style="display: none">
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