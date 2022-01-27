<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id"content = "232515646152-u2s2cqpcj4cfehkdq65l4ee9tuld0pts.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/api:client.js"></script>
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
		    <div class="login-btn w-100 p-3 mb-3 rounded border-secondary"><img style="width: 20px;" src="resources/img/teamProject/google.png"/><a id="google_login" class="w-100" href="javascript:startApp();">구글로 가입하기</a></div>
		</div>
	  </form>
	</main>

	
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script>
	//kakao login
	Kakao.init("0f073d0c9ad305070b99347eac9612a9");
	function kakaoLogin() {
		window.Kakao.Auth.login({
			scope: 'profile_nickname, profile_image, account_email', 
			success : function(response) {
				console.log(response)
				window.Kakao.API.request({
					url: '/v2/user/me',
					success: (res) => {
						const kakao_account = res.kakao_account;
						const name = res.properties.nickname;
						const email = res.kakao_account.email;
						
						
						 $.ajax({
					                  type: 'POST',
					                  url : 'snsLogin',
					                  async: false,
					                  data: {
					                     name : name,
					                     email : email,
					                     
					                  },
					                  success: function(data){
					                     console.log("카카오 로그인 성공");
					                     location.reload();
					                  },
					                  error:function(){  
					                     console.log("카카오 데이터 가져오기 실패");
					                        //location.reload();
					                  }
					               })
					}
				});
				
			},
			fail : function(error) {
				console.log(error);
			}
		});
	};
	
	// google signin API
	var googleUser = {};
	var startApp = function() {
	  gapi.load('auth2', function(){
		console.log("init() Start");
	    auth2 = gapi.auth2.init({
	      client_id: '232515646152-u2s2cqpcj4cfehkdq65l4ee9tuld0pts.apps.googleusercontent.com',
	      cookiepolicy: 'single_host_origin',
	      // Request scopes in addition to 'profile' and 'email'
	      //scope: 'additional_scope'
	    });
	    attachSignin(document.getElementById('google_login'));
	  });
	};
	
	function attachSignin(element) {
	  console.log(element.id);
	  auth2.attachClickHandler(element, {},
	      function(googleUser) {
		  	var profile = googleUser.getBasicProfile();
	    	var id_token = googleUser.getAuthResponse().id_token;
	  	  	console.log('UserID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
	  	  	console.log('token: ' + id_token);
	  	  	console.log('Name: ' + profile.getName());
	  	  	console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
			$(function() {
				$.ajax({
				    url: 'snsLogin',
				    type: 'post',
				    data: {
				    	"token": id_token,
				        "name": profile.getName(),
						"email": profile.getEmail()
					    },
				    success: function (data) {
				    	console.log("구글 로그인 가져오기 성공");
				    	 location.reload();
				        },
		                  error:function(){  
		                     console.log("구글 로그인 실패");
		                        //location.reload();
		                  }
				});
			})
	}, function(error) {
    	alert(JSON.stringify(error, undefined, 2));
		}
	  );
	}
	</script>
    </body>
</html>