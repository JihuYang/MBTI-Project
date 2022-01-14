<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>인간관계 유형별 MBTI 테스트</title>
	
	<style>
        body{
            min-width: 320px;
            max-width: 400px;
            margin: 0 auto;
        }

        /* 상단 로고 */
        .topbar-logo {
            display: flex;
            align-items: center;
            width: 100%;
            height: 54px;
            padding: 0 20px;
        }
        /* 제목 */
        .title {
            display: block;
            text-align: center;
        }

        .subtitle {
            text-align: center;
        }

        /* 버튼 */
        button {
            cursor: pointer;
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-normal {
            width: 80%; height: 60px;
            font-size: 18px; color: #fff;
            background-color: #000;
            display: block;
            margin: 0 auto;
        }

        /* 인트로 화면 */
        .intro h1 {
            font-size: 30px;
            margin: 24px 0px 8px;
        }

        .thinker {
            margin:24px auto;
        }

        /* 정렬 */

        .text-a {
            text-align: center;
        }
        
        .thinker {
        	display: block;
        	margin: 24px auto;
        	width: 90%;
        	height: 400px;
        }


    </style>
    
</head>
<body>
<!-- 시작 화면 -->
<div class="intro">
    <div class="topbar-logo logo-none"></div>
    <h1 class="title text-a">인간관계 유형별 MBTI</h1>
    <p class="subtitle text-a">이 사람과 있을 때 나는 어떤 유형의 사람일까?</p>
    <img src="../resources/img/teamE/mbtiStartPicture.png" class="thinker" />
    <!-- class="img-main-title block-90" -->
    <button class="btn-normal" onclick="location.href='question'">테스트 시작</button>

</div>
</body>
</html>