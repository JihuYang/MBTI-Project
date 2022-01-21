//카카오톡 공유하기 
Kakao.init("1841f627e245ac59ac935b451f4720e1"); //어플의 Javascript Key 값 
	function sendLinkCustom() {
		debugger;
		Kakao.Link.sendCustom({
			templateId : 69198 //숫자값 
		});
	}
	try {
		function sendLinkDefault() {
			Kakao.Link
					.sendDefault({
						objectType : 'feed',
						content : {
							title : 'Test Homepage Title',
							description : '#Test #Homepage #Kakao Link Description',
							imageUrl : 'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
							link : {
								mobileWebUrl : 'https://developers.kakao.com',
								webUrl : 'https://developers.kakao.com',
							},
						},
						social : {
							likeCount : 100,
							commentCount : 200,
							sharedCount : 300,
						},
						buttons : [ {
							title : '웹으로 보기',
							link : {
								mobileWebUrl : 'https://developers.kakao.com',
								webUrl : 'https://developers.kakao.com',
							},
						}, {
							title : '앱으로 보기',
							link : {
								mobileWebUrl : 'https://developers.kakao.com',
								webUrl : 'https://developers.kakao.com',
							},
						}, ],
					})
		}
		;
		window.kakaoDemoCallback && window.kakaoDemoCallback()
	} catch (e) {
		window.kakaoDemoException && window.kakaoDemoException(e)
	}
	
	
//링크 복사 	
var copyLink = function(str) {
    // 클립보드로 링크 복사
navigator.clipboard.writeText(str)
	.then(function () {
		alert('URL 복사가 완료되었습니다.')
	})
};	