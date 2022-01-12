<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>teamBStart</title>
	
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
        .footer{
           position: absolute;
           bottom: 0;
           width: 100%;
           background-color: #CBCBCB;
           font: Roboto;
           font-size:10px;
        }
      	</style>
</head>
<body>
	<div id="root">
		<div id="optadATF" style="min-height:110px"></div>
		<div class = "main-container">
			<img src = "ddd" alt="MBTI:배우자 캐릭터 찾기">
			<div class = "text-area">
				<h3>배우자를 찾고싶다고? 감당할 수 있겠어?</h3>
			</div>
			<img src = "ddd" alt="start-btn" onclick="location.href='./question'">
			<div class = "participants">
                현재까지 총 14,312 명이 배우자를 찾았어요!
                <span class="Cursor Cursor--blinking">|</span>
            </div>
		</div>
		<div class="footer">
			<p>@HGU 2022 Winter Camp</p>
		</div>
	</div>
</body>
</html>