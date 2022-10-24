<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        
        
        <meta charset="utf-8" />
        <title>하나랜드</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content=" " />
        <meta name="keywords" content="" />
        <meta content="Pichforest" name="author" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="/finalproject1/resources/images/favicon.ico">

        <!-- Choise Css -->
        <link rel="stylesheet" href="/finalproject1/resources/libs/choices.js/public/assets/styles/choices.min.css">

        <!-- Bootstrap Css -->
        <link href="/finalproject1/resources/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/finalproject1/resources/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/finalproject1/resources/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!--Custom Css-->
        <script src="https://kit.fontawesome.com/6bcbeb2a29.js" crossorigin="anonymous"></script>

    </head>

    <body>
         <!--start page Loader -->
         <div id="preloader">
            <div id="status">
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ul>
            </div>
        </div>
        <!--end page Loader -->

        <!-- Begin page -->
        <div>

           <jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
            
            
            <div class="main-content" style="height: 800px;">

                <div class="page-content" style="height: 200px;">

                    <!-- Start home -->
                    <section class="page-title-box" style="background-color: white; padding: 170px;">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-6">
                                    <div class="text-center text-white">
                                        <h3 class="mb-4" style="color: black">계좌개설</h3>
                                    </div>
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                        </div>
                        <!--end container-->
                      <hr style="color: black; height: 2px;">
                    </section>
                    <!-- end home -->

                    <!-- START SHAPE -->
            
                    </div>
                    <!-- END SHAPE -->


                    <!-- START SERVICE-PAGE --> 
                    <section class="section" style="margin-top: 80px;">
                        <div class="container">
                            <div class="row justify-content-center" style="margin-bottom: 120px;">
                                <div class="col-lg-10">
                                    <div class="section-title text-center">
                                        <h4 class="title mb-4">계좌 개설이 완료되었어요!</h4>
                                        <h4 class="title mb-6">하나랜드에서 빌딩을 소유해 보아요!</h4>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                            
                           <div class="mt-4" style="display: flex; justify-content: center; ">
                                        <a href="${pageContext.request.contextPath}/" class="btn btn-primary btn-hover mt-2"><i class="uil uil-rocket me-1"></i> 빌딩사러 가기</a>
                            </div>  
                    	
                        </div><!--end container-->
                    </section>
                    <!-- END SERVICE-PAGE -->

                </div>
                <!-- End Page-content -->
                <jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
                
                            <!-- START SIGN-UP MODAL -->
            <div class="modal fade" id="signupModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body p-5">
                            <div class="position-absolute end-0 top-0 p-3">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="auth-content">
                                <div class="w-100">
                                    <div class="text-center mb-4">
                                        <h5>로그인</h5>
                                    </div>
                                    <form action="${pageContext.request.contextPath}/member/login" class="auth-form" method="post">
                                        <div class="mb-3">
                                            <label for="usernameInput" class="form-label">아이디</label>
                                            <input type="text" class="form-control" id="usernameInput" name="id" placeholder="아이디를 입력하세요">
                                        </div>
                                        <div class="mb-3">
                                            <label for="emailInput" class="form-label">비밀번호</label>
                                            <input type="password" class="form-control" id="passwordInput" name="password" placeholder="비밀번호를 입력하세요">
                                        </div>
                                        <!-- <div class="mb-4">
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">I agree to the <a href="javascript:void(0)" class="text-primary form-text text-decoration-underline">Terms and conditions</a></label>
                                            </div>
                                        </div> -->
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary w-100" style="background-color: #089995; border-color: #089995;">로그인하기</button>
                                        </div>
                                    </form>
                                    <div class="mt-3 text-center">
                                        <p class="mb-0">회원이 아니신가요? <a href="${ pageContext.request.contextPath}/member/mailAuth" class="form-text  text-decoration-underline" style="color:#089995;"> 회원가입하러가기 </a></p>
                                    </div>
                                </div>
                            </div>
                        </div><!--end modal-body-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div>
            <!-- END SIGN-UP MODAL -->

                <!-- Style switcher -->
                <div id="style-switcher" onclick="toggleSwitcher()" style="left: -165px;">
                    <div>
                        <h6>Select your color</h6>
                        <ul class="pattern list-unstyled mb-0">
                            <li>
                                <a class="color-list color1" href="javascript: void(0);" onclick="setColorGreen()"></a>
                            </li>
                            <li>
                                <a class="color-list color2" href="javascript: void(0);" onclick="setColor('blue')"></a>
                            </li>
                            <li>
                                <a class="color-list color3" href="javascript: void(0);" onclick="setColor('purple')"></a>
                            </li>
                        </ul>
                        <div class="mt-3">
                            <h6>Light/dark Layout</h6>
                            <div class="text-center mt-3">
                                <!-- light-dark mode -->
                                <a href="javascript: void(0);" id="mode" class="mode-btn text-white rounded-3">
                                    <i class="uil uil-brightness mode-dark mx-auto"></i>
                                    <i class="uil uil-moon mode-light"></i>
                                </a>
                                <!-- END light-dark Mode -->
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <a href="javascript: void(0);" class="settings rounded-end"><i class="mdi mdi-cog mdi-spin"></i></a>
                    </div>
                </div>
                <!-- end switcher-->

                <!--start back-to-top-->
                <button onclick="topFunction()" id="back-to-top">
                    <i class="mdi mdi-arrow-up"></i>
                </button>
                <!--end back-to-top-->
            </div>
            <!-- end main content-->
		
        </div>
        <!-- END layout-wrapper -->

        <!-- JAVASCRIPT -->
        <script src="/finalproject1/resources/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


        <!-- Choice Js -->
        <script src="/finalproject1/resources/libs/choices.js/public/assets/scripts/choices.min.js"></script>

        <!-- Switcher Js -->
        <script src="/finalproject1/resources/js/pages/switcher.init.js"></script>

        <script src="/finalproject1/resources/js/app.js"></script>

    </body>
</html>