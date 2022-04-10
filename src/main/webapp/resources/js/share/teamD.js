var link = document.location.href;
var again = location.origin+'/teamD/start';

//카카오톡 공유하기 
	Kakao.init("1841f627e245ac59ac935b451f4720e1"); //어플의 Javascript Key 값 
  function sendLink() {
	Kakao.Link.createDefaultButton({
  container: '#kakao-link-btn',
  objectType: 'feed',
  content: {
    title: '짱구 MBTI',
    description: '내가 짱구 캐릭터라면?',
    imageUrl: 'https://user-images.githubusercontent.com/82192923/158604587-a72bed42-9fc0-41a6-9446-77b182624675.png',
    link: {
          mobileWebUrl: again,
          webUrl: again,
        },
  },
  buttons: [
    {
          title: '내 결과 보기',
          link: {
            mobileWebUrl: link,
            webUrl: link,
          },
        },
        {
          title: '다시하기',
          link: {
            mobileWebUrl: again,
            webUrl: again,
          },
        },
  ]
});
  
}
	


//링크 복사 	
var copyLink = function() {
	// 클립보드로 링크 복사
	navigator.clipboard.writeText(link)
		.then(function() {
			alert('URL 복사가 완료되었습니다.' + link)
		})
};