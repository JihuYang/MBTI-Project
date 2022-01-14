<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>teamBQuestion</title>
       <style>
        body {
            height: auto;
            display: block;
            text-align: center;
            justify-content: center;
        }
        :root {
            background-color: #ededed;
            color:#000;
            font-family: "Noto Sans KR";
        }
        .question-p {
        	z-index: 1;
            font-style: normal;
         	font-weight: bold;
         	font-size: 1.8rem;
            white-space: pre-line;
            word-break: keep-all;
      }
        .option-btn {
            height: 8em;
            width: 23rem;
            margin: 1.2rem;
            background: #CBCBCB;
	        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
	        border-radius: 21px;
	        border: none;
        }
        .option-btn-div {
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .question-count {
        	font-family: Roboto;
            margin-top: 4rem;
	        color: #777777;
        }
        #footer{
        	position: fixed;
        	font-family: Roboto;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #CBCBCB;            
        }
        mark {
           z-index: 2;
           line-height: 0em;
           min-heihgt: 10px !important;
           padding-bottom: 1px;
           border-radius: 50px;
           background-color: #FFD336;
           word-break: keep-all;
      }
    </style>
</head>
<body>
<div id="root">
        <div id="optadATF" style="min-height:110px"></div>
        <div class="question-count">
            <h2>1 / 12</h2>
        </div>
        <div class="question">
            <h2 class="question-p line"><mark>바쁜 일정을 끝내고 드디어 쉴 수 있는 시간이 주어졌다. 무엇을 할까?</mark></h2>
            <div class="underline"></div>    
        </div>
        <div class="option-btn-div">
            <button value="I" class="option-btn" onclick="location.href='./result'"><h3>쉴 땐 혼자가 좋아!<br>집에서 혼자만의 시간을 지낸다.</h3></button>
            <button value="E" class="option-btn" onclick="location.href='./result'"><h3>함께가 재밌지! 친구들과 약속을 잡는다.</h3></button>
        </div>
        <div id="footer">
            <p>@HGU Winter Spring Camp</p>
        </div>
    </div>
</body>
</html>
