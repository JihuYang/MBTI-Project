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
							<div class="mt-3">재잘대다가 얼떨결에 제일 힘든 일 하는</div>
							<div>
								<h1>아이디어뱅크 개발자</h1>
								<img src="<%=request.getContextPath()%>/resources/img/teamA/ENTP.png"
									class="img-type mx-auto d-block" alt="...">
								<div class="mt-3 text-muted">당신은 혹시.. ENTP?</div>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-6 font-ex">
									<ul>
										<li>나는야 아이언맨 토니 스타크-(별) 반짝반짝한 아이디어가 많다. 내가 좋아하는 분야는
											1등이라구. 하지만 싫어하는 분야는 꼴찌~</li>
										<li>일~단 저지르는 편. 그러나 뒷심이 부족하다.</li>
										<li>프로젝트 할 때 도메인부터 구입하고 보지만 진행이 안되서 결국 안씀.</li>
										<li>프로 입담러. 그러나 자발적 아싸. 자신이 관심있는 분야나 사람에 대해서는 이야기를 흥미진진하게
											하지만 관심이 없다면 침묵.</li>
										<li>개발자가 되어도 한가지 분야에만 종사하지는 않는다. 지루해? 옮기면 되지!</li>
									</ul>
								</div>
							</div>
						</div>
						<div id="third-section" class="mt-5 border-top-black">
							<div class="text-center">
								<div class="mt-3">나에게 어울리는 개발 직무는?</div>
								<div class="m-3 fs-6 font-ex">
									<p class="text-muted">지루하고 따분한 일보다 창의력을 발휘할 수 있는 일을 좋아하는
										당신, 사람들과 함께 다양한 상황을 경험할 때 기쁨을 느끼는군요.</p>
								</div>
								<div id="job" class="text-center">
									<button class="btn btn-light btn-job fs-5">데이터 엔지니어</button>
								</div>
								<div class="m-3 fs-6 font-ex">
									<p>데이터 엔지니어는 데이터를 전문으로 담당하는 소프트웨어 엔지니어이다. 데이터의 수집 및 관리를
										담당하며 다양한 데이터를 다루는 역할이 다양한 정보를 접하고 분석하는 것에 흥미를 느끼는 당신에게 눈을 반짝이게
										하지 않을까요?</p>
								</div>
							</div>
						</div>
						<div id="fourth-section" class="mt-5 border-top-black">
							<div class="row mt-3">
								<div class="col pe-0">
									<div id="type-good" class="text-center">
										<button class="btn btn-light btn-type " onclick="location.href='INFJ'">
											<div class="type font-ex ">함께하면 좋은</div>
											<div class="mt-3 fs-7">시키기도 전에 일 끝내는</div>
											<h3>친절한 개발자</h3>
											<img src="<%=request.getContextPath()%>/resources/img/teamA/INFJ.png"
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