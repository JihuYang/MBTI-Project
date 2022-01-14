<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>teamBResult</title>
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

	    .other_test_list{
	    	background-color: C4C4C4;
	    	border-radius: 35px;
	    }
        .footer{
           position: fixed;
           left: 0;
           bottom: 0;
           width: 100%;
           background-color: #CBCBCB;
           font: Roboto;
           font-size:15px;
        }
	</style>
</head>
<body>
	<div id = "root">
		<div id="optadATF" style="min-height:110px"></div>
		<div class = "main-container">
			<img src = "../resources/img/ISTJ_쉘든.png" alt="MBTI:결과 img" ><br>
			<div class = "other_test" style="margin-top:100px;">
				<img src = "../resources/img/check.png" alt="MBTI:결과" style="vertical-align:middle;">
				<span style="font-size:40px; font-weight: bold;">다른 테스트 하러가기</span>
			</div>
				
			<div class="other_test_list" style="margin-bottom:150px;">
				<h3 style="hont-size:34px;">내가 개발자라면? 개발자 유형 테스트</h3>
				<h3 style="hont-size:34px;">MBTI 유형에 맞는 찰떡 공부법</h3>
				<h3 style="hont-size:34px;">짱구에서 나는 누굴까?</h3>
				<h3 style="hont-size:34px;">인간관계 유형별 MBTI</h3>
			</div>

			<div class = "to-other-link" style="display:none;">
				<a class="other-link" target="blank" rel="link1" href="링크 주소"><img src="이미지 주소?" class="img-btn" alt="another-test-link-1"></a><br>
				<a class="other-link" target="blank" rel="link2" href="링크 주소"><img src="이미지 주소?" class="img-btn" alt="another-test-link-2"></a><br>
				<a class="other-link" target="blank" rel="link3" href="링크 주소"><img src="이미지 주소?" class="img-btn" alt="another-test-link-3"></a><br>
				<a class="other-link" target="blank" rel="link4" href="링크 주소"><img src="이미지 주소?" class="img-btn" alt="another-test-link-4"></a>
			</div>
		</div>
		<div class="footer">
			<p>@HGU 2022 Winter Camp</p>
		</div>
	</div>
</body>
</html>