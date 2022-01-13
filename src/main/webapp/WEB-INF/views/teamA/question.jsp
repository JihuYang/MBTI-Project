<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../resources/css/teamA.css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamA 질문 </title>
</head>
<body>
<div class="container-fluid">
<div class="row text-center">
    <div class="col">
      
    </div>
    <div id = "main" class="col content ">
	     <div id="top" class="top">
		    <div class="explanation text-white">
		    	나의 개발자 유형 찾는 중...
		    </div>
		    <div class="speech-container">
		    <div class="p-3 speech-bubble">
		    	<div class="number">
		    	<span>1/12번째 </span>
		    </div>
		    </div>
		    <div class="p-3 speech-shadow">
		    
		    </div>
		    </div>
		</div>
	     <div id="middle" class="middle text-center">
	    	<div class="bar text-white">
	    	<!-- 	<span class="bar-text">내가 개발자라면?</span> -->
	    	</div> 
	    	<div class="p-3 window-question bg-white">
	    	<div class="question-format">
	    	<span class="void">void </span><span class="Qnum">Question1 </span><span class="char">() {</span>
	    	</div>
	    	<div class="question-content">
	    	<span class="printf">printf</span><span class="char">(</span><span class="question">"여기에 질문을 적어주세요"</span><span class="char">);</span>
	    	</div>
	    	<div class="question-format">
	    	<span class="char">}</span>
	    	</div>
	    	</div>
	    </div>
	    <div id="bottom" class="bottom">
			<button type="button" class="btn btn-light btn-answer">답안 1</button>
		</div>
		 <div id="bottom" class="bottom">
			<button type="button" class="btn btn-light btn-answer">답안 2</button>
		</div>

	</div>
    <div class="col">
   
    </div>
  </div>
  
</div>
<footer class="text-center"><span class="align-middle">@2022 MBTI에 진심인 팀 All rights reserved.</span></footer>
</body>
</html>