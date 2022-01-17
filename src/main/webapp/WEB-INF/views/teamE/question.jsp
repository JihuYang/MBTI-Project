<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamEQuestion</title>
	
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

    .text-b {
    	top: 50%;
    	left: 20%;
    	position: absolute;
        text-align: center;
        font-size: 16px;
		-webkit-transform:rotate(9deg);        
    }

    button {
        cursor: pointer;
        border: none;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius:8px;
    }

    .btn-question-1 {
        width: 100%; height: 60px;
        color: #fff;
        border:1px solid black;
        background-color: #000;
    }
    
    .btn-question-2 {
        width: 100%; height: 60px;
        color: #fff;
        border:1px solid black;
        margin: 0px 0px 40px;
        background-color: #000;
    }
    
    .number {
       text-align: left;
       border-radius: 14px;
	padding: 0px 12px;
  	text-align: center;
  font-size: 14px;
  line-height: 26px;
  background-color: #fff;
  border: 1px solid black;
  color: #848484;
  	
    }
    
    .box {
    	margin: 0px 0px 60px;	
    	position:relative;
    }
    

</style>

</head>
<body>

<!-- 질문화면 -->
<div class="question">
    <!-- <div class="topbar-logo logo-none"></div> -->
    <div class = "box">
    <h1 class="title text-b">친구들과 의논할 때 내가 말하는 방식은?</h1>
    <img src="../resources/img/teamE/bar.jpg" class="bar" />
    </div>
    
    
    <!-- class="img-main-title block-90" -->
    <button class="btn-question-1" onclick="location.href='result'" >내 생각을 충분히 정리하고 말한다.</button><br>
    <button class="btn-question-2" onclick="location.href='result'">정리하고 말하기보다 그때그때 떠오르는 말들을 바로하는 편이다.</button>
    
    <div class="number">1/12</div>
        
    




</div>
</body>
</html>