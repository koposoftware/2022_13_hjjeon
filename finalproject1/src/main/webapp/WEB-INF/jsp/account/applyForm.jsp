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
            
            
            <div class="main-content">

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
                    <section class="section">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-6">
                                    <div class="section-title text-center">
                                        <h4 class="title mb-4">하나은행 계좌 개설 후</h4>
                                        <h4 class="title mb-4">하나랜드 서비스를 이용할 수 있어요</h4>
                                        <p class="text-muted">계좌 개설에는 신분증 또는 운전면허증이 필요해요</p>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                            
                            <div class="row justify-content-center" style="margin-left: 20px; " >
                            
                                <div class="col-lg-4 col-md-6" style="border: 1px gray solid; margin: 5px;">
                                    <div class="card service-box mt-4">
                                        <div class="card-body p-4">
                                            <div class="service-icon icons-md">
                                                <i class="fa-solid fa-money-check-dollar" style="font-size: 35px; color: #008485"></i>
                                            </div>
                                            <div class="mt-4">
                                                <h5>기존 하나은행 계좌를 소유하고 있어요</h5>
                                                <p class="text-muted">소유하고 계신 하나은행 계좌를 연동해서 하나랜드 서비스를 이용할 수 있어요</p>
                                            </div>
                                            <div class="learn-more">
                                                <a href="javascript:void(0)" class="form-text">계좌 연동하기 <i class="uil uil-angle-right-b"></i></a>
                                            </div>
                                        </div>
                                        
                                    </div><!--end service-->
                                </div><!--end col-->

                                <div class="col-lg-4 col-md-6 justify-content-cente" style="border: 1px gray solid; margin: 5px;">
                                    <div class="card service-box mt-4">
                                        <div class="card-body p-4">
                                            <div class="service-icon icons-md">
                                                <i class="fa-solid fa-pen-to-square"  style="font-size: 35px; color: #008485"></i>
                                            </div>
                                            <div class="mt-4">
                                                <h5>하나은행 계좌를 소유하고 있지 않아요</h5>
                                                <p class="text-muted">계좌개설을 통해 하나은행 계좌를 개설 후 하나랜드 서비스를 이용할 수 있어요</p>
                                                <div class="learn-more">
                                                    <a href="${pageContext.request.contextPath}/account/signForm" class="form-text">계좌 개설하기 <i class="uil uil-angle-right-b"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!--end service-->
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    <!-- END SERVICE-PAGE -->

                </div>
                <!-- End Page-content -->
                <jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>

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