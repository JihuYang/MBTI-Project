<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>인간관계 유형별 MBTI 테스트</title>
	
	<link rel="stylesheet" type="text/css" href="../resources/css/teamE.css">
    
</head>
<body>
<!-- 시작 화면 -->
<div class="intro">
    <div class="topbar-logo logo-none"></div>
    <h1 class="title text-a">#인간관계 유형별 MBTI</h1>
    <p class="subtitle text-a">이 사람과 있을 때 나는 어떤 유형의 사람일까?</p>
    <img src="../resources/img/teamE/mbtiStartPicture.png" class="thinker" />
    <div class="middle-logo"></div>
    <!-- class="img-main-title block-90" -->
    <button class="btn-normal" onclick="location.href='question'">테스트 시작</button>

</div>
</body>
</html>