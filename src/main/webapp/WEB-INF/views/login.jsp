<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>소크라테스 - 로그인  </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet" />
        <link href="resources/css/teamProject.css" type="text/css" rel="stylesheet" />
      
    </head>
    <body class="login">
    <main class="form-login">
  <form>
    <h1 class="font-weight-bold">로그인</h1>
    <div class="mb-2">
	    <span class=" mb-3 fw-normal">소셜 로그인으로 시작하기 </span> 
    </div>
    <div class="mt-3 login-form">
    <div class="login-btn w-100 p-3 mb-3 rounded border-secondary"><img style="width: 20px;" src="resources/img/teamProject/kakao.png"/><a class="w-100" href="javascript:kakaoLogin();"  >카카오로 가입하기</a></div>
    <div class="login-btn w-100 p-3 mb-3 rounded border-secondary"><img style="width: 20px;" src="resources/img/teamProject/google.png"/><a class="w-100" href="#" onclick="" >구글로 가입하기</a></div>
</div>
  </form>
</main>

	<!-- 카카오 로그인 -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		window.Kakao.init("19a75e0cf230379b9cf346c1c4d370f1");
		function kakaoLogin() {
			window.Kakao.Auth.login({
				scope: 'profile_nickname, profile_image, account_email', 
				success : function(response) {
					console.log(response)
					window.Kakao.API.request({
						url: '/v2/user/me',
						success: (res) => {
							const nickname = res.properties.nickname ;
							const email = res.kakao_account.email ;
							
							console.log(nickname) ;
							console.log(email) ;
							
							location.href="register?profile_nickname="+nickname+"&account_email="+email ;
						}
					});
					
				},
				fail : function(error) {
					console.log(error);
				}
			});
		}
	</script>
	
    </body>
</html>