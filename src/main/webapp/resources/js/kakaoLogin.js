src = "https://developers.kakao.com/sdk/js/kakao.js"

window.Kakao.init("19a75e0cf230379b9cf346c1c4d370f1");
function kakaoLogin() {
	window.Kakao.Auth.login({
		scope: 'profile_nickname, profile_image, account_email',
		success: function(response) {
			console.log(response)
			window.Kakao.API.request({
				url: '/v2/user/me',
				success: (res) => {
					const nickname = res.properties.nickname;
					
					const email = res.kakao_account.email;
					
					const image = rex.properties.profile_image ;

					console.log(nickname);
					console.log(email);
					console.log(image) ;
					
					$(document).ready(function(){
					$.ajax({
						type: 'POST',
						url : 'login.jsp',
						data: {
							"nickname" : $('#nicknake').val(),
							"email" : $('#email').val(),
							"image" : $('#image').val() 
						},
						success: function(){
							System.out.println("카카오 데이터 가져오기 성공");
							location.href="/register";
						},
						error:function(){  
							System.out.println("카카오 데이터 가져오기 실패");
				            location.reload();
						}
					})
				});

				}
			});

		},
		fail: function(error) {
			console.log(error);
		}
	});
}


