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
								<div class="mt-3">대충하는 것 같아도 일은 잘하는</div>
								<div>
									<h1>베짱이 개발자</h1>
									<img
										src="<%=request.getContextPath()%>/resources/img/teamA/ISFP.png"
										class="img-type mx-auto d-block" alt="...">
									<div class="mt-3 text-muted">당신은 혹시.. ISFP?</div>
								</div>
							</div>
							<div id="second-section" class="mt-5 border-top-black">
								<div class="text-left">
									<div class="mt-3 ms-3">성격은?</div>
									<div class="m-3 me-4 fs-6 font-ex">
										<ul>
											<li>프로집순이. 집에만 들어가면 연락두절된다. “지금 뭐해?” “누워있지”. 침대에 누워서
												코딩하기? 쌉가능.</li>
											<li>이것좀 해 주실 수 있나요? ‘아니오’ 라는 말을 못해 집에 와서 야근 하며 후회하는 스타일.
												부탁받으면 거절을 잘 못하지만 또 내가 부탁을 잘 하지도 못한다.</li>
											<li>프로젝트 마감이 내일이라구요? 좀만 이따 시작할게요,, 발등에 불이 떨어져서 타들어가도록 미룰
												수 있을때까지 일을 끝까지 미룬다. 그런데 어떻게든 다 해내고 심지어 잘해와서 주변 사람들이 깜짝 놀람.</li>
											<li>스트레스 너무 많이 주지 마세요 ㅠㅠ 갑자기 학교나 직장을 때려칠 수도 있다구요.</li>
											<li>내 발자국은 어디에도 남기기 싫어 카톡 프사는 텅텅, 인스타는 눈팅용. 나에 대해 세상에
												알리기에는 만사가 다 귀찮다.️</li>
										</ul>
									</div>
								</div>
							</div>
							<div id="third-section" class="mt-5 border-top-black">
								<div class="text-center">
									<div class="mt-3">나에게 어울리는 개발 직무는?</div>
									<div class="m-3 fs-6 font-ex">
										<p class="text-muted">당신은 세심하고 주의력이 필요한 일에 큰 재능을 보이네요. 또한
											실질적인 도움을 제공해서 재빨리 문제를 해결 할 수 있는 일에 흥미가 있어요.</p>
									</div>
									<div id="job" class="text-center">
										<button class="btn btn-light btn-job fs-5">빅데이터 분석가</button>
									</div>
									<div class="m-3 fs-6 font-ex">
										<p>빅데이터 분석가는 수많은 데이터 속에서 트렌드를 읽어내 부가가치가 높은 결과물을 도출해내는 일을
											담당해요. 대량의 빅데이터를 관리하고 분석해 사람들의 행동패턴이나 시장 경제상황 등을 예측하기도 합니다.</p>
									</div>
								</div>
							</div>
							<div id="fourth-section" class="mt-5 border-top-black">
								<div class="row mt-3">
									<div class="col pe-0">
										<div id="type-good" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='ESTJ'">
												<div class="type font-ex ">함께하면 좋은</div>
												<div class="mt-3 fs-7">한 우물만 파는</div>
												<h3>꼰대 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/ESTJ.png"
													class="img-type mx-auto d-block" alt="...">
											</button>
										</div>
									</div>
									<div class="col ps-0">
										<div id="type-bad" class="text-center">
											<button class="btn btn-light btn-type "
												onclick="location.href='INTJ'">
												<div class="type font-ex ">멀리하면 좋은</div>
												<div class="mt-3 fs-7">”삶은 거대한 체스와 같아”</div>
												<h3>지식인 개발자</h3>
												<img
													src="<%=request.getContextPath()%>/resources/img/teamA/INTJ.png"
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
							<!-- 							<div class="col">
								<button type="button" class="btn btn-light btn-save">저장하기</button>
							</div> -->
							<div class="col">
								<form method="post"
									action="<%=request.getContextPath()%>/teamA/saved">
									<input name="mbti" id="mbti" value="ISFP" style="display: none">
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

							<input type="hidden" name="path" value=<%=path%> />
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