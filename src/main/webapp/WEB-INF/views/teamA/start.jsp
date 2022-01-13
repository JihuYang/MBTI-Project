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
	<title>teamAStart</title>
</head>
<body>
<div class="container-fluid">
<div class="row text-center">
    <div class="col">
      
    </div>
    <div id = "main" class="col content ">
	    <div id="top" class="top">
		    <div class="explanation text-white">
		    	내 안의 개발자를 찾아서...
		    </div>
		    <div class="speech-container">
		    <div class="p-3 speech-bubble">
		    	<div class="number">
		    	36, 750명 참여
		    </div>
		    </div>
		    <div class="p-3 speech-shadow">
		    
		    </div>
		    </div>
		</div>
	    <div id="middle" class="middle text-center">
	    	<div class="bar text-white">
	    		<span class="bar-text">내가 개발자라면?</span>
	    	</div> 
	    	<div class="window bg-white">
	    		<span>개발자<br>유형 테스트</span>
	    		<img id = "front_img" src="../resources/img/teamA/Front.png" class="mx-auto d-block" alt="...">	 
	    	</div>
	    </div>
	    <div id="bottom" class="bottom front">
			<button type="button" class="btn btn-light btn-run">Run
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-caret-right-fill" viewBox="0 0 16 16">
			<path d="m12.14 8.753-5.482 4.796c-.646.566-1.658.106-1.658-.753V3.204a1 1 0 0 1 1.659-.753l5.48 4.796a1 1 0 0 1 0 1.506z" class="run-icon"/>
			</svg></button>
		</div>

	</div>
    <div class="col">
   
    </div>
  </div>
  
</div>
<footer class="text-center"><span class="align-middle">@2022 MBTI에 진심인 팀 All rights reserved.</span></footer>
</body>
</html>