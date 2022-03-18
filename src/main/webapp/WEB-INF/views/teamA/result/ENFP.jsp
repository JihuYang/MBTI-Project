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
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/share/teamA.js"></script>

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
							<div class="mt-3">자기애 맥스</div>
							<div>
								<h1>행복한 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/ENFP.png"
									class="img-type mx-auto d-block" alt="<%=request.getContextPath()%>.">
								<div class="mt-3 text-muted">당신은 혹시..ENFP?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>이 구역의 해피 바이러스는 나야 나! </li>
										<li>의식의 흐름대로 이것저것 꼬리에 꼬리를 물고 생각이 흘러감. 내 맥북 색은 스페이스그레이.. 스페이스...우주....우주 정복..??!! </li>
										<li>너 어떻게 그럴 수 있어? (1시간 후) 너와 같이 있어서 행복해.. 작게 자주 삐지지만 몇 시간 후에 원래대로 돌아온다.</li>
										<li>호불호가 분명하다. 감정 기복이 심하고 감정을 숨길 수가 없음. 어쩔 수 없음.</li>
										<li>스르르 출근하고 스르르 퇴근한다. 출근하자마자 퇴근 시간 기다려지는거~ 나만 그런거 아니잖아요?️</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">당신은 창의력 넘치는 아이디어를 많이 가지고 있군요. 혼자보다는 여러사람이 함께 일할 때 에너지를 얻는 당신, 당신의 창의성을 발휘할 수 있는 직무가 어울리네요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">iOS 앱 개발자</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>iOS 앱 개발자는 iOS 기반 모바일 앱의 화면을 만들고 그 화면을 작동하게 한다. 가장 최신의 갠쥐나는 아이폰을 사용할것만 같은 당신에게 딱 어울릴것 같은 직무군요! </p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type " onclick="location.href='ISTP'">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">사람보다 사물이 더 좋은 </div>
											<h3>만능 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ISTP.png"
												class="img-type mx-auto d-block" alt="...">
										</button>
									</div>
								</div>
								<div class="col ps-0">
									<div id="type-bad" class="text-center">
										<button class="btn btn-light btn-type " onclick="location.href='ISTJ'">
											<div class="type font-ex ">멀리하면 좋은</div>
											<div class="mt-3 fs-7">분단위로 계획적이게</div>
											<h3>로보트 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/ISTJ.png"
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
</div>
	<footer class="mt-5 text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>