<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>teamDLoading</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
	<script>
		function imageChange(){
			
		}
	</script>
	
	<style>
		#wrapper_version2{
			width : 470px ;  
			height: 95vh; 
			margin : 20px auto ;
			background-color : rgb(255,255,255, 0.9) ;
			border : 4px solid ;
			border-radius : 100px ;
		}
		h1{
			padding: 3px;
			text-align: center;
			font-size: 55px;
			margin : 80px 0px 50px 0px;
		}
		#image1{
			display: block;
  			margin-left: auto;
  			margin-right: auto;
		}
	</style>
</head>
<body>
	<div id="wrapper_version2">
		<h1>닮은 캐릭터 찾는 중</h1>
		<div id="images" onclick="location.href='result'"><img id="image1" src="../resources/img/teamD/신혼부부.png" style="width:340px; height:420;"></div>
	</div>
</body>
</html>