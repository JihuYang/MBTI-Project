<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>소크라테스 - 마이페이지 </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet" />
        <link href="resources/css/teamProject.css" type="text/css" rel="stylesheet" />

  		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      
      
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="./index">소크라테스트</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi bi-box-arrow-in-right"></i>
                           로그인 
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark main-header">
            <div class="container px-4 px-lg-5 mb-3">
            </div>
        </header>
       
        <!-- Section-->
        <section class="my-content py-5">
         <div class="container px-4 px-lg-5 mt-5 text-center">
         	<div class="form-signin">
			  <form>
			    <img class="mb-4 rounded-circle border border-dark" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="" width="150" height="150">
			   
			    <div class="mb-3 row">
				    <label for="staticNickname" class="col-sm-2 col-form-label mypage-label">닉네임 </label>
				    <div class="col-sm-10">
				      <input type="text" readonly class="form-control-plaintext border border-secondary rounded p-3" id="staticNickname" value="산동동산 " disabled>
				    </div>
				  </div>
			     <div class="mb-3 row">
				    <label for="staticMBTI" class="col-sm-2 col-form-label mypage-label">MBTI </label>
				    <div class="col-sm-10">
				      <input type="text" readonly class="form-control-plaintext border border-secondary rounded p-3" id="staticMBTI" value="ISFP " disabled>
				    </div>
				  </div>
			
			    <button id="myPage-btn" class="w-50 btn btn-lg btn-dark mt-2" type="submit" onclick="change()" value="수정">수정</button>
			  </form>
			</div>
			         	
          
            </div>
            

            <div class="container px-4 px-lg-5 my-5">
            	<div class="strike pb-5">
				    <span>지난 테스트 결과 </span>
				</div>
                <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-4 justify-content-left bg-light">
                    <div class="col my-3">
                        <div class="card h-100">
                        <!— Date badge—>
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">2021-01-18</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamA_thumbnail.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">개발자 유형 테스트  </h5>
                            
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamA/result">내 결과 보기 </a></div>
                            </div>
                        </div>
                    </div>
                      <div class="col my-3">
                        <div class="card h-100">
                        <!— Date badge—>
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">2021-01-18</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamC_thumbnail.png" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">맞춤 공부법 테스트 </h5>
                               
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamC/result">내 결과 보기 </a></div>
                            </div>
                        </div>
                    </div>
                    
                   
                  
                </div>
            </div>
        </section>
       
       
       
        <!-- Footer-->
        <footer class="py-3 bg-dark main-footer">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; MBTI에 진심인 팀 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>
    </body>
</html>
