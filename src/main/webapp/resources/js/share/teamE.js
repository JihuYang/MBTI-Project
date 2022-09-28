var link = document.location.href;
var again = location.origin+'/socratest/teamE/start';

//카카오톡 공유하기 
	Kakao.init("89c38b72bcd34fd6808a77a6e1c0bcee"); //어플의 Javascript Key 값 
  function sendLink() {
	Kakao.Link.createDefaultButton({
  container: '#kakao-link-btn',
  objectType: 'feed',
  content: {
    title: '인간관계 유형별 MBTI',
    description: '나는 어떤 사람일까?',
    imageUrl: 'https://user-images.githubusercontent.com/82192923/158604593-fdb3c4a7-d83b-443d-ad68-b9057c4c2438.png',
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
function copyLink() {
    // navigator clipboard api needs a secure context (https)
    if (navigator.clipboard && window.isSecureContext) {
        // navigator clipboard api method'
       navigator.clipboard.writeText(link)
		.then(function() {
			alert('URL 복사가 완료되었습니다.' + link)
		})
    } else {
        // text area method
        let textArea = document.createElement("textarea");
        textArea.value = link;
        // make the textarea out of viewport
        textArea.style.position = "fixed";
        textArea.style.left = "-999999px";
        textArea.style.top = "-999999px";
        document.body.appendChild(textArea);
        textArea.focus();
        textArea.select();
        return new Promise((res, rej) => {
            // here the magic happens
            document.execCommand('copy') ? res() : rej();
            textArea.remove();
            alert('URL 복사가 완료되었습니다.' + link);
        });
    }
}