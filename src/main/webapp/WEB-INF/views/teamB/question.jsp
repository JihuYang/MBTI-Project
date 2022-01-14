<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   
   <!--  Bootstrap CSS -->
   <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
	
   <title>teamBQuestion</title>
       <style>
<<<<<<< HEAD
       :root {
=======
        div {
            display:block;
        }
        body {
            text-align: center;
            justify-content: center;
        }
        :root {
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
            background-color: #ededed;
            color:#000;
            font-family: "Noto Sans KR";
        }
<<<<<<< HEAD
        body {
            height: auto;
            display: block;
            text-align: center;
            justify-content: center;
=======
        .underline {
        	height: auto;
            display: block;
            background-color: var(background-color);
            text-align: center;
            justify-content: center;
        }
        .question {
            
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
        }
        .question-p {
        	z-index: 1;
            font-style: normal;
         	font-weight: bold;
         	font-size: 1.8rem;
            white-space: pre-line;
            word-break: keep-all;
      }
<<<<<<< HEAD
=======
      

>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
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
<<<<<<< HEAD
        #footer{
        	position: fixed;
        	font-family: Roboto;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #CBCBCB;            
=======
        #intro_footer{
           position: fixed;
           bottom: 0;
           left: 0;
           width: 100%;
           
           background-color: #CBCBCB;
           font-family: Roboto;
           font-size:15px;
           color: #000000;
            
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
        }
        mark {
<<<<<<< HEAD
           z-index: 2;
           line-height: 0em;
           min-heihgt: 10px !important;
           padding-bottom: 1px;
           border-radius: 50px;
           background-color: #FFD336;
           word-break: keep-all;
      }
=======
  			display: inline-block;
  			line-height: 0em;
  			padding-bottom: 0.5em;
  			border-radius: 50px;
  			background-color: #FFD336;
		}
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
    </style>
</head>
<body>
	<div id="root">
        <div id="optadATF" style="min-height:110px"></div>
        <div class="question-count">
            <h2>1 / 12</h2>
        </div>
        <div class="question">
<<<<<<< HEAD
            <h2 class="question-p line"><mark>바쁜 일정을 끝내고 드디어 쉴 수 있는 시간이 주어졌다. 무엇을 할까?</mark></h2>
            <div class="underline"></div>    
=======
            <h5 class="question-p line"><mark> 바쁜 일정을 끝내고 드디어 쉴 수 있는 시간이 주어졌다. 무엇을 할까? </mark></h5>
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
        </div>
        <div class="option-btn-div">
<<<<<<< HEAD
            <button value="I" class="option-btn"><h3>쉴 땐 혼자가 좋아!<br>집에서 혼자만의 시간을 지낸다.</h3></button>
            <button value="E" class="option-btn"><h3>함께가 재밌지! 친구들과 약속을 잡는다.</h3></button>
        </div>
        <div id="footer">
=======
            <button value="I" class="option-btn" onclick="location.href='./result'">쉴 땐 혼자가 좋아!<br>집에서 혼자만의 시간을 지낸다.</button>
            <button value="E" class="option-btn" onclick="location.href='./result'">함께가 재밌지! 친구들과 약속을 잡는다. </button>
        </div>
        <div id="intro_footer">
>>>>>>> branch 'teamB' of https://github.com/JihuYang/MBTI-Project.git
            <p>@HGU Winter Spring Camp</p>
        </div>
    </div>
</body>
</html>

