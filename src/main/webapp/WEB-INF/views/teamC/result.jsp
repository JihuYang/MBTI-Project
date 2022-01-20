<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 공유하기 -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="../resources/js/shareProject.js" ></script>

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
<style>
@media only screen and (max-width: 600px) {
  .col{
    width:0%;
  }
  .content{
  	width:100%;
  }
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row text-center">
			<div class="col"></div>
			<div class="col bg-white content">
				
				<div class="wholeBox">
					<div class="box1">
						<img src="../resources/img/teamC/mbti/ESFJ.png" />
						<div class="resultName">
							"공부는 자고로 시끄러워야 하는 법" <br> <span id="resultNick">인싸형
								공부러</span>
						</div>
					</div>
					<div class="box2">
						<div class="resultDesc">
							MBTI에 비유하자면, <span id="MBTI">ESFJ</span>에 가까운?
						</div>
					</div>
				</div>


				<div class="wholeBox box3">
					<div class="feature">
						<div class="featureText">특징</div>
						<ul>
							<li>사람들과 만나며 스트레스를 해소하는 스타일</li>
							<li>단순 암기에 강함!</li>
							<li>의사 소통하며 공부하는 것 좋아함</li>
						</ul>
					</div>
				</div>

				<div class="wholeBox box3">
					<div class="weakness">
						<div class="weaknessText">약점</div>
						<ul>
							<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
							<li>냉철하지 못해 손해보는 경우 발생</li>
							<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
						</ul>
					</div>
				</div>

				<div class="wholeBox box4">
					<div class="smtitle method">찰떡 공부법!</div>
					<ul>
						<li>다른 사람을 챙기다보니 자신을 소홀히 하기 쉬움</li>
						<li>냉철하지 못해 손해보는 경우 발생</li>
						<li>한꺼번에 많은 양을 공부하면 집중력 약해짐</li>
					</ul>
				</div>
				<div class="wholeBox box5">
					<div class="smtitle study">찰떡 파트너!</div>
					<div class="mbtiPartner">ESTJ. ESFJ. ENFJ. ISTJ</div>
				</div>

				<div class="wholeBox box6">
					<div class="smtitle place">찰떡 공부장소!</div>
					<div class="studyPlace">같이하자! 스터디 카페</div>
				</div>
				<div class="wholeBox two_btn re_btn" onclick="moveTo()">다시하기</div>
				<div class="wholeBox two_btn sv_btn">저장하기</div>

				<div class="shareBtn">
				<button class="sharebtn-kakao" type="button" onclick="sendLinkCustom();"><img  src="../resources/img/teamC/kakaoLogo.png" /></button>
					<button class="sharebtn-link" type="button" onclick="copyLink('여기에 링크를 넣어주세요');"><img src="../resources/img/teamC/copyLink.png"/></button>
				
				</div>
				<div>
					<br> <br> <br>
				</div>
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
							<div class="comment-list-content" style= "width:300px">
								<p>여기에 댓글을 쓴다.이렇게 길게 쓰면 어떻게 될지 궁금해서 길게 써보는데 왠지 안 예쁠 것 같다...
									음 점점</p>

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
					<div style="padding-top: 100px;"></div>

				</div>
			</div>
			<div class="col"></div>
		</div>

	</div>
	<footer class="text-center">
		<span class="align-middle">@2022 MBTI에 진심인 팀 All rights
			reserved.</span>
	</footer>
	<script>
	function moveTo(){
		location.href="start";
	}
	</script>
</body>

</html>