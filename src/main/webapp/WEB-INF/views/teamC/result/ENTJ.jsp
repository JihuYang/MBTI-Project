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
			<div class="col" id="sideCol"></div>
			<div class="col content" id="mainCont">
				<div class="bg-white p-4 col-box">
					<div class="resultName">
						"문제는 해결하라고 있는 거지!" <br> <span id="resultNick">문제해결형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/ENTJ.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ENTJ</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>상상력이 풍부하고 강한 의지를 가지고 있어 다양한 방법을 모색하는 재능이 있음</li>
							<li>목표달성을 위해 이성적 사고를 함</li>
							<li>어려운 내용 공부하며 성취감 느끼는 타입</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>참을성이 부족해 하나를 꾸준히 해나가는데, 어려움을 느낌</li>
							<li>나의 주장이 강한 편이라 다른 사람 의견을 수용하는 자세가 다소 부족</li>
							<li>감정표현이 서투름</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>공부하기 전 하루 목표를 세우고 공부를 끝낸 후 오늘 하루를 평가하는 시간을 가짐</li>
						<li>과목을 바꿔가며 공부한다</li>
						<li>토론, 브레인스토밍 등 협업 통해 공부하는 것 추천!</li>
						<li>타인의 칭찬이 가장 큰 원동력!</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ENFP</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">대화, 토론 등 사람들과 소통하며 공부하는 것이 효과적인 나는, 같이하자! 스터디카페!</div>
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
			<div class="col" id="sideCol"></div>
		</div>
	</div>

	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>

</body>

</html>