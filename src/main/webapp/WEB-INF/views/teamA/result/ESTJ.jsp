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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/teamA.css">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/share/teamA.js"></script>

<!-- loading -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/loading.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamAResult</title>
</head>
<body>
	<div id="loader"></div>
	<div id="a_loader" style="display: none;">
		<div class="container-fluid">
			<div class="row text-center">
				<div class="col d-none d-lg-block"></div>
				<div id="main" class="col content-result">
					<div id="middle" class="middle text-center mt-3">
						<div class="bar text-white"></div>
						<div class="py-3 window-question bg-white">
							<div id="first-section" class="text-center">
								<div>내가 개발자라면?</div>
								<div class="mt-3">한 우물만 파는</div>
								<div>
									<h1>꼰대 개발자</h1>
									<img
										src="<%=request.getContextPath()%>/resources/img/teamA/ESTJ.png"
										class="img-type mx-auto d-block" alt="...">
									<div class="mt-3 text-muted">당신은 혹시.. ESTJ?</div>
								</div>
							</div>
							<div id="second-section" class="mt-5 border-top-black">
								<div class="text-left">
									<div class="mt-3 ms-3">성격은?</div>
									<div class="m-3 me-4 fs-6 font-ex">
										<ul>
											<li>삶의 모토: 모든 것은 계획대로, 가장 효율적이게. 극한의 효율충.</li>
											<li>나 자신을 엄격하게 관리한다. 근데 내 주변의 사람도 같이 관리한다.</li>
											<li>업무시간에 내 옆 사람 모니터에 카톡창이 떠 있다<%=request.getContextPath()%>?
												한마디 해줘야지! 결국 팀의 효율이 올라간다.
											</li>
											<li>내가 하는 말은 모두 팩트 기반. 대신 들을 때도 팩트가 아니면 절대 믿지 않으니 나를
												설득하려면 증거 오조오억개 들고 오셈. (사실 오조오억개도 부족함)</li>
											<li>잔소리도 다 애정이 있어서 하는거야~ 너가 원하든 원하지 않든 내가 너를 올바른 길로 이끌어
												줄게.</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="third-section" class="mt-5 border-top-black">
								<div class="text-center">
									<div class="mt-3">나에게 어울리는 개발 직무는?</div>
									<div class="m-3 fs-6 font-ex">
										<p class="text-muted">당신은 과거나 미래보다 오늘 하루를 중요히 여기며 오늘 해야 할
											일을 해결하는군요. 성과를 효율적으로 올릴 수 있는 당신, 당신의 야망을 채워줄 직무를 찾아보세요.</p>
									</div>
									<div id="job" class="text-center">
										<button class="btn btn-light btn-job fs-5">백앤드 개발자</button>
									</div>
									<div class="m-3 fs-6 font-ex">
										<p>백앤드 개발자는 백엔드의 DB와 API 서버 개발을 맡는다. 백엔드에서는 데이터를 저장하고
											관리하며, 웹사이트의 클라이언트 측(Client-side)에서 모든 것이 매끄럽게 작동할 수 있게 해줍니다.
										</p>
									</div>
								</div>
							</div>
							<div id="fourth-section" class="mt-5 border-top-black">
								<div class="row mt-3">
									<div class="col pe-0">
										<div id="type-good" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='ISFP'">
												<div class="type font-ex ">함께하면 좋은</div>
												<div class="mt-3 fs-7">대충해도 일은 잘하는</div>
												<h3>베짱이 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/ISFP.png"
													class="img-type mx-auto d-block" alt="...">
											</button>
										</div>
									</div>
									<div class="col ps-0">
										<div id="type-bad" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='INFJ'">
												<div class="type font-ex ">멀리하면 좋은</div>
												<div class="mt-3 fs-7">시키기도 전에 일 끝내는</div>
												<h3>친절한 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/INFJ.png"
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
								<form method="post"
									action="<%=request.getContextPath()%>/teamA/saved">
									<input name="mbti" id="mbti" value="ESTJ" style="display: none">
									<button type="submit" class="btn btn-light btn-save">저장하기</button>
								</form>
							</div>
							<div class="col">
								<button type="button" class="btn btn-light btn-save"
									onclick="location.href='<%=request.getContextPath()%>/teamA/start'">다시하기</button>
							</div>
							<div class="col">
								<button type="button" class="btn btn-light btn-save"
									onclick="location.href='<%=request.getContextPath()%>/'">홈으로</button>
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
											<jsp:include page="../../ajaxContent/teamA/comment.jsp"
												flush="false" />
										</div>
									</div>
								</div>
							</div>
							<div class="p-3 comment-shadow"></div>
						</div>
						<form:form method="post" action="../addok">
							<div class="input-group mt-5 mb-5">
								<input type="text" name="comment" class="form-control p-3"
									placeholder="댓글을 입력하세요. " aria-label="댓글 입력"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-outline-secondary p-3" type="submit">등록
									</button>
								</div>
							</div>
							<%
							String path = "/" + request.getRequestURI().substring(request.getRequestURI().indexOf("result") + 7,
									request.getRequestURI().indexOf("result") + 11);
							%>
							<input type="hidden" name="path" value="<%=path%>">
						</form:form>
					</div>

				</div>
				<div class="col d-none d-lg-block"></div>

			</div>
		</div>
	</div>
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 정수산나, 양지후 All
			rights reserved.</span>
	</footer>
</body>
</html>