<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamErelation</title>
	
	<link rel="stylesheet" type="text/css" href="../resources/css/teamE.css">
	
	
	<style>
	
	</style>

</head>
<body>

<!-- 관계 유형 선택화면 -->
<div class="who">
   <div class="top">
   	<img src="../resources/img/teamE/rope.jpeg" class="rope">
   </div>
   
   <div class="who_bigbox">
   	<div class="who_first_box">
   		<span class="who_box box1" onclick="location.href='./question'">가족</span>
  	 	<span class="who_box box2" onclick="location.href='./question'">연인</span>
   	</div>
  	 <div class="who_second_box">
   		<span class="who_box box3" onclick="location.href='./question'">친구</span>
   		<span class="who_box box4" onclick="location.href='./question'">이웃</span>
   	</div>
   </div>
   
   
   
</div>
</body>
</html>