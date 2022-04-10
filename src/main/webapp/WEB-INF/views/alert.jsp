<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm</title>
</head>
<body>
<script type="text/javascript">
/* 	var msg = '${msg}';
	var url = '${url}'; */
	
	if (!confirm("로그인이 필요한 항목입니다. 로그인 하시겠습니까? ")) {
        // 취소(아니오) 버튼 클릭 시 이벤트
        location.href = "/";
    } else {
        // 확인(예) 버튼 클릭 시 이벤트
        location.href="/login";
    }
		
</script>

</body>
</html> 