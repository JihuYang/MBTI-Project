<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta id="metaDescription" name="description" content="MBTI로 나의 배우자 캐릭터 찾기">
	<meta id="metaKeywords" name="keywords" content="MBTI로 나의 배우자 캐릭터 찾기">
	
	 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	
	<title>[결과]나의 배우자는 누구?</title>
	<link rel="stylesheet" type="text/css" href='../resources/css/teamB.css' />
	<style>

	.btn-fink {
    color: #000;
    background-color: #FF9E9E;
    border-color: #FF9E9E;
	}
	.comments {
	max-width:500px;min-height:400px;position: relative;margin:0 auto; background:#ededed;
	padding: 10px;
	border: 2px solid #ffc107;
	border-radius: 17px;
	
	}
	label {
    display: flex;
	}
	
	
	</style>
</head>
<body>
	<div id = "result container">
		<div id="optadATF" style="min-height:110px"></div>
		<div class = "result-wrap">
			<div class="img-result">
				<img src = "../resources/img/teamB/ENFJ.png" alt="MBTI:결과 img" ><br>
			</div>
			<div class="comments" style="margin-top:100px;"><label style="font-size: 20px; width: 50%;">댓글 6</label>
				<div class="input-group mb-3">
				  <input type="text" class="form-control" placeholder="댓글을 입력하세요." aria-label="comments" aria-describedby="button-addon2">
				  <button class="btn btn-warning" type="button" id="button-addon2">Button</button>
				</div>
				<hr>
				<div id="cmt1">
					<img src = "../resources/img/teamB/main_img.png" alt="사진" style="width:30px; height:30px; border-radius:100px; border:2px; float:left; margin-right:14px;">
					<div id="nickname" style="float:left;">
						<div>김땡땡<br></div>
					</div>
					<div id="recommend" style="float:right;">
					<img src="../resources/img/teamB/추천.png" alt="추천" style="width:15px; height:15px; border-radius:100px;">
					<img src="../resources/img/teamB/비추천.png" alt="비추천" style="width:15px; height:15px; border-radius:100px; margin-left:20px;">
					</div>
					
					<div id="content" style="float:left;">
						<span><br></span>
					</div>
					

				</div>
			</div>

			
			<div style="margin-top:100px;">
				<img src = "../resources/img/teamB/check.png" alt="MBTI:결과" style="vertical-align:center; weight:auto; height:20px;" >
				<span class = "other_test" style="font-size:20px; font-weight: bold;">다른 테스트 하러가기</span>
			</div><br>
			<div class="btn-group-vertical" style="margin-bottom:150px;">
			 	<button type="button" class="btn btn-warning btn-fink" style="border-radius:15px; margin-bottom:10px;"><h3 style="font-size:20px;">내가 개발자라면? 개발자 유형 테스트</h3></button>
				<button type="button" class="btn btn-warning btn-fink" style="border-radius:15px; margin-bottom:10px;"><h3 style="font-size:20px;">MBTI 유형에 맞는 찰떡 공부법</h3></button>
				<button type="button" class="btn btn-warning btn-fink" style="border-radius:15px; margin-bottom:10px;"><h3 style="font-size:20px;">짱구에서 나는 누굴까?</h3></button>
				<button type="button" class="btn btn-warning btn-fink" style="border-radius:15px; margin-bottom:10px;"><h3 style="font-size:20px;">인간관계 유형별 MBTI</h3></button>
			</div>			
		</div>
		<div class="footer">
			<p class=footer-text>@HGU 2022 Winter Camp</p>
		</div>
	</div>
</body>
</html>