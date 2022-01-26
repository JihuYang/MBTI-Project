var link = document.location.href;
var links = link.split('/');
var link2 = links[0]+links[1]+links[2];

//카카오톡 공유하기 
	Kakao.init("1841f627e245ac59ac935b451f4720e1"); //어플의 Javascript Key 값 
  function sendLink() {
    Kakao.Link.sendDefault({
      objectType: 'feed',
      content: {
        title: '소크라테스트',
        description: '#mbti #개발자 유형 #배우자 #공부 #짱구 #이상형',
        imageUrl:'https://user-images.githubusercontent.com/82192923/151129688-ab781188-69ee-407f-95d4-8eb19c6c0672.png',
        link: {
          mobileWebUrl: 'http://localhost:8080/webcamp/',
          webUrl: 'http://localhost:8080/webcamp/',
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
            mobileWebUrl: link,
            webUrl: link,
          },
        },
      ],
    })
  }
	


//링크 복사 	
var copyLink = function() {
	// 클립보드로 링크 복사
	navigator.clipboard.writeText(link)
		.then(function() {
			alert('URL 복사가 완료되었습니다.' + link)
		})
};