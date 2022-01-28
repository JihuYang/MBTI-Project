<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../../resources/js/shareProject.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- teamC css -->
<link rel="stylesheet" type="text/css" href="../../resources/css/teamC.css">
<!-- google font -->
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Do Hyeon'
	rel='stylesheet'>
<!-- icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>teamC Result</title>

<!-- menu를 위한 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<!-- comment 수정 부분 -->
<script type="text/javascript">
	function doDisplay(id) {
		$("#" + id + "2").toggle();
		var con = document.getElementById(id);
		if (con.style.display == 'none') {
			con.style.display = 'flex';
		} else {
			con.style.display = 'none';
		}
	}

	function moveTo() {
		location.href = "../start";
	}
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = '../../teamC/deleteok/' + id;
	}
</script>

</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col content">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"높은 확률로 지금 다이어리에 계획표 작성 중" <br> <span id="resultNick">인간 플래너형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ENFJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ENFJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>계획 세우는 것이 취미</li>
							<li>친절하고 재치 있으며 성실하고 호기심이 많은 유형</li>
							<li>원하는 목표를 달성하기 위해 수단과 방법을 가리지 않음</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>거절하는 것을 어려워함</li>
							<li>한번 우울에 빠져버리면 헤어 나오는데 오랜 시간이 걸림</li>
							<li>계획이 흐트러질 경우 불안한 마음에 하던 일을 아예 포기해버림</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>수업 할때 앞자리에 앉아 능동적인 참여 추천!</li>
						<li>시간을 맞춰놓고 스스로 보채며 공부하는 게 효과적!</li>
						<li>피드백을 주고받을 수 있는 멘토를 찾는다</li>
						<li>수업 후 질문을 따로 하거나, Q&A 게시판을 잘 활용한다</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ESTJ, ESFJ, ISTJ</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">어디서 하든 열심히 하는게 중요하지. 이번 시험도 파이팅하자! 환경에 구애 받지 않는다구~</div>
						</div>
					</div>
				</div>

				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox two_btn sv_btn">저장하기</div>

				<div class="shareBtn">
					<a id="kakao-link-btn" href="javascript:sendLink()"> <img
						src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" />
					</a>

					<button class="sharebtn-kakao" type="button" onclick="sendLink();">
						<img src="../../resources/img/teamC/kakaoLogo.png" />
					</button>
					<button class="sharebtn-link" type="button" onclick="copyLink();">
						<img src="../../resources/img/teamC/copyLink.png" />
					</button>

				</div>

				<div class="bg-white p-4 col-box">

					<div class="comment">
						<div class="text-start comment-number">댓글 1</div>

						<form:form method="post" action="../../teamC/addok">
							<div class="d-flex p-2 comment-add">
								<input type="text" name="comment" class="comment-add-text"
									style="border: none; border-radius: 10px; width: 90%"
									placeholder=" 너의 이야기를 들려줘">
								<button class="btn" type="submit">
									<i class="bi bi-arrow-up-circle-fill"
										style="color: black; font-size: 1.5rem"></i>
								</button>
							</div>
						</form:form>
						<c:forEach items="${comments}" var="comment" varStatus="status">
							<div class="comment-set">
								<div class="d-flex flex-start">

									<div class="comment-list">
										<img class="rounded-circle border border-secondary"
											src="../../resources/img/teamC/${comment.type}.png" alt="avatar"
											width="60" height="60" />
									</div>

									<div class="comment-list-name" style="width: 200px;">
										<p class="fw-bold fs-3 " style="line-height: 0%">${comment.nickname}</p>
										<p class="text-muted fs-8">
											<fmt:formatDate value="${comment.regDate}"
												var="formattedDate" type="date" pattern="yyyy-MM-dd" />${formattedDate}</p>

									</div>
									<div id="show-comment" class="comment-list-content w-100">
										<p id="${comment.id}2" style="display: block;">${comment.comment}</p>

										<form:form method="post" action="../../teamC/editok">
											<div class="p-2 comment-add" id="${comment.id}"
												style="display: none;">
												<textarea rows="3" name="comment"
													style="border: none; border-radius: 10px; width: 90%">${comment.comment}</textarea>
												<input type="text" name="id" value="${comment.id}"
													style="display: none;">
												<button class="btn" type="submit">
													<i class="bi bi-arrow-up-circle-fill"
														style="color: black; font-size: 1.5rem"></i>
												</button>
											</div>
										</form:form>

									</div>

									<c:if test="${userId == comment.userId}">
										<div class="dropdown comment-menu">
											<button class="btn" id="menu1" type="button"
												data-toggle="dropdown">
												<i class="bi bi-three-dots-vertical"></i><span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="javascript:delete_ok('${comment.id}')">삭제</a></li>
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="javascript:doDisplay(${comment.id});">수정</a></li>
											</ul>
										</div>
									</c:if>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>


			</div>
			<div class="col"></div>
		</div>
	</div>

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>