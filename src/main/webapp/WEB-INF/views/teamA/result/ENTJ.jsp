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
<link rel="stylesheet" type="text/css" href="../resources/css/teamA.css">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../resources/js/shareProject.js"></script>

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
							<div class="mt-3">갑질 가능성 99.9%</div>
							<div>
								<h1>타고난 리더 개발자</h1>
								<img src="../resources/img/teamA/ENTJ.png"
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. ENTJ?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>당신은~리더가 되기 위해 태어난 사람~ 동료 개발자들을 채찍질해서 어떻게든 프로젝트 끝냄.</li>
										<li>불도저 같은 성향으로 자칫하면 팀의 꼰대가 될 수 있으니 조심 또 조심!!</li>
										<li>새로운 시도 컴온! 실패따위 두렵지 않아. 어짜피 분명한 목표를 세우고 노력하기 때문에 다 성공
											할 수 있어.</li>
										<li>프로젝트 관리는 나한테 맡겨만줘. 하지만 일상생활 관리는 아웃오브관심,,,우리 집 냉장고에 뭐가
											들어있더라?</li>
										<li>쉬는 시간 취미는 뉴스를 보거나 실시간 주식 거래 현황 시청하기,, 아아.. 쉴때조차 시간을
											허투루 쓰지 않는 당신... 24시간이 모자라~</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">단순한 업무보다는 복잡한 문제를 해결하는 업무가 잘 어울리겠군요!
										사람을 이끄는 능력이 탁월하기 때문에 관리자가 될 가능성이 높아보여요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">네트워크 관리자</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>네트워크 관리자는 클라이언트, 서버, 인터넷 및 인트라넷 형태의 전산망 관련 하드웨어 및 소프트웨어
										자원을 관리하고 운영한다. 지도력과 통솔력이 있는 당신에게 안성맞춤이랄까?</p>
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
											<img src="../resources/img/teamA/INFP.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">나만 바라봐~</div>
											<h3>관종 개발자</h3>
											<img src="../resources/img/teamA/ESFP.png"
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
								onclick="location.href='./start'">다시하기</button>
						</div>
					</div>
					<div class="row mt-5">
						<div class="col">
						<a id="kakao-link-btn" href="javascript:sendLink()"> 
							<img src="../resources/img/teamA/kakaotalk.png"
								class="img-share mx-auto d-block" alt="..."></a>
							<p>카카오톡 공유</p>
						</div>
						<div class="col">
						<a id="copy-link-btn" href="javascript:copyLink()"> 
							<img src="../resources/img/teamA/link.png"
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
										<%@ include file="../../ajaxContent/teamA/comment.jsp"%>
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