<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>소크라테스 - 마이페이지</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
	
<!-- icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">


<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" type="text/css" rel="stylesheet" />
<link href="resources/css/teamProject.css" type="text/css"
	rel="stylesheet" />
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>

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

<script>
function delete_ok(id) {
	var a = confirm("정말로 삭제하겠습니까?");
	
	if (a)
		location.href = '/webcamp/myPage/delete_ok/' + id;
}
</script>

</head>
<body>
    <jsp:include page= "<%=\"./inc/\".concat(((String)request.getAttribute(\"header\")))%>" />


	<!-- Header-->
	<header class="bg-dark myPage-header">
		<div class="container px-4 px-lg-5 mb-3"></div>
	</header>

	<!-- Section-->
	<section class="my-content py-5">
		<div class="container px-4 px-lg-5 mt-5 text-center">
			<div class="form-signin">
				<form>
					<img class="mb-4 rounded-circle border border-dark"
						src="resources/img/teamA/${info.type}.png" alt="" style="background:white"
						width="150" height="150">

					<div class="mb-3 row">
						<label for="staticNickname"
							class="col-sm-2 col-form-label mypage-label">닉네임 </label>
						<div class="col-sm-10">
							<input type="text" readonly
								class="form-control-plaintext border border-secondary rounded p-3"
								id="staticNickname" value="${info.nickName}" disabled>
						</div>
					</div>
					<div class="mb-3 row">
						<label for="staticMBTI"
							class="col-sm-2 col-form-label mypage-label">MBTI </label>
						<div class="col-sm-10">
							<input type="text" readonly
								class="form-control-plaintext border border-secondary rounded p-3"
								id="staticMBTI" value="${info.type}" disabled>
						</div>
					</div>

<!-- 					<button id="myPage-btn" class="w-50 btn btn-lg btn-dark mt-2"
						type="submit" onclick="change()" value="수정">수정</button> -->
				</form>
			</div>


		</div>


		<div class="container px-4 px-lg-5 my-5">
			<div class="strike pb-5">
				<span>지난 테스트 결과 </span>
			</div>
			<div
				class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-4 justify-content-left bg-light">
				<c:forEach items="${savedTest}" var="savedTest" varStatus="status">
						<c:if test="${savedTest.testId == 1}">
							<c:set var="test" value="A" scope="session"/>
						</c:if>
						<c:if test="${savedTest.testId == 2}">
							<c:set var="test" value="B" scope="session"/>
						</c:if>
						<c:if test="${savedTest.testId == 3}">
							<c:set var="test" value="C" scope="session"/>
						</c:if>
						<c:if test="${savedTest.testId == 4}">
							<c:set var="test" value="D" scope="session"/>
						</c:if>
						<c:if test="${savedTest.testId == 5}">
							<c:set var="test" value="E" scope="session"/>
						</c:if>
					<div class="col my-3">
						<div class="card h-100">
							<div class="badge bg-dark text-white position-absolute"
								style="top: 0.5rem; right: 0.5rem">${savedTest.regDate}  <a class="mb-0 text-white p-1"
														id="delbtn" href="javascript:delete_ok('${savedTest.id}')"><i
														class="bi bi-x-lg"></i></a></div>
							<!-- Product image-->
							<img class="card-img-top"
								src="resources/img/teamProject/team${test}_thumbnail.png" alt="<%=request.getContextPath()%>." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">${savedTest.testName}</h5>

								</div>
							</div>

							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										href="./team${test}/result/${savedTest.type}">내 결과 보기 </a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>



	<!-- Footer-->
	<footer class="py-3 bg-dark main-footer">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; MBTI에 진심인
				팀 2022</p>
		</div>
	</footer>

</body>
</html>
