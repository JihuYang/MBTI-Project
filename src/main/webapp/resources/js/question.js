
function readQuestion(testId) {
	var testId;
	
	$.ajax({
		url : "teamA/question",
		type : "POST",
		async : false,
		data : {
			testId : testId,
		},
		success : function(data) {
			console.log("read success");
			console.log(data);
		},
		error : function(request, status, error) {
			console.log("code:" + request.status + "\n"
					+ "message:" + request.responseText + "\n"
					+ "error:" + error);
		}
	});
}