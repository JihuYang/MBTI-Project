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
	<title>나의 배우자는 누구?</title>
	<style>
		:root {
			background-color: #ededed;
		    color: black;
		    font: sans-serif, "NanumSquare", "Noto Sans";
	    }
	    body {
	    	height: auto;
            display: block;
            background-color: var(background-color);
            text-align: center;
            justify-content: center;
	    }
	    div {
	    	margin: 0;
	    	padding: 0;
	    	border: 0;
	    	list-style: none;
	    	display: block;
	    }
        .footer-wrap{
           position: fixed;
           left: 0;
           bottom: 0;
           width: 100%;
           background-color: #CBCBCB;
           font: Roboto;
           font-size:15px;
        }
        /*img css*/
        .mainImg {
        	max-width: 350px;
        	width: 100%;
        	height: auto;
        }
        .startbnt {
        	width: 180px;
        	height: 180px;
        }
        h1 {
        	display: block;
        	margin: 0;
        	padding: 0;
        	font-size: 2em;
        	margin-block-start: 0.67em;
		    margin-block-end: 0.67em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    font-weight: bold;
        }
      	</style>
</head>
<body>
	<div id="root">
		<div id="optadATF" style="min-height:110px"></div>
		<div class = "top-wrap"><br><br>
			<img src = "../resources/img/teamB/main_img.png" alt="MBTI:배우자 캐릭터 찾기" class="mainImg" style="width:600px;">
			<div class = "text-area">
				<h2>배우자를 찾고싶다고?<br> 감당할 수 있겠어?</h2>
			</div>
			<img src = "../resources/img/teamB/main_start.png" alt="start-btn" class="startbnt" onclick="location.href='./question'">
			<div class = "participants">
                현재까지 총 14,312 명이 배우자를 찾았어요!
                <span class="Cursor Cursor--blinking">|</span>
            </div>
		</div>
		<div class="footer-wrap">
			<p onclick="location.href='./link'">@HGU 2022 Winter Camp [Img Reference Click!]</p>
		</div>
	</div>
</body>
</html>