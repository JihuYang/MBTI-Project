<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/teamA.css">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/shareProject.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamAResult</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content-result">
				<div id="middle" class="middle text-center mt-3">
					<div class="bar text-white"></div>
					<div class="py-3 window-question bg-white">
						<div id="first-section" class="text-center">
							<div>내가 개발자라면?</div>
							<div class="mt-3">프레젠테이션은 내 담당!</div>
							<div>
								<h1>댕댕이 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/ENFJ.png" 
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. ENFJ?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>우리의 인생이 따뜻했으면 좋겠어.. </li>
										<li>진심으로 사람을 믿고 이끄는 리더. 너의 성장에 내가 함께할게!</li>
										<li>계획 세우는 걸 매우 매우 좋아한다. 하지만 그걸 지키는지는 잘 모르겠다..</li>
										<li>컴공을 전공하고 나서 이걸로 어떻게 사람들을 도울 수 있을지 고민하는 사람.</li>
										<li>비판에 당황하고 상처를 잘 받는 당신을 위해 좋은 말만 해 줄게요 ❣️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 다른 사람의 성장을 옆에서 돕고 영향을 미칠 때 보람을 느끼는 군요. 사람들과 함께 협업하는 것에 흥미를 느끼기 때문에, 의견을 많이 나눌 수 있는 직무가 어울리네요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">프런트엔드 개발자</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>사용자가 웹사이트를 이용할 때, 사이트와 직접적으로 상호작용하여 접촉 하는 부분을 프론트 엔드라고 합니다. 
									프론트엔드 개발자는 웹사이트에서 보여지는 글꼴, 생각, 메뉴 등 사용자에게 시각적으로 보여지는 부분을 구축하고 배치하는 역할을 합니다. 다른 사람의 시선에서 최선을 파악할 줄 아는 당신에게 딱 적합하지 않을까요?</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">고집불통 퉁퉁이</div>
											<h3>천재 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/INTP.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">사람보다 사물이 더 좋은</div>
											<h3>만능 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ISTP.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="bottom" class="bottom">
					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-light btn-save">저장하기</button>
						</div>
						<div class="col">
							<button type="button" class="btn btn-light btn-save"
								onclick="location.href='/start'">다시하기</button>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
							<a id="kakao-link-btn" href="javascript:sendLink()"> <img
								src="<%=request.getContextPath()%>/resources/img/teamA/kakaotalk.png"
								class="img-share mx-auto d-block" alt="..."></a>
							<p>카카오톡 공유</p>
						</div>
						<div class="col">
							<a id="copy-link-btn" href="javascript:copyLink()"> <img
								src="<%=request.getContextPath()%>/resources/img/teamA/link.png"
								class="img-share mx-auto d-block" alt="..."></a>
							<p>링크 복사</p>
						</div>
					</div>
				</div>

				<div id="comment" class="mt-5 mb-5 comment">
					<div class="comment-container">
						<!-- 						<div class="p-3 comment-bubble">
							<span class="text-white">댓글 [12]</span>
							<div class="scroll-comment">
								<div class="comment-block pt-2 pb-2">Comment</div>
							</div>

						</div>
						<div class="p-3 comment-shadow"></div> -->
						<div class="p-3 comment-bubble">
							<span class="text-white">댓글 [${count}]</span>
							<div class="scroll-comment">

								<div class="mb-3 mt-3">
									<div id="commentContent">
										<jsp:include page="../../ajaxContent/teamA/comment.jsp" flush="false" />
										<%-- <%@ include file="<%=request.getContextPath()%>/<%=request.getContextPath()%>/ajaxContent/teamA/comment.jsp"%> --%>
									</div>
								</div>
							</div>
						</div>
						<div class="p-3 comment-shadow"></div>
					</div>
					<form:form method="post" action="../teamA/addok">
						<div class="input-group mt-5 mb-5">
							<input type="text" name="comment" class="form-control p-3"
								placeholder="댓글을 입력하세요. " aria-label="댓글 입력"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary p-3" type="submit">등록
								</button>
							</div>
						</div>
						<%String path = "/"+request.getRequestURI().split("/")[6].substring(0,4);%>
						<input type="hidden" name="path" value="<%=path%>">
					</form:form>
				</div>

			</div>
			<div class="col d-none d-lg-block"></div>

		</div>
	</div>
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>