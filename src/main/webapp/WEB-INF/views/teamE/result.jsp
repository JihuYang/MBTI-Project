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
            border:2px solid black;
        }
        
        .text-b {
    	top: 45%;
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
    
    	.main-animal {
    	top: 70%;
    	left: 45%;
    	position: absolute;
    	width: 35px;
    	height: 30px;
    	}
    	
    	.animals {
    	width: 35px;
    	height: 30px;
    	}
    
    .outer {
    	border: 2px solid black;
    	margin-bottom: 40px;
    	background-color: #000;
    }
    
    .resultContent {
    	border: 2px solid black;	
    	margin: 20px;
    	background-color: white;
    }
    
    
    
    .goodRelation {
    	text-align: center;
    	width: 192px;
    	display: inline-block;		
    	margin-bottom: 40px;
    }
    
    .badRelation {
    	text-align: center;
    	width: 192px;
    	display: inline-block;	
    	margin-bottom: 40px;
    }
    
    .share {
    	background-color: black;
    	color: white;
    	border-radius: 14px;
    	border: 1px solid black;
  		margin-bottom: 30px;
  		margin-left: 40%;
  		margin-top: 10px;
    }
    
    .kakao {
    	margin-left: 45%;
    	width: 40px;
    	height: 40px;
    	boarder-radius: 30px;
    }
    
    .comments {
    	width: 90%;		
    	margin-left: 7%;
    	margin-bottom: 40px;
    }
    
    .texts {
    	display: inline-block;
    }
    
    .btn-comments {
    	display: inline-block;
    	width: 40px;
    	background-color: black;
    	color: white;
    	margin-bottom: 50px;
    }
    
    </style>
    
</head>
<body>

<!-- 결과 화면 -->
<div class="result">
	<div class="box">
	<h1 class="text-b">ESFP <br> 자유로운 영혼을 가진 친구</h1>
    <img src="../resources/img/teamE/bar.jpg" class="bar"/>
    <img src="../resources/img/teamE/water.jpg" class="main-animal"/>
	</div>
    
    <div class="outer">
    <div class="resultContent">
    <p class="text-a">밖에서 노는 걸 좋아하는 친구</p>
    <p class="text-a">정이 많아서 친구들이 좋아함</p>
    <p class="text-a">잘 먹고 잘 자고 생각이 단순한 친구</p>
    <p class="text-a">근데 멘탈은 쿠크다스다</p><br>
    </div>
    </div>
    
	
	<p class="goodRelation">잘 맞는 유형 <br> ISFJ <br> <img src="../resources/img/teamE/shark.jpg" class="animals"/> </p>
  
    <p class="badRelation">안 맞는 유형 <br> INFP <br> <img src="../resources/img/teamE/bear.jpg" class="animals"/> </p> 
    	
    
    <br>
    <button class="btn-result" onclick="location.href='start'">다시하기</button><br>
    <button class="btn-result">저장하기</button><br>
    
    <img src="../resources/img/teamE/카톡 마크.jpeg" class="kakao"/>
    <button class="share">카카오톡 공유</button>
    
    <img src="../resources/img/teamE/comments.jpeg" class="comments"/><br>
    <input type="text" name="comment" size="40" value="댓글을 입력하세요." class="texts">
    <button type="button" class="btn-comments">입력</button>
    
    


</div>

</body>
</html>