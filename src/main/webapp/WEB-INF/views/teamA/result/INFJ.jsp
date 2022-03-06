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
							<div class="mt-3">시키기도 전에 일 끝내는</div>
							<div>
								<h1>친절한 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/INFJ.png"
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. INFJ?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>모두에게 다정다감한 친절한 개발자. “앗 이건 제가 할게요~!”  단 속마음은 다를 수 있음 주의! </li>
										<li>게으름? 그게 모야? 계획을 세우고 목적을 향해 돌진!! 모든 일은 신중하고 완벽하게 끝낸다.</li>
										<li>번아웃에 매우 취약한 편 ㅠㅠ 반복적이고 의미없는 일이나 과도한 업무량, 불편한 인간관계는 나를 지치게 만들어요. </li>
										<li>분쟁과 다툼은 절대 사절. 피할 수 있다면 피하고 싶다. 우리 다 같이 사이좋게 지내요<%=request.getContextPath()%></li>
										<li>사람들 앞에서 내 코드가 비판받은 경우 - 제 코드에 문제가 있나요? 으헝헝헝흐규규규 ㅠㅠ ㅠㅠ (대충 2주동안 슬퍼한다)️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 프로젝트를 실행할때 충분한 시간적 여유가 주어진 일을 좋아하고, 완벽한 솔루션을 찾는것을 즐기는군요! 새로운 아이디어나 접근 방식을 찾아서 사람과 함께 성장과 발전을 도울 수 있는 일에도 흥미를 보이네요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">풀스택 개발자</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>풀스택 개발자는 클라이언트 및 서버 사이드 코드를 학습하고 웹 사이트가 작동하도록 해주는 모든 기술군에 대해 이해하고 있는 개발자입니다. 클라이언트 측에서는 일반적으로 HTML, CSS 및 JavaScript를 사용하여 웹 사이트에 실제로 표시되는 모든 사항을 개발하 서버 측에서는 클라이언트 측에서 수신된 데이터를 조작할 수 있는 알고리즘 및 비즈니스 로직을 개발합니다.</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">재잘대다 제일 힘든 일 하는</div>
											<h3>아이디어뱅크 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ENTP.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">개썅마이웨이</div>
											<h3>눈치백단 개발자 </h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ESTP.png"
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
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>