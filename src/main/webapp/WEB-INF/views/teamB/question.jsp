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
	<title>배우자 찾는 중..</title>
	<link rel="stylesheet" type="text/css" href='../resources/css/teamB.css' />
	<script src="../resources/js/question.js?ver=<%System.currentTimeMillis();%> %>" ></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
   <div id="question-wrap">
      <div id="optadATF" style="min-height: 110px"></div>
      <div class= "qBox-wrap">
			<div class="qBox">
				<p class="q-count"><span id="Qnum"><strong>${questions[0].questionNum}</strong></span><span> / 12</span></p>
				<h2><span class="question">${questions[0].question}</span></h2><br>
				<div class="option-btn-div">
					<button value="q1-1" name="q1" class="option-btn btn1"
						onclick="saveType(${1}, '${questions[0].result}')">
						<h3>${questions[0].answer}</h3>
					</button>
					<button value="q1-2" name="q1" class="option-btn btn2"
						onclick="saveType(${2}, '${questions[1].result}')">
						<h3>${questions[1].answer}</h3>
					</button>
				</div>
				<div class="percentage">
					<div class="progress-wrap">
						<span class="progress-bar" style="width: 10%"></span> <span
							class="bar-text">8.33%</span>
					</div>
				</div>
			</div>
		</div>
      	<div class="footer">
			<p class=footer-text>@HGU 2022 Winter Camp</p>
		</div>
   </div>
</body>
</html>