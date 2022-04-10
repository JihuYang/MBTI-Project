    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
	
<!-- 댓글 수정을 위한 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<%@ page session="false"%>
<div class="bg-white p-4 col-box">

					<div class="comment">
						<div class="text-start comment-number">댓글 [${count}]</div>

						<form:form method="post" action="/webcamp/teamC/addok">
							<div class="d-flex p-2 comment-add">
								<input type="text" name="comment" class="comment-add-text"
									style="border: none; border-radius: 10px; width: 90%"
									placeholder=" 너의 이야기를 들려줘">
								<button class="btn" type="submit">
									<i class="bi bi-arrow-up-circle-fill"
										style="color: black; font-size: 1.5rem"></i>
								</button>
							</div>
							<%String path = "/"+request.getRequestURI().split("/")[6].substring(0,4);%>
						<input type="hidden" name="path" value="<%=path%>">
						</form:form>
						<c:forEach items="${comments}" var="comment" varStatus="status">
							<div class="comment-set">
								<div class="d-flex flex-start mt-2">

									<div class="comment-list">
										<img class="rounded-circle border border-secondary"
											src="../../resources/img/teamC/${comment.type}.png" alt="avatar"
											width="60" height="60" />
									</div>

									<div class="comment-list-name p-3 text-start" style="width: 200px;">
										<p class="fw-bold fs-3 " style="line-height: 0%">${comment.nickname}</p>
										<p class="text-muted fs-8">
											<fmt:formatDate value="${comment.regDate}"
												var="formattedDate" type="date" pattern="yyyy-MM-dd" />${formattedDate}</p>

									</div>
									<div id="show-comment" class="comment-list-content">
										<p id="${comment.id}2" style="display: block;">${comment.comment}</p>

										<form:form method="post" action="/webcamp/teamC/editok">
											<div class="p-2 comment-add" id="${comment.id}"
												style="display: none;">
												<textarea rows="3" name="comment"
													style="border: none; border-radius: 10px; width: 90%">${comment.comment}</textarea>
												<input type="text" name="id" value="${comment.id}"
													style="display: none;">
												<button class="btn" type="submit">
													<i class="bi bi-arrow-up-circle-fill"
														style="color: black; font-size: 1.5rem"></i>
												</button>
											</div>
											<%String path = "/"+request.getRequestURI().split("/")[6].substring(0,4);%>
											<input type="hidden" name="path" value="<%=path%>">
										</form:form>

									</div>

									<c:if test="${userId == comment.userId}">
										<div class="dropdown comment-menu">
											<button class="btn" id="menu1" type="button"
												data-toggle="dropdown">
												<i class="bi bi-three-dots-vertical"></i><span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="javascript:delete_ok('${comment.id}')">삭제</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="javascript:doDisplay(${comment.id});">수정</a></li>
											</ul>
										</div>
									</c:if>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>
				
<script type="text/javascript">
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
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		<%
		String mbti = "/"+request.getRequestURI().split("/")[6].substring(0,4);		
		%>
		if (a)
			location.href = '/webcamp/teamC/delete_ok/' + id +"<%=mbti%>";
	}
</script>
