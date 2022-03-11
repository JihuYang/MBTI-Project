<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../resources/js/shareProject.js"></script>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamEResult</title>
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamE.css">
    
</head>
<body>

<!-- 결과 화면 -->
<div class="result">
	<div class="box">
	<h1 class="text-c">ESFP <br> 자유로운 영혼을 가진 친구</h1>
    <img src="../resources/img/teamE/bar.jpg" class="bar"/>
    <img src="../resources/img/teamE/ESFP.jpeg" class="main-animal"/>
	</div>
    
    <div class="outer">
    <div class="resultContent">
    <p class="text-d">밖에서 노는 걸 좋아하는 친구</p>
    <p class="text-d">정이 많아서 친구들이 좋아함</p>
    <p class="text-d">잘 먹고 잘 자고 생각이 단순한 친구</p>
    <p class="text-d">근데 멘탈은 쿠크다스다</p><br>
    </div>
    </div>
    
	
	<p class="goodRelation">잘 맞는 유형 <br> ISFJ <br> <img src="<%=request.getContextPath()%>/resources/img/teamE/ISFJ.jpeg" class="animals"/> </p>
  
    <p class="badRelation">안 맞는 유형 <br> ENFP <br> <img src="<%=request.getContextPath()%>/resources/img/teamE/ENFP.jpeg" class="animals"/> </p> 
    	
    
    <br>
    <div class="restarticon">
			<a id="home-btn" href="<%=request.getContextPath()%>/index"> <input
				type="button" value="홈가기" class="btn-result"></a>
			
			<input type="button" value="다시하기"
				class="btn-result"
				onclick="location.href='<%=request.getContextPath()%>/teamE/start'">
			
			<form method="post"
				action="<%=request.getContextPath()%>/teamE/saved"
				style="display: inline-block;">
				<input name="mbti" id="mbti" value="ESFP" style="display: none">
				<button class="btn-result">
					<input type="button" value="저장하기" style="border: none; background: none; padding-left: 166px; padding-right: 166px;">
				</button>
			</form>
	</div>
		<div class="share-wrap" style="margin-bottom: 40px;">
			<p>공유하기</p>
			<a id="kakao-link-btn" href="javascript:sendLink()"> <img
				src="<%=request.getContextPath()%>/resources/img/teamB/kakaotalk_icon.png"
				alt="kakaoicon"></a> <a id="copy-link-btn"
				href="javascript:copyLink()"> <img
				src="<%=request.getContextPath()%>/resources/img/teamB/link_icon.png"
				alt="linkicon"></a>
		</div>
</div>

</body>
</html>