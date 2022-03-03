<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>소크라테스트 - 메인페이지 </title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/img/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" type="text/css" rel="stylesheet" />
        <link href="resources/css/teamProject.css" type="text/css" rel="stylesheet" />
      
    </head>
    <body>
        <!-- Navigation-->
            <jsp:include page= "<%=\"./inc/\".concat(((String)request.getAttribute(\"header\")))%>" />
        <!-- Header-->
        <header class="bg-dark main-header">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">소크라테스트 </h1>
                    <p class="lead fw-normal text-white-50 mb-0">너 자신을 알라! MBTI 통합 사이트 </p>
                </div>
            </div>
        </header>
        <!-- Section-->
        <section class="main-content py-5">
        
         <div class="container px-4 px-lg-5 mt-5 recommend">
         	<div class="h3 text-white">추천 </div>
                <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-3 row-cols-xl-3 justify-content-center">
                    <div class="col mb-3">
                    <a href="./teamA/start">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamA_thumbnail.jpg" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">개발자 유형 테스트  </h5> 
                                </div>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col mb-3">
                         <a href="./teamB/start"><div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamB_thumbnail.png" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">배우자 찾기 테스트 </h5> 
                                </div>
                            </div>
                        </div></a>
                    </div>
                    <div class="col mb-3">
                         <a href="./teamC/start"><div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamC_thumbnail.png" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">맞춤 공부법 테스트 </h5> 
                                </div>
                            </div>
                        </div></a>
                    </div>
                
                   
                  
                </div>
            </div>
            

            <div class="container px-4 px-lg-5 mt-5">
            	<div class="strike pb-5">
				    <span>MBTI 테스트 하기 </span>
				</div>
                <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-2 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamB_thumbnail.png" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"> 배우자 찾기 테스트</h5>
                                    <!-- Product price-->
                                   배우자를 찾고싶다고? 
                                </div>
                                   <!-- Product reviews-->
                                    <div class="d-flex justify-content-center my-2">
                                        <div><i class="bi bi-caret-right"></i>${views[1]}</div>
                                    </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamB/start">테스트하기 </a></div>
                            </div>
                        </div>
                    </div>
                      <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamC_thumbnail.png" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">맞춤 공부법 테스트 </h5>
                                    <!-- Product price-->
                                    나에게 맞는 공부법은?
                                </div>
                                   <!-- Product reviews-->
                                    <div class="d-flex justify-content-center my-2">
                                        <div><i class="bi bi-caret-right"></i>${views[2]}</div>
                                    </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamC/start">테스트하기 </a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamD_thumbnail.jpeg" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">짱구 MBTI </h5>
                                    <!-- Product price-->
                                   내가 짱구 캐릭터라면?
                                </div>
                                   <!-- Product reviews-->
                                    <div class="d-flex justify-content-center my-2">
                                        <div><i class="bi bi-caret-right"></i>${views[3]}</div>
                                    </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamD/start">테스트하기 </a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="resources/img/teamProject/teamE_thumbnail.png" alt="<%=request.getContextPath()%>." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">인관관계 유형별 MBTI </h5>
                                    <!-- Product price-->
                                    나는 어떤 사람일까?
                                </div>
                                   <!-- Product reviews-->
                                    <div class="d-flex justify-content-center my-2">
                                        <div><i class="bi bi-caret-right"></i>${views[4]}</div>
                                    </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="./teamE/start">테스트하기 </a></div>
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
        <script src="resources/js/scripts.js"></script>
    </body>
</html>
