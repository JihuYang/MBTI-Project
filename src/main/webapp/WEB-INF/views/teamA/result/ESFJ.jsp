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
								<div class="mt-3">옆에 있는 동료에게 말 걸고 싶어서 드릉드릉</div>
								<div>
									<h1>인류애맥스 개발자</h1>
									<img
										src="<%=request.getContextPath()%>/resources/img/teamA/ESFJ.png"
										class="img-type mx-auto d-block" alt="...">
									<div class="mt-3 text-muted">당신은 혹시.. ESFJ?</div>
								</div>
							</div>
							<div id="second-section" class="mt-5 border-top-black">
								<div class="text-left">
									<div class="mt-3 ms-3">성격은?</div>
									<div class="m-3 me-4 fs-6 font-ex">
										<ul>
											<li>일할 때 집중을 잘 하지 못하고 주변 사람들에게 한번씩 말을 걸어야 함.</li>
											<li>잔잔한 분위기 메이커. 한마디로 말하자면 “인기쟁이”</li>
											<li>부탁을 거절하지 않기 때문에 부려먹기 딱 좋음. 내가 도움이 된다면 난 그걸로 만족해~ 근데
												또 자신의 이득은 잘 챙기니 걱정 ㄴㄴ.</li>
											<li>(물어보지도 않았는데) 무슨 문제 있어? 내가 해결해줄게. 다른 사람의 일을 해결해주고
												칭찬받는 걸 좋아함. 많이 물어보고 많이 칭찬해줘~^^</li>
											<li>우리의 자료는 소중하니까 내가 틈틈히 백업해놓을게! 다른 사람들을 위해 주석에 설명도 꼼꼼히
												달아놓는 편.️</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="third-section" class="mt-5 border-top-black">
								<div class="text-center">
									<div class="mt-3">나에게 어울리는 개발 직무는?</div>
									<div class="m-3 fs-6 font-ex">
										<p class="text-muted">당신은 어디서나 분위기를 잘 맞추고 편안한 분위기로 만드는군요!
											동료의 일 도 내 업무처럼 도와주는 당신, 협력하는 과정에서 기쁨을 느낄 수 있는 직무가 어울리네요.</p>
									</div>
									<div id="job" class="text-center">
										<button class="btn btn-light btn-job fs-5">웹 퍼블리셔</button>
									</div>
									<div class="m-3 fs-6 font-ex">
										<p>웹디자이너의 일인 디자인 작업과 코딩을 통해 웹사이트 편집을 함께 하는 직업입니다. 웹디자이너 또는
											프로그래머가 디자인하고 웹 코딩한 것을 웹 표준과 웹 접근성에 부합하도록 조율하며 재정리합니다. 기획자와
											개발자 간의 커뮤니케이션을 도와줄 수 있는 능력도 있어야 합니다.</p>
									</div>
								</div>
							</div>
							<div id="fourth-section" class="mt-5 border-top-black">
								<div class="row mt-3">
									<div class="col pe-0">
										<div id="type-good" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='INTP'">
												<div class="type font-ex ">함께하면 좋은</div>
												<div class="mt-3 fs-7">고집불통 퉁퉁이</div>
												<h3>천재 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/INTP.png"
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
							<div class="col">
								<form method="post"
									action="<%=request.getContextPath()%>/teamA/saved">
									<input name="mbti" id="mbti" value="ESFJ" style="display: none">
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