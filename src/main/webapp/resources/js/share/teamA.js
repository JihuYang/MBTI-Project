var link = document.location.href;
var again = location.origin+'/socratest/teamA/start';
console.log(again);

//카카오톡 공유하기 
	Kakao.init("89c38b72bcd34fd6808a77a6e1c0bcee"); //어플의 Javascript Key 값 
  function sendLink() {
	Kakao.Link.createDefaultButton({
  container: '#kakao-link-btn',
  objectType: 'feed',
  content: {
    title: '개발자 유형 찾기',
    description: '나의 개발자 유형은 무엇일까?',
    imageUrl: 'https://user-images.githubusercontent.com/82192923/158604555-9c0620aa-a3c5-4e66-842a-e6856cd715d8.png',
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
/*var copyLink = function() {
	// 클립보드로 링크 복사
	navigator.clipboard.writeText(link)
		.then(function() {
			alert('URL 복사가 완료되었습니다.' + link)
		})
};
*/

	function doDisplay(id) {
		$("#" + id + "2").toggle();
		var con = document.getElementById(id);
		if (con.style.display == 'none') {
			con.style.display = 'flex';
		} else {
			con.style.display = 'none';
		}
	}

	function moveTo() {
		location.href = "../start";
	}
	function delete_ok(id, path) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = '/teamA/delete_ok/' + id +path;
	}
	
	
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