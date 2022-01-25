
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false"%>
<c:forEach items="${comments}" var="comment" varStatus="status">
	<div class="comment-block pt-2 pb-2">
		<div class="d-flex flex-start">
			<img
				class="rounded-circle shadow-1-strong me-3 border border-secondary"
				src="../resources/img/teamA/${comment.type}.png" alt="avatar"
				width="40" height="40" />
			<div class="w-100">
				<div class="d-flex justify-content-between align-items-center">
					<p class="fw-bold mb-0 main-color fs-6">${comment.type}</p>
					<p class="mb-0 text-muted"><a id=delbtn href="javascript:delete_ok('${comment.id}')">x</a></p>
				</div>
				<p class="text-dark">${comment.comment}</p>
				<div>
					<p class="text-muted fs-6">
						<fmt:formatDate value="${comment.regDate}" var="formattedDate"
							type="date" pattern="yyyy-MM-dd KK:mm:ss" />${formattedDate}
					</p>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok/'+id;
	}
</script>
