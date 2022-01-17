<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta id="metaDescription" name="description"
	content="MBTI로 나의 배우자 캐릭터 찾기">
<meta id="metaKeywords" name="keywords" content="MBTI로 나의 배우자 캐릭터 찾기">
<title>[결과]나의 배우자는 누구?</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href='../resources/css/teamB.css' />
<style>


.col-lg-8 {
    flex: 0 0 auto;
    width:100%;
    margin-bottom: 70px;
}

.card-body {
    flex: 1 1 auto;
    padding: 1rem 1rem;
    min-width: max-content;
    
}

</style>
</head>
<body>
	<div id="result container">
		<div id="optadATF" style="min-height: 110px"></div>
		<div class="result-wrap">
			<div class="img-result">
				<img src="../resources/img/teamB/ENFJ.png" alt="MBTI:결과 img"><br>
			</div>

			<div style="margin-top: 100px;">
				<img src="../resources/img/teamB/check.png" alt="MBTI:결과"
					style="vertical-align: center; weight: auto; height: 20px;">
				<span class="other_test" style="font-size: 20px; font-weight: bold;">다른
					테스트 하러가기</span>
			</div>
			<br>
			<div class="btn-group-vertical" style="margin-bottom: 150px;">
				<button type="button" class="btn btn-warning btn-fink"
					style="border-radius: 15px; margin-bottom: 10px;">
					<h3 style="font-size: 20px;">내가 개발자라면? 개발자 유형 테스트</h3>
				</button>
				<button type="button" class="btn btn-warning btn-fink"
					style="border-radius: 15px; margin-bottom: 10px;">
					<h3 style="font-size: 20px;">MBTI 유형에 맞는 찰떡 공부법</h3>
				</button>
				<button type="button" class="btn btn-warning btn-fink"
					style="border-radius: 15px; margin-bottom: 10px;">
					<h3 style="font-size: 20px;">짱구에서 나는 누굴까?</h3>
				</button>
				<button type="button" class="btn btn-warning btn-fink"
					style="border-radius: 15px; margin-bottom: 10px;">
					<h3 style="font-size: 20px;">인간관계 유형별 MBTI</h3>
				</button>
			</div>


			<div class="comments-wrap container mt-5">
				<div class="row">
					<div class="col-lg-8">
						<section class="mb-5">
							<div class="card bg-light">
								<div class="card-body">
									<!-- Comment form-->
									<form class="mb-4" action="addok" method="post">
										<tr>
											<td>아이디</td>
											<td><input type="text" name="userId"
												placeholder="Please enter your ID" /></td>
										</tr>
										<tr>
											<td>패스워드</td>
											<td><input type="text" name="userPwd"
												placeholder="Enter your password" /></td>
										</tr>
										<br> <br>
										<textarea name="content" class="form-control" rows="3"
											placeholder="Join the discussion and leave a comment!"></textarea>
										<br>
										<button type="submit" style="text-align: right;">등록하기</button>
									</form>
									<!-- Comment with nested comments-->
									<div class="d-flex mb-4">
										<!-- Parent comment-->
										<div class="flex-shrink-0">
											<img class="rounded-circle"
												src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
												alt="..." />
										</div>
										<div class="ms-3">
											<div class="fw-bold">장꾸</div>
											재밌다!!!
											<!-- Child comment 1-->
											<div class="d-flex mt-4">
												<div class="flex-shrink-0">
													<img class="rounded-circle"
														src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
														alt="..." />
												</div>
												<div class="ms-3">
													<div class="fw-bold">푸</div>
													뭐가 재밌는지 설명 좀?
												</div>
											</div>
											<!-- Child comment 2-->
											<div class="d-flex mt-4">
												<div class="flex-shrink-0">
													<img class="rounded-circle"
														src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
														alt="..." />
												</div>
												<div class="ms-3">
													<div class="fw-bold">연어의마술사</div>
													싸우지마.. 됐고 연어 먹고싶다.
												</div>
											</div>
										</div>
									</div>
									<!-- Single comment-->
									<div class="d-flex">
										<div class="flex-shrink-0">
											<img class="rounded-circle"
												src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="…" />
										</div>
										<div class="ms-3">
											<div class="fw-bold">코린이</div>
											코딩은 재밌는데 재미없어? 무슨 말인지 아시는 분?
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<p class=footer-text>@HGU 2022 Winter Camp</p>
	</div>
	</div>
</body>
</html>
