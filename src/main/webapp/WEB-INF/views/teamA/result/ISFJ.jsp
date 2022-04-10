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
								<div class="mt-3">말 잘 듣는 소심한 일꾼</div>
								<div>
									<h1>순둥이 개발자</h1>
									<img
										src="<%=request.getContextPath()%>/resources/img/teamA/ISFJ.png"
										class="img-type mx-auto d-block" alt="...">
									<div class="mt-3 text-muted">당신은 혹시.. ISFJ?</div>
								</div>
							</div>
							<div id="second-section" class="mt-5 border-top-black">
								<div class="text-left">
									<div class="mt-3 ms-3">성격은?</div>
									<div class="m-3 me-4 fs-6 font-ex">
										<ul>
											<li>저는 순둥순둥 하답니다. 잘은 못하지만(사실은 잘함) 하라는 거 다 해요!</li>
											<li>개발자들이 가지지 못한 갬성을 소유하고 있다.</li>
											<li>프로젝트 할때는 누구랑 할지 고민하는게 제일 어려워. 차라리 그냥 팀을 짜주세요.</li>
											<li>완벽하지 않은 나의 결과물 → 스트레스!!! 귀찮아서 다 못한 나를 보면 → 스트레스!!!</li>
											<li>삶의 모토는 매사에 최선을 다하자! 열심히 살자!</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="third-section" class="mt-5 border-top-black">
								<div class="text-center">
									<div class="mt-3">나에게 어울리는 개발 직무는?</div>
									<div class="m-3 fs-6 font-ex">
										<p class="text-muted">당신은 세심한 관찰력과 정확성, 주의력이 요구되는 일에 재능을
											보이는군요. 묵묵하게 제 할일을 완벽하게 해내는 당신에게는 다른 사람을 도울 수 있고 책임감이 필요한 보안
											전문가가 어울리네요.</p>
									</div>
									<div id="job" class="text-center">
										<button class="btn btn-light btn-job fs-5">빅데이터 분석가</button>
									</div>
									<div class="m-3 fs-6 font-ex">
										<p>보안 전문가는 조직의 정보와 네트워크를 보호하기 위해 보안 가이드를 계획하고 실행하는 일을 합니다.
											또한 침입자가 발생 했을 때는 신속히 탐지대응하기도 해요.</p>
									</div>
								</div>
							</div>
							<div id="fourth-section" class="mt-5 border-top-black">
								<div class="row mt-3">
									<div class="col pe-0">
										<div id="type-good" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='ESTP'">
												<div class="type font-ex ">함께하면 좋은</div>
												<div class="mt-3 fs-7">개썅마이웨이</div>
												<h3>눈치백단 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/ESTP.png"
													class="img-type mx-auto d-block" alt="...">
											</button>
										</div>
									</div>
									<div class="col ps-0">
										<div id="type-bad" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='ENFP'">
												<div class="type font-ex ">멀리하면 좋은</div>
												<div class="mt-3 fs-7">자기애 맥스</div>
												<h3>행복한 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/ENFP.png"
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
							<form method="post"
								action="<%=request.getContextPath()%>/teamA/saved">
								<input name="mbti" id="mbti" value="ISFJ" style="display: none">
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
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 정수산나, 양지후 All
			rights reserved.</span>
	</footer>
</body>
</html>