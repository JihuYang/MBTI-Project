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
    <div class="col d-none d-lg-block">
      
    </div>
    <div id = "main" class="col content ">
	     <div id="top" class="top">
		    <div class="explanation text-white mb-3">
		    	나의 개발자 유형 찾는 중...
		    </div>
		    <div class="speech-container mb-3">
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
	    	<div class="bar bar-q text-white">
	    	<!-- 	<span class="bar-text">내가 개발자라면?</span> -->
	    	</div> 
	    	<div class="p-3 window-question bg-white">
	    	<div class="question-format">
	    	<span class="void">void </span><span class="Qnum">Question1 </span><span class="char">() {</span>
	    	</div>
	    	<div class="question-content">
	    	<span class="printf">printf</span><span class="char">(</span><span class="question">"회사 첫 출근. 옆자리에 앉은 사람이 이것저것 물어본다면 나는?"</span><span class="char">);</span>
	    	</div>
	    	<div class="question-format">
	    	<span class="char">}</span>
	    	</div>
	    	</div>
	    </div>
	    <div id="bottom" class="bottom">
			<button type="button" class="btn btn-light btn-answer" onclick="location.href='./loading'">역시 세상은 따뜻해ㅠㅠ(감동)</button>
		</div>
		 <div id="bottom" class="bottom">
			<button type="button" class="btn btn-light btn-answer" onclick="location.href='./loading'">내가 알아서 할 수 있는ㄷ.. 초큼 부담스럽다..</button>
		</div>

	</div>
    <div class="col d-none d-lg-block">
   
    </div>
  </div>
  
</div>
<footer class="text-center"><span class="align-middle">@2022 MBTI에 진심인 팀 All rights reserved.</span></footer>
</body>
</html>