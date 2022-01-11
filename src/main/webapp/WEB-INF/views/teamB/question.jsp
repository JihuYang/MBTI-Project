<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
   <title>teamBQuestion</title>
       <style>
        div {
            display:block;
        }
        body {
            text-align: center;
        }
        :root {
            background-color: #ededed;
            color:#000;
            font-family: "Noto Sans KR";
        }
        .question {
            
        }
        .question-p {
            font-style: normal;
         font-weight: bold;
         font-size: 1.8rem;
            white-space: pre-line;
      }
      .line {
         background: #FFD336;
         border-radius: 20px;
            line-height: 10px;
            
        }

        .option-btn {
            font-weight: bolder;
            font-size: 1.1rem;
            font-weight: 550;
            height: 8em;
            width: 23rem;
            margin: 1.2rem;
            word-break: keep-all;
            white-space: pre-line;
            cursor: pointer;
            
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
        .question-progress {
            margin: 3rem 5rem;
            position: relative;
            display: block;
        }
        .question-count {
            margin-top: 4rem;
            font-family: Roboto;
         font-style: normal;
         font-weight: 800;
         font-size: 1.3rem;
         line-height: 40px;
         /* identical to box height */

         color: #777777;
        }
        #intro_footer{
           position: fixed;
           bottom: 0;
           width: 100%;
           
           background-color: #CBCBCB;
           font-family: Roboto;
           font-size:1rem;
            color: #000000;
            
        }
    </style>
</head>
<body>
<div id="root">
        <div id="optadATF" style="min-height:110px"></div>
        <div class="question-count">
            1 / 12
        </div>
        <div class="question">
            <h5 class="question-p line">바쁜 일정을 끝내고 드디어 쉴 수 있는 시간이 주어졌다. 무엇을 할까?</h5>
            
        </div>
        <div class="option-btn-div">
            <button value="I" class="option-btn">쉴 땐 혼자가 좋아!<br>집에서 혼자만의 시간을 지낸다.</button>
            <button value="E" class="option-btn">함께가 재밌지! 친구들과 약속을 잡는다. </button>
        </div>
        <div class="question-progress" style="display: none;">
            <div class="progress-bar">
                <div style="height:10px; background-color: rgb(251, 247, 242); border-radius: 50px; width: 100%;">
                    <div style="height: 10px; width: 10%; background-color: rgb(183, 0, 72); transition: width 0.3s ease-in-out 0s; border-radius: inherit; display: flex; align-items: center; justify-content: flex-end;">
                        <span style="padding: 5px; color: rgb(255, 255, 255); font-weight: bold; font-size: 15px; display: none;">10%</span>
                    </div>
                </div>
            </div>
        </div>
        <div id="intro_footer">
            <p>@HGU Winter Spring Camp</p>
        </div>
    </div>
</body>
</html>