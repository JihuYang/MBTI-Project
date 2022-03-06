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
							<div class="mt-3">”삶은 거대한 체스와 같아”</div>
							<div>
								<h1>지식인 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/INTJ.png"
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. INTJ?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>삶은 거대한 체스<%=request.getContextPath()%>어쩌구<%=request.getContextPath()%> 운보다는 실력으로, 통찰과 논리로 삶을 살아간다. </li>
										<li>철두철미한 목표 지향러. Github에 잔디 심어지는 모습을 보면서 큰 행복감을 느낌.</li>
										<li>목표가 없는 건 견딜 수 없어. 나에게 목표를 심어주세요.</li>
										<li>현실에서는 보기 힘들지만, 지식 공유형 인터넷 커뮤니티 Wiki, Stackoverflow 등에서는 단연 1위</li>
										<li>누군가 나를 제한하지 않았으면 좋겠어. 혼자 있고 싶어!️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 논리 체계를 이해하려고 논리적인 과정을 통해 결과를 도출해내네요. 또 어려운 학문을 즐기는 경향이 있고 예측하는 것에 흥미를 느끼는군요!</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">시스템 엔지니어</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>시스템 엔지니어는 컴퓨터 시스템, OS를 운용하고 관리해요. 또한 서비스에 대한 서버, 네트워크, DB 등의 장비를 구축하고 유지보수 및 관리하는 작업을 하며 시스템 설계, 구축, 운영을 담당합니다.</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type ">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">재잘대다가 제일 힘든 일 하는</div>
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
											<div class="mt-3 fs-7">대충하는 것 같아도 일은 잘하는</div>
											<h3>베짱이 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ISFP.png"
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