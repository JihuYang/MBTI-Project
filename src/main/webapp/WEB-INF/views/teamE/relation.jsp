<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인간관계 유형별 MBTI 테스트</title>

<style>

        body {
            min-width: 320px;
            max-width: 400px;
            margin: 0 auto;
        }

        .topbar-logo {
            display: flex;
            align-items: center;
            width: 100%;
            height: 54px;
            padding: 0 20px;
        }

        .title {

        }

        .text-a {
            text-align: center;
        }

        button {
            cursor: pointer;
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-normal {
            width: 50%; height: 60px;
            font-size: 18px; color: #fff;
            background-color: #000;
            display: block;
            margin: 0 auto;
        }

    </style>
    
</head>
<body>
<!-- 궁금한 관계 유형 선택 화면 -->
<div class="relation">
    <div class="topbar-logo logo-none"></div>
    <h1 class="title text-a">누구와의 관계가 궁금한가요?</h1>
    <!-- <img src="../pictures/mbtiStartPicture.png"> -->
    <!-- class="img-main-title block-90" -->
    <button class="btn-normal">선택</button>

</div>

</body>
</html>