<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>소크라테스 - 회원가입  </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet" />
        <link href="resources/css/teamProject.css" type="text/css" rel="stylesheet" />

  		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      
    </head>
    <body class="registration">
    
    <%
    	String nickname = request.getParameter("profile_nickname") ;
    	String email = request.getParameter("account_email") ;
    %>

    
<main class="form-signin">
	<form name="information" onSubmit="return Confirm()">    

    <h1 class="font-weight-bold">회원가입 </h1>
    <div class="mb-2">
    	<!-- 이름 로그인 한 정보에서 가져오기   -->

	    <span class=" mb-3 fw-normal"><%=nickname%>님!</span> <br>
	    <span class=" mb-3 fw-normal">몇가지 정보를 알려주세요 </span> 
    </div>
    <div class="form-floating mt-3">
      <input name="nickname" type="text" class="form-control" id="floatingInput" placeholder="닉네임 ">
      <label for="">닉네임 </label>
    </div>
   <!--  <div class="form-floating mt-3">
      <input type="text" class="form-control" id="floatingPassword" placeholder="MBTI ">
      <label for="floatingPassword">MBTI </label>
    </div> -->
    <!-- MBTI DB에서 select option 가져오기   -->
    <div class="form-floating mt-3">
	<select name="mbti" class="form-select" aria-label="Default select example">
	  <option selected>내 MBTI </option>
	  <option value="1">ISFP</option>
	  <option value="2">INTJ</option>
	  <option value="3">INFP</option>
	</select>
	</div>

    <button class="w-100 btn btn-lg btn-dark mt-3" type="submit">가입하기 </button>
  </form>
</main>
    
    </body>
    <script src="resources/js/teamProject.js"></script>
    <script>
    //닉네임을 입력하지 않았을 경우 alert창
    function Confirm(){
    	if(information.nickname.value==""){
    		information.nickname.focus() ;
    		alert("닉네임을 입력해 주세요") ;
    	
    	}
    }
    </script>

</html>