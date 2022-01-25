var questionNum=1;
var	mbti1;
var mbti2;
var firstCheck=1;
var typeAry = new Array();
var resultAry = new Array();

function saveType(answer, mbti) {
	let resultUrl = "";
	// 첫번째 문제에 대한 mbti 값 체크용  	
	if(firstCheck == 1) {
		typeAry[questionNum-1] = mbti;
		console.log("선택한 Mbti값 : "  + typeAry[questionNum-1]);
	}
	else {
	/* 버튼 클릭시 해당 mbti 값이 typeAry[]에 저장됨 */
	if(answer == 1) {
		typeAry[questionNum-1] = mbti1;
		console.log("선택한 Mbti값 : " + typeAry[questionNum-1]);
	}
	else {
		typeAry[questionNum-1] = mbti2;
		console.log("선택한 Mbti값 : "  + typeAry[questionNum-1]);
	}
	
	
	if(questionNum > 11) {
		let countE = typeAry.filter(element => 'E' === element).length;
		let countN = typeAry.filter(element => 'N' === element).length;
		let countF = typeAry.filter(element => 'F' === element).length;
		let countJ = typeAry.filter(element => 'J' === element).length;
		if(countE >= 2) { resultAry[0] = 'E'; } else { resultAry[0] = 'I';}
		if(countN >= 2) { resultAry[1] = 'N'; } else { resultAry[1] = 'S';}
		if(countF >= 2) { resultAry[2] = 'F'; } else { resultAry[2] = 'T';}
		if(countJ >= 2) { resultAry[3] = 'J'; } else { resultAry[3] = 'P';}
		for (const item of resultAry) {
			resultUrl += item;
		}
		console.log(resultUrl);
		window.location.href = "loading";
	}
	}
	firstCheck = 0;
	
	readQuestion();
}

function readQuestion() {

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
			/* 이후에 클릭한 버튼에 해당하는 값을 넣기 위해 선택지에 따른 mbti 저장 */
			mbti1 = data[0].result;
			mbti2 = data[1].result;
			console.log(questionNum);
			console.log(mbti1);
			console.log(mbti2);
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