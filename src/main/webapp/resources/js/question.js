var questionNum=1; // 문제 순서를 나타내는 변수 
var	mbti1;  // 첫번째 버튼에 해당하는 mbti 값 
var mbti2;  // 두번째 버튼에 해당하는 mbti 값  
var firstCheck=1; // 첫번째 문제인지 아닌지 판별해주는 변수 
var typeAry = new Array(); // 사용자의 선택을 담는 배열 
var resultAry = new Array(); // 최종 mbti 를 담는 배열 
let url = "result/";

function saveType(answer, mbti) {
	let resultUrl = "";  
	// 첫번째 문제에 대한 mbti 값 체크용  	
	if(firstCheck == 1) {
	// 만약 첫번째 문제면 배열에 인자로 받은 mbti 값 저장! 
		typeAry[questionNum-1] = mbti;
	}
	else {
		/* 버튼 클릭시 해당 mbti 값이 typeAry[]에 저장됨 */
		// 1번째 버튼 선택시 첫번째 버튼에 해당하는 mbti 값이 배열에 들어감 
		if(answer == 1) {
			typeAry[questionNum-1] = mbti1;
			console.log(typeAry[questionNum-1]);
		}
		// 두번째 버튼 선택시 두번째 버튼에 해당하는 mbti 값이 배열에 들어감 
		else {
			typeAry[questionNum-1] = mbti2;
			console.log(typeAry[questionNum-1]);
		}
		// 만약 12번째까지 문제가 다 출력되었을 때, 
		if(questionNum > 11) {
			// typeAry 에서 E, N, F, J 의 갯수를 세준다  
			let countE = typeAry.filter(element => 'E' === element).length;
			let countN = typeAry.filter(element => 'N' === element).length;
			let countF = typeAry.filter(element => 'F' === element).length;
			let countJ = typeAry.filter(element => 'J' === element).length;
			// 2보다 크거나 같으면 결과 배열에 해당 mbti 값 넣기 
			if(countE >= 2) { resultAry[0] = 'E'; } else { resultAry[0] = 'I';}
			if(countN >= 2) { resultAry[1] = 'N'; } else { resultAry[1] = 'S';}
			if(countF >= 2) { resultAry[2] = 'F'; } else { resultAry[2] = 'T';}
			if(countJ >= 2) { resultAry[3] = 'J'; } else { resultAry[3] = 'P';}
			// 최종 mbti를 문자열로 표현 
			for (const item of resultAry) {
				resultUrl += item;
			}
			/* conveyType(resultUrl); */
			
			/*window.location.href = "loading";*/ 
			
			console.log(resultUrl);
			conveyType(resultUrl);	
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
			//  해당 문제의 번호를 questionNum에 담는다 
			questionNum = data[0].questionNum;
			
			/* 이후에 클릭한 버튼에 해당하는 값을 넣기 위해 선택지에 따른 mbti 저장 */
			mbti1 = data[0].result;
			mbti2 = data[1].result;
			
			/* TeamA ajax로 받은 문제와 답들을 출력 */
			$(".question").empty();
			$(".question").append(data[0].question);
			
			console.log(data[0].question);
			console.log(data[0].answer);
			console.log(data[1].answer);
			console.log(data[0].questionNum);

						
			$(".btn1").empty();
			$(".btn2").empty();
			$(".btn1").append(data[0].answer);
			$(".btn2").append(data[1].answer);	
			$("#qNum").empty();
			$("#qNum").append(data[0].questionNum);
			$("#Qnum").empty();
			$("#Qnum").append(data[0].questionNum);
			
	
		},
		error : function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
					+ "error:" + error);
		}
	});
}
/* 컨트롤러로 url 값 전달 
컨트롤러에서 컨트롤러 값 전달 ..? */  

function conveyType(resultURL) {
	url += resultURL;
	window.location.href = url;
	 
	
	/*
	$.ajax({
			url: "result",
			type: "GET",
			async: false,
			data : {
				resultURL : resultURL
			},
			success : function(data) {
			
				console.log("read conveyType");
				console.log(data);
				
				url += resultURL;
				
				console.log(url);
*/				/*window.location.href = url;*/
/*				
			},
			
			error : function(request, status, error) {
			console.log("code:" + request.status + "\n"
				+ "message:" + request.responseText + "\n"
					+ "error:" + error);
		}
			});
*/
}

