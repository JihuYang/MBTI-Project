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
	<title>teamDResult-ISTJ</title>
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
				<td><img src="<%=request.getContextPath()%>/resources/img/teamD/채성아 선생님.png" style="width:230px; height:230px;">
				<td><h2>현실주의<br>채성아 선생님 (ISTJ)</h2>
				<p>+ 상성 좋은 케미:<br>천방지축 흥부자 짱구<br>
				- 상성 안 좋은 케미:<br>울보 중재자 훈이</p>
				</td>
		</table>
		</div>
		
		<div id="result_more">
			<p>당신은 채성아 선생님처럼 신중한 현실주의자!<br>
				차분하면서 어른스러운 사람인 당신은 진지하고 책임감이 많아 장녀나 장남 취급을 많이 받아요.<br>
				말이 느린편이며 매사에 신중을 거듭하는 편이에요.<br>
				고집도 쎄기에 다른 사람의 말을 잘 안 들어요. 남이 보기에는 칼 같고 차가워 보이지만 실제로는 따뜻한 사람이에요, 엄청 능글맞아요.<br>
				무덤덤하고 표정변화가 거의 없어 감정이 없어보이지만, 속으로는 생각이 많아요. 근데 어떻게 표현할지 모르겠어요. 내 얘기를 하는 것도, 남 얘기를 듣는 것도 힘들어요. 그러나 혼자 내버려두면 알아서 잘해요.<br>
				어떤 일이든 쉽게 가정하거나 결론을 내리지 않아요. 객관적인 분석을 통해 현실적이고 실행 가능한 계획을 세우는 걸 좋아해요.<br>
				싫어하는 건 약속을 어기는 사람, 특히 시간 약속을 어기면 연을 끊어버릴지도 몰라요.<br>
				시끄럽고 감정이 풍부한 친구들과 맞지 않아요. 그리고 텐션이 높은 친구들이랑 같이 있으면 기가 빨려요.<br><br>
				한국인 중의 14.7%가 나랑 같은 유형이에요.</p>
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
							<input name="mbti" id="mbti" value="ISTJ" style="display: none">
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