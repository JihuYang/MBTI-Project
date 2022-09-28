var link = document.location.href;

//카카오톡 공유하기 
	//Kakao.init("1841f627e245ac59ac935b451f4720e1"); //어플의 Javascript Key 값 
	Kakao.init("89c38b72bcd34fd6808a77a6e1c0bcee");
  function sendLink() {
	var again = 'http://localhost:8080/webcamp/teamA/start';
	Kakao.Link.createDefaultButton({
  container: '#kakao-link-btn',
  objectType: 'feed',
  content: {
    title: '개발자 유형 찾기',
    description: '나의 개발자 유형은 무엇일까?',
    imageUrl: 'https://user-images.githubusercontent.com/82192923/158604555-9c0620aa-a3c5-4e66-842a-e6856cd715d8.png',
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