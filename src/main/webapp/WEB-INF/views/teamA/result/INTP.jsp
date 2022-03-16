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
<!-- loading -->
<script type="text/javascript" src="../../resources/js/loading.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamAResult</title>
</head>
<body>
<div id="loader"></div>
<div id="a_loader" style="display:none;">
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col d-none d-lg-block"></div>
			<div id="main" class="col content-result">
				<div id="middle" class="middle text-center mt-3">
					<div class="bar text-white"></div>
					<div class="py-3 window-question bg-white">
						<div id="first-section" class="text-center">
							<div>내가 개발자라면?</div>
							<div class="mt-3">고집불통 퉁퉁이</div>
							<div>
								<h1>천재 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/INTP.png"
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. INTP?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>현직 개발자들 중 가장 많은 유형 - 당신은 찐 개발자의 머리를 타고났다. </li>
										<li>지적 호기심으로 가득 가득. 책 읽는 건 좋아하지만 은근 게을러서 책을 살 정도는 아님. </li>
										<li>타고난 논리력으로 글은 잘 쓰지만, 그걸 말로 표현하는 것은 어려워 함. 내 머릿속에서 흘러가는 사고는 말로 설명할 수 없을 만큼 빠르거든요.</li>
										<li>꼰대들이 가장 싫어하는 유형. 엇, 그런데 저도 꼰대를 제일 싫어하는 걸요!? 피차 싫어하니 상관 없음.</li>
										<li>계획을 철저하게 짤 수 있지만 즉흥적으로 행동할 가능성도 매우 높음. 계획이 전부가 아니라구!️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 근본적인 문제를 파악하고, 불일치나 결함 등도 신속하게 파악할 수 있네요. 또한 문제를 해결하기 위해 장기적인 전략과 계획을 세우고 실현하는 사람이네요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">소프트웨어 엔지니어</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>소프트웨어 엔지이어는 소프트웨어를 설계/분석하고 우수한 품질을 위해 테스트를 반복해요. 직접 코딩하기도 하지만 대부분 프로그래머들에게 지침을 제공합니다. 근본적인 문제를 파악하고 해결책을 세우는 당신과 딱 어울리는 직무네요!</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">갑질 가능성 99.9%</div>
											<h3>타고난 리더 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ENTJ.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">”삶은 거대한 체스와 같아”</div>
											<h3>지식인 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/INTJ.png"
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
										<jsp:include page="../../ajaxContent/teamA/comment.jsp" flush="false" />
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
						<%String path = "/"+request.getRequestURI().split("/")[6].substring(0,4);%>
						<input type="hidden" name="path" value="<%=path%>">
					</form:form>
				</div>

			</div>
			<div class="col d-none d-lg-block"></div>

		</div>
	</div>
</div>
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>