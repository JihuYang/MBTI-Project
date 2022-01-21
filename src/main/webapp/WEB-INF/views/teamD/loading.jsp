<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<!--  responsive web -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
		<div id="images"><img  class="img-fluid" id="image1" src="../resources/img/teamD/신혼부부.png"></div>
	</div>
	<script>
		var obTimeOut;
		
		var ObjectArray = new Array ();
		
		ObjectArray[1] = "../resources/img/teamD/나미리 선생님.png";
		ObjectArray[2] = "../resources/img/teamD/짱구.png";
		ObjectArray[3] = "../resources/img/teamD/짱아.png";
		ObjectArray[4] = "../resources/img/teamD/흰둥이.png";
		ObjectArray[5] = "../resources/img/teamD/맹구 투명 배경.png";
		ObjectArray[6] = "../resources/img/teamD/봉미선.png";
		ObjectArray[7] = "../resources/img/teamD/수지.png";
		ObjectArray[8] = "../resources/img/teamD/신형만.png";
		ObjectArray[9] = "../resources/img/teamD/옆집 아주머니.png";
		ObjectArray[10] = "../resources/img/teamD/훈이.png";
		ObjectArray[11] = "../resources/img/teamD/원장님.png";
		ObjectArray[12] = "../resources/img/teamD/유리.png";
		ObjectArray[13] = "../resources/img/teamD/이슬이 누나.png";
		ObjectArray[14] = "../resources/img/teamD/차은주 선생님.png";
		ObjectArray[15] = "../resources/img/teamD/채성아 선생님.png";
		
		var nObjectCnt = 0;	
		
		function ShowDefaultRotate() // 스스로 자신을 호출하는 재귀함수 (Recursive Function)
		{
			nObjectCnt++;
		
			if( nObjectCnt < ObjectArray.length )  // 배열의 갯수 이내일때만 실행
			{
				document.getElementById("image1").src = ObjectArray[nObjectCnt];		 
				obTimeOut = setTimeout("ShowDefaultRotate()",200);  // 1초후에 자기자신을 호출 
			}
		
			else
			{
				location.href='result' ;
				clearTimeout(obTimeOut); // 배열의 갯수만큼 반복하여 변환시킨 후에는 Timeout 을 중지시킨다 
			}		
		}
		
		function startAnimation()
		{
		      obTimeOut = window.setTimeout(ShowDefaultRotate,100); // 윈도우 로드 후 0.1초 후에 반복함수를 호출합니다.
		}
		
		 window.onload = startAnimation; // 윈도우 로드시 이미지 변환함수 실행
		
		</script>
</body>
</html>