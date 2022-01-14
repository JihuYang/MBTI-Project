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
	<link rel="stylesheet" type="text/css" href='../resources/css/teamB.css' />
</head>
<body>
	<div id="intro-wrap">
		<div id="optadATF" style="min-height:110px"></div>
		<div class = "top-wrap"><br><br>
			<img src = "../resources/img/teamB/main_img.png" alt="MBTI:배우자 캐릭터 찾기" class="intro-mainImg" style="width:600px;">
			<div class = "text-area"><br>
				<h2>배우자를 찾고싶다고?<br> 감당할 수 있겠어?</h2>
			</div>
			<img src = "../resources/img/teamB/main_start.png" alt="start-btn" class="startbnt" onclick="location.href='./question'">
			<div class = "participants">
                현재까지 총 14,312 명이 배우자를 찾았어요!
                <span class="Cursor Cursor--blinking">|</span>
            </div>
		</div>
		<div class="footer-wrap">
			<div class="wrap">
				<div class="imgreference">
					<ul class="tab">
						<li>
							<a href="https://csee.handong.edu/sw-slab/" target="_blank" onclick="GA_Event('MBTI_intro', 'about', 'Click');">
								<span>WALAB</span>
							</a>
						</li>
						<li>
							<a href="'./link'"target="_blank" onclick="GA_Event('MBTI_intro', 'about', 'Click');">
								<span>IMG REFERENCE</span>
							</a>
						</li>
					</ul>
				</div>
				<div class="footer-hgulogo">
					<a href="https://www.handong.edu/" target="_blank" onclick="GA_Event('MBTI_intro', 'footer_logo', 'Click');">
					<img src="../resources/img/teamB/hgu-logo.png" alt=""></a>
				</div>
				<div class="footer-copy">ⓒ 2022 HGU Winter Camp. All Rights Reserved.
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>