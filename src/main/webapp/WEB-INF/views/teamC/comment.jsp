<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="../resources/css/teamC.css">
<link href='https://fonts.googleapis.com/css?family=Black Han Sans'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Song Myung'
	rel='stylesheet'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>teamCResult</title>

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


<title>teamC Comment</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col content">
				<div class="bg-white p-4 col-box">

					<div class="comment">
						<div class="text-start comment-number">댓글 1</div>


						<div class="d-flex comment-add p-2"
							style="margin-bottom: 20px; background: #FF333F; border: 5px solid #000000; box-sizing: border-box; box-shadow: 10px 10px 0px #000000; border-radius: 10px;">
							<input type="text" class="comment-add-text"
								style="border: none; border-radius: 10px; width: 90%"
								placeholder=" 너의 이야기를 들려줘">
							<button class="btn" type="button">
								<i class="bi bi-arrow-up-circle-fill"
									style="color: black; font-size: 1.5rem"></i>
							</button>
						</div>
						<div class="comment-set">
							<div class="d-flex flex-start">

								<div class="comment-list list-inline">
									<img class="rounded-circle border border-secondary"
										src="../resources/img/teamC/character.png" width="60"
										height="60" />
									<div class="comment-list-name">
										<p class="fw-bold fs-3 " style="line-height: 0%">닉네임</p>
										<p class="text-muted fs-8">2022.01.17</p>
									</div>
								</div>
								<div class="comment-list-content w-100">
									<p>여기에 댓글을 쓴다.</p>

								</div>

								<div class="dropdown comment-menu">
									<button class="btn" id="menu1" type="button"
										data-toggle="dropdown">
										<i class="bi bi-three-dots-vertical"></i><span class="caret"></span>
									</button>
									<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">삭제</a></li>
										<li role="presentation"><a role="menuitem" tabindex="-1"
											href="#">수정</a></li>
									</ul>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col"></div>
	</div>


	<footer class="text-center">
		<span>@2022 MBTI에 진심인 팀 All rights reserved.</span>
	</footer>
</body>
</html>