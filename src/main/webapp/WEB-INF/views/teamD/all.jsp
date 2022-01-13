<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>teamDAll</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/teamD.css">
	<style>
		h1 {
			text-align : center ;
			font-size : 4em ;
			font-weight : bolder ;
			margin : 25px 0px;
		}
		#wrapper {
			height : 70vh ;
			margin-bottom : 100px ;
		}
		#all-contents {
		    height: 100vh;
		    position: relative;
		}
		
		#contents {
			hegiht : 100vh ;
		    padding-bottom: 40px; /* footer의 높이 */
		}
		
		footer {
		    width: 100%;
		    height: 40px; /* footer의 높이 */
		    position: fixed;  
		    bottom: 0;
		    left: 0;
		    background-color : white ;
		    border-top : solid black ;
		    text-align : center ;
		    padding-top : 15px ; 
		    padding-bottom : 10px ;
		} 
		footer h2 {
			display : inline ;
			margin : 20px;
		}
		footer h2:hover {
			cursor : pointer ;
		}
		img {
			width : 200px ;
			height : 200px ;
			position : relative ;
			top : 400px ;
			left : -70px ;
		}
	</style>
</head> 
<body style="background-attachment : fixed ;">
<div id="all-contents">
	<div id="contents"> 
		<h1>짱구</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/짱구.png">
		</div>
		
		<h1>짱아</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/짱아.png">
		</div>
		
		<h1>신형만</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/신형만.png" style="width : 250px; height :250px;left : 320px;top:300px;">
		</div>
		
		<h1>봉미선</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/봉미선.png" style="width : 250px; height :250px; left : 320px;top:300px;">
		</div>
		
		<h1>흰둥이</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/흰둥이 투명 배경.png" style="width:230px; height:230px;top:380px;">
		</div>
		
		<h1>철수</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/철수.png" style="width:150px; height:150px;left:-30px;">
		</div>
		
		<h1>유리</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/유리.png">
		</div>
		
		<h1>훈이</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/훈이.png" style="top:350px;">
		</div>
		
		<h1>맹구</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/맹구 투명 배경.png" style="top:370px; height:230px; width:230px;left:-90px;top:350px;">
		</div>
		
		<h1>나미리 선생님</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/나미리 선생님.png" style="width:250px; height:250px;top:350px;">
		</div>
		
		<h1>채성아 선생님</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/채성아 선생님.png" style="width:250px; height:250px;top:300px;left:-120px;">
		</div>
		
		<h1>원장 선생님</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/원장님.png" style="width:250px; height:250px;top:300px; left:-100px;">
		</div>
		
		<h1>옆집 아줌마</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/옆집 아주머니.png" style="width:250px; height:250px;top:300px;left:-100px;">
		</div>
		
		<h1>수지</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/수지.png" style="top:350px; left : -50px">
		</div>
		 
		<h1>차은주 선생님</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/차은주 선생님.png" style="width:230px;height:260px;left:330px;top:290px;">
		</div> 
		 
		<h1>신혼부부</h1>
		<div id="wrapper">
		<img src="../resources/img/teamD/신혼부부.png" style="width:230px;height:230px; top:330px;">
		</div>
	</div>
	
	<footer id="footer">
	<h2 onclick ="location.href='start'" style="text-align : center ;">첫 화면으로 돌아가기</h2>
	<h2 onclick ="location.href='question'" style="text-align : center ;">검사하러 가기</h2>
	</footer>
</div>
</body>
</html>