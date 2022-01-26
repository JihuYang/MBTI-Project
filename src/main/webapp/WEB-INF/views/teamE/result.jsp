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
	
	<link rel="stylesheet" type="text/css" href="../resources/css/teamE.css">
    
</head>
<body>

<!-- 결과 화면 -->
<div class="result">
	<div class="box">
	<h1 class="text-c">ESFP <br> 자유로운 영혼을 가진 친구</h1>
    <img src="../resources/img/teamE/bar.jpg" class="bar"/>
    <img src="../resources/img/teamE/water.jpg" class="main-animal"/>
	</div>
    
    <div class="outer">
    <div class="resultContent">
    <p class="text-d">밖에서 노는 걸 좋아하는 친구</p>
    <p class="text-d">정이 많아서 친구들이 좋아함</p>
    <p class="text-d">잘 먹고 잘 자고 생각이 단순한 친구</p>
    <p class="text-d">근데 멘탈은 쿠크다스다</p><br>
    </div>
    </div>
    
	
	<p class="goodRelation">잘 맞는 유형 <br> ISFJ <br> <img src="../resources/img/teamE/shark.jpg" class="animals"/> </p>
  
    <p class="badRelation">안 맞는 유형 <br> INFP <br> <img src="../resources/img/teamE/bear.jpg" class="animals"/> </p> 
    	
    
    <br>
    <button class="btn-result" onclick="location.href='start'">다시하기</button><br>
    <button class="btn-result">저장하기</button><br>
    
    <a id="kakao-link-btn" href="javascript:sendLink()"> 
    <img src="../resources/img/teamE/카톡 마크.jpeg" class="kakao"/>
    카카오톡 공유</a>
    
    <img src="../resources/img/teamE/comments.jpeg" class="comments"/><br>
    <input type="text" name="comment" size="40" value="댓글을 입력하세요." class="texts">
    <button type="button" class="btn-comments">입력</button>
    
    


</div>

</body>
</html>