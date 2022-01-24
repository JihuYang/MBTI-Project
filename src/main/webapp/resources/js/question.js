
var questionNum = 1;
 
function readQuestion() {
	/*12번째 문제까지 모두 답하고 나면 loading 화면으로 이동 */
	if(questionNum > 11) {
		window.location.href = "loading";
	}
	
	$.ajax({
		url : "ajax",
		type : "POST",
		async: false,
		data : {
			questionNum : questionNum
		},
		success : function(data) {
			
			console.log("read success");
			questionNum = data[0].questionNum;	
			/* ajax로 받은 문제와 답들을 출력 */
			$(".question").empty();
			$(".question").append(data[0].question);
			
			$(".btn").empty();
			$(".btn1").append(data[0].answer);
			$(".btn2").append(data[1].answer);		
		},
		error : function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
					+ "error:" + error);
		}
	});
}