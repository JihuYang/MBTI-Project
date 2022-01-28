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
							<div class="mt-3">나만 바라봐~ </div>
							<div>
								<h1>관종 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/ESFP.png"
									class="img-type mx-auto d-block" alt="<%=request.getContextPath()%>.">
								<div class="mt-3 text-muted">당신은 혹시<%=request.getContextPath()%> ESFP?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>훗! 날 모르는 사람은 없을거야. 난 born to be 연예인 이니까~</li>
										<li>사람들이 나를 쳐다보고 관심을 주는게 좋다. 관심, 짜릿해 늘 새로워 관심이 최고야.</li>
										<li>오늘의 행복을 위해서라면 코딩이고 뭐고 여행이나 갈래. 왜 굳이 힘들게 일하죠? 그냥 모두가 행복해졌으면 좋겠어!</li>
										<li>다른 사람을 위한 surprise를 준비하며 즐거워 하지만, 정작 뚝딱이 개발자들은 잘 반응해주지 못하는 걸,,</li>
										<li>말리지만 않는다면, 하루종일도 말할 수 있음.️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 어떤 상황에도 금방 적응하고, 빨리 배우는군요!  또 타고난 순발력 덕분에 문제가 생겼을 때 재빨리 대응하는 능력이 뛰어나네요. 진정한 인싸라면 새로나온 게임정도는 다 알아야 하지 않을까요!?</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">게임 프로그래머</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>게임 프로그래머는 프로그래밍을 통해 맵 디자인, 캐릭터 디자인, 사운드, 각종 시스템 등을 뒤섞어, 게임이라는 하나의 결과물을 만든다.</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">혼자 웃고 있는 힉힉호무리</div>
											<h3>개복치 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/INFP.png"
												class="img-type mx-auto d-block" alt="<%=request.getContextPath()%>.">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">대충하는 것 같아도 일은 잘하는</div>
											<h3>베짱이 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ISFP.png"
												class="img-type mx-auto d-block" alt="<%=request.getContextPath()%>.">
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
								onclick="location.href='./start'">다시하기</button>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
							<a id="kakao-link-btn" href="javascript:sendLink()"> <img
								src="<%=request.getContextPath()%>/resources/img/teamA/kakaotalk.png"
								class="img-share mx-auto d-block" alt="<%=request.getContextPath()%>."></a>
							<p>카카오톡 공유</p>
						</div>
						<div class="col">
							<a id="copy-link-btn" href="javascript:copyLink()"> <img
								src="<%=request.getContextPath()%>/resources/img/teamA/link.png"
								class="img-share mx-auto d-block" alt="<%=request.getContextPath()%>."></a>
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
										<%@ include file="<%=request.getContextPath()%>/<%=request.getContextPath()%>/ajaxContent/teamA/comment.jsp"%>
									</div>
								</div>
							</div>
						</div>
						<div class="p-3 comment-shadow"></div>
					</div>
					<form:form method="post" action="<%=request.getContextPath()%>/teamA/addok">
						<div class="input-group mt-5 mb-5">
							<input type="text" name="comment" class="form-control p-3"
								placeholder="댓글을 입력하세요. " aria-label="댓글 입력"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary p-3" type="submit">등록
								</button>
							</div>
						</div>
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