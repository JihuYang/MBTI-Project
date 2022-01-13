<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamAResult</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div id="main" class="col content ">
				<div id="middle" class="middle text-center mt-3">
					<div class="bar text-white"></div>
					<div class="py-3 window-question bg-white">
						<div id="first-section" class="text-center">
							<div>내가 개발자라면?</div>
							<div class="mt-3">갑질 가능성 99%</div>
							<div>
								<h1>타고난 팀장</h1>
							</div>
						</div>
						<div id="second-section" class="mt-5 border-top-black">
							<div class="text-left">
								<div class="mt-3 ms-3">성격은?</div>
								<div class="m-3 me-4 fs-7">
									<ul>
										<li>당신은~리더가 되기 위해 태어난 사람~  동료 개발자들을 채찍질해서 어떻게든 프로젝트 끝냄.</li>
										<li>불도저 같은 성향으로 자칫하면 팀의 꼰대가 될 수 있으니 조심 또 조심!!</li>
										<li>새로운 시도 컴온! 실패따위 두렵지 않아. 어짜피 분명한 목표를 세우고 노력하기 때문에 다 성공 할 수 있어.</li>
										<li>프로젝트 관리는 나한테 맡겨만줘. 하지만 일상생활 관리는 아웃오브관심,,,우리 집 냉장고에 뭐가 들어있더라?</li>
										<li>쉬는 시간 취미는 뉴스를 보거나 실시간 주식 거래 현황 시청하기,, 아아.. 쉴때조차 시간을 허투루 쓰지 않는 당신... 24시간이 모자라~</li>
									</ul>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div id="bottom" class="bottom">
					<button type="button" class="btn btn-light btn-answer">답안
						1</button>
				</div>
				<div id="bottom" class="bottom">
					<button type="button" class="btn btn-light btn-answer">답안
						2</button>
				</div>

			</div>
			<div class="col"></div>
		</div>

	</div>
	<footer class="text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
</body>
</html>