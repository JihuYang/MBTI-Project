
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page session="false"%>
<div id="comment" class="mt-5 mb-3 p-3 comment">
	<span class="text-black">댓글 [12]</span>
	<form:form method="post" action="../teamB/addok">
		<div class="input-group mt-1 mb-1">
			<input type="text" name="comment" class="form-control p-3"
				placeholder="댓글을 입력하세요. " aria-label="댓글 입력"
				aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary p-3" type="submit">등록
				</button>
			</div>
		</div>
	</form:form>
	<div class="comment-container">
		<div class="p-3 comment-bubble">
			<div class="scroll-comment ">
				<div class="mb-3 mt-3">
					<div id="commentContent">
						<c:forEach items="${comments}" var="comment" varStatus="status">
							<div class="comment-block pt-2 pb-2">
								<div class="d-flex flex-start">
									<img
										class="rounded-circle shadow-1-strong me-3 border border-secondary"
										src="../resources/img/teamB/${comment.type}.png" alt="avatar"
										width="40" height="40" />
									<div class="w-100">
										<div class="d-flex justify-content-between align-items-center">
											<p class="fw-bold mb-0 main-color fs-6">${comment.type}</p>
											<c:if test="${userId == comment.userId}">
												<div class="d-flex">
													<a class="mb-0 text-muted p-1" id="editbtn"
														href="javascript:doDisplay('${comment.id}')"><i
														class="bi bi-pen"></i></a> <a class="mb-0 text-muted p-1"
														id="delbtn" href="javascript:delete_ok('${comment.id}')"><i
														class="bi bi-x-lg"></i></a>

												</div>
											</c:if>
										</div>

										<form:form method="post" action="../teamB/editok">
											<p id="${comment.id}2" class="text-dark"
												style="display: block;">${comment.comment}</p>
											<div class="p-2" id="${comment.id}" style="display: none;">
												<textarea rows="3" name="comment"
													style="border: none; border-radius: 10px; width: 90%">${comment.comment}</textarea>
												<input type="text" name="id" value="${comment.id}"
													style="display: none;">
												<button class="btn" type="submit">
													<i class="bi bi-arrow-up-circle-fill"
														style="font-size: 1.5rem"></i>
												</button>
											</div>
										</form:form>
										<div>
											<p class="text-muted fs-6">
												<fmt:formatDate value="${comment.regDate}"
													var="formattedDate" type="date"
													pattern="yyyy-MM-dd KK:mm:ss" />${formattedDate}
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="p-3 comment-shadow"></div>
	</div>
</div>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete_ok/' + id;
	}
	function doDisplay(id) {
		$("#" + id + "2").toggle();
		var con = document.getElementById(id);
		if (con.style.display == 'none') {
			con.style.display = 'flex';
		} else {
			con.style.display = 'none';
		}
	}
</script>
