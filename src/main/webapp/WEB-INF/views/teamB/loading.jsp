<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta id="metaDescription" name="description" content="MBTI로 나의 배우자 캐릭터 찾기">
	<meta id="metaKeywords" name="keywords" content="MBTI로 나의 배우자 캐릭터 찾기">
	<title>배우자 분석 중..</title>
	<link rel="stylesheet" type="text/css" href='../resources/css/teamB.css' />
	<meta http-equiv="refresh" content="5 result">
</head>
<body>
    <div class="loading-wrap">
    	<img src = "../resources/img/teamB/imo.gif" alt="MBTI:배우자 캐릭터 찾기" class="loading-imo">
        <ul id="loadbar">
            <li><div id="layerFill1" class="bar"></div></li>
            <li><div id="layerFill2" class="bar"></div></li>
            <li><div id="layerFill3" class="bar"></div></li>
            <li><div id="layerFill4" class="bar"></div></li>
            <li><div id="layerFill5" class="bar"></div></li>
            <li><div id="layerFill6" class="bar"></div></li>
            <li><div id="layerFill7" class="bar"></div></li>
            <li><div id="layerFill8" class="bar"></div></li>
            <li><div id="layerFill9" class="bar"></div></li>
            <li><div id="layerFill10" class="bar"></div></li>
        </ul>
        배우자 분석 중...
    </div>
    <script>
        $(document).ready(function() {
            $('#loadbar').removeClass('ins');
            $('#loadbar').removeClass('ins').delay(10).queue(function(next) {
                $(this).addClass('ins');
                next();
            });
            return false;
        });
    </script>
    <div class="footer">
		<p class=footer-text>@HGU 2022 Winter Camp</p>
	</div>
</body>
</html>