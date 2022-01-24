
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

					console.log(nickname);
					console.log(email);

					location.href = "register?profile_nickname=" + nickname + "&account_email=" + email;

				}
			});

		},
		fail: function(error) {
			console.log(error);
		}
	});
}


