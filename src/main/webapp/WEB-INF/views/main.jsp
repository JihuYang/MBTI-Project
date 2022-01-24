<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/teamProject.css">
<title>demo</title>
</head>
<body>
	<div class="wrapper">
		<h1>Main Page</h1>
		
		<form method="post" action="/logout">
			<button type="submit" onclick="signOut()">SignOut</button>
		</form>

		<script>
			function init() {
				gapi.load(
								'auth2',
								function() {
									var gauth = gapi.auth2
											.init({
												client_id : '524725118410-td3lqjpomd1pi2t8hl2ob66b0c4aq8hp.apps.googleusercontent.com'
											});

									gauth.then(function() {
										console.log('init success');
									}, function() {
										console.error('init fail');
									})
								});
			}

			function signOut() {
				var gauth = gapi.auth2.getAuthInstance();
				console.log(gauth);

				gauth.signOut().then(function() {
					alert('로그아웃 되었습니다');
				});
				
				//로그아웃을 해도 자꾸 자동 로그인이 될 때
				gauth.disconnect();
			}
		</script>

	</div>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>