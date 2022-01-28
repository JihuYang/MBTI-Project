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
						"공부란 나만의 그림을 그리며 주체적으로 하는 것" <br> <span id="resultNick">적극적 몽상가형
						</span>
					</div>
					<img class="result-img" src="../../resources/img/teamC/INTP.png" />

					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">INTP</span>에 가까운?
						</div>
					</div>



				</div>

				<div class="bg-white p-4 col-box">

					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>몸으로 겪는 경험보다는 책을 통해 배우는 부분이 많음</li>
							<li>끊임없이 생각하고 고민함</li>
							<li>수업에 배웠던 이론에 충실한 편!</li>
						</ul>
					</div>



					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>완벽주의 성향이 강해 미루는 경향이 있음</li>
							<li>냉철하지 못해 손해보는 경우가 많음</li>
							<li>팔랑귀인 경우가 많아 나의 기준이 흔들리곤 함</li>
						</ul>
					</div>





				</div>

				<div class="bg-white p-4 col-box">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>지식을 이해하며 확장시키는 심화적 학습 방법이 효과적</li>
						<li>개념과 논리 이해도가 높아 체계적인 공부법이 효과적</li>
						<li>밀리지 않게 매일 해야할 것들을 정해 꾸준히 공부하는 습관 기르는 것이 중요</li>
					</ul>
					<div class="box2">
						<div class="smtitle study">찰떡 파트너!</div>
						<div class="mbtiPartner">ENTP</div>
						<div class="box2">
							<div class="smtitle place">찰떡 공부장소!</div>
							<div class="studyPlace">혼자 공부하는게 효과적인 나는, 독서실에!</div>
						</div>
					</div>
				</div>

				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<form method="post" action="../saved">
				<input name="mbti"id = "mbti" value="INTP" style="display: none">
				<button class="wholeBox two_btn sv_btn">저장하기</button>

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