<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamEResult</title>
	
	<style>
        body {
            min-width: 320px;
            max-width: 400px;
            margin: 0 auto;
        }

        .text-a {
            text-align: center;
        }

        .mbti h1 {
            font-size: 30px;
            margin: 24px 0px 8px;
        }

        .topbar-logo {
            display: flex;
            align-items: center;
            width: 100%;
            height: 54px;
            padding: 0 20px;
        }

        button {
            cursor: pointer;
            border: none;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .btn-result {
            width: 100%; height: 60px;
            color: #000;
            background-color: #fff;
            border:1px solid black;
        }
        
        .text-b {
    	top: 50%;
    	left: 35%;
    	position: absolute;
        text-align: center;
        font-size: 16px;
		-webkit-transform:rotate(9deg);        
    }
        
         .box {
    	margin: 0px 0px 60px;	
    	position:relative;
    }
    
    .resultContent {
    	border: 1px solid black;	
    	
    }
    
    .goodRelation {
    	border: 1px solid black;	
    }
    
    .badRelation {
    	border: 1px solid black;
    }
    
    </style>
    
</head>
<body>

<!-- 결과 화면 -->
<div class="result">
	<div class="box">
	<h1 class="text-b">ESFP <br> 자유로운 영혼을 가진 0</h1>
    <img src="../resources/img/teamE/bar.jpg" class="bar"/>
	</div>
    
    <div class="resultContent">
    <p class="text-a">밖에서 노는 걸 좋아하는 0</p>
    <p class="text-a">정이 많아서 0들이 좋아함</p>
    <p class="text-a">잘 먹고 잘 자고 생각이 단순한 0</p>
    <p class="text-a">근데 멘탈은 쿠크다스다</p><br>
    <p class="text-a">원래 mbti인 ISFJ와 상성이 좋음</p>
    </div>
	
	<div class="goodRelation">
	<p>잘 맞는 유형</p> 
    <p>ISFJ</p>
	</div>
    
    <div class="badRealtion">
    <p>안 맞는 유형</p>
    <p>INFP</p>
    </div>
    
    <br>
    <button class="btn-result">다시하기</button><br>
    <button class="btn-result">저장하기</button><br>
    <button>카카오톡 공유</button>
    


</div>

</body>
</html>