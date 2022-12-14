<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

    <head>
        
        
        <meta charset="utf-8" />
        <title>Sign Up | Jobvia - Job Listing Template | Pichforest</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content=" " />
        <meta name="keywords" content="" />
        <meta content="Pichforest" name="author" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="/finalproject1/resources/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="/finalproject1/resources/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/finalproject1/resources/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/finalproject1/resources/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!--Custom Css-->

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

            
            <div class="main-content">

                <div class="page-content">

                    <!-- START SIGN-UP -->
                    <section class="bg-auth">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-xl-10 col-lg-12">
                                    <div class="card auth-box">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6 text-center">
                                                <div class="card-body p-4">
                                                    <a href="index.html">
                                                        <img src="/finalproject1/resources/images/logo-light.png" alt="" class="logo-light">
                                                        <img src="/finalproject1/resources/images/logo-dark.png" alt="" class="logo-dark">
                                                    </a>
                                                    <div class="mt-5">
                                                        <img src="/finalproject1/resources/images/auth/sign-up.png" alt="" class="img-fluid">
                                                    </div>
                                                </div>
                                            </div><!--end col-->
                                            <div class="col-lg-6">
                                                <div class="auth-content card-body p-5 text-white" style="background-color: #089995;">
                                                    <div class="w-100">
                                                        <div class="text-center">
                                                            <h5>????????????</h5>
                                                        </div>
                                                        <form action="${pageContext.request. contextPath}/member/userRegister" method="post" class="auth-form" onsubmit="return registerUser()">
                                                            <div class="mb-3">
                                                                <input type="hidden" id="userName" name="name" class="form-control" required id="usernameInput" placeholder="????????? ???????????????" value="${member.name}">
                                                            </div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-6">
		                                                                <input id="idNumber1" type="hidden" name="idNum1" class="form-control" required id="usernameInput" placeholder="???????????? ???????????????" value="${member.idNum1 }">
                                                            		</div>
                                                            			<div class="col-lg-6">
		                                                                <input id="idNumber2" type="hidden" name="idNum2" class="form-control" required id="usernameInput" placeholder="???????????? ???????????????" value="${member.idNum2 }">
                                                            		</div>
                                                            	</div>
                                                            </div>
                                                            <div class="mb-3">
                                                                <input id="number" type="hidden" name="number" class="form-control" required id="emailInput" placeholder="????????? ????????? ???????????????" value="${member.number}">
                                                            </div>
                                                         	 <div class="mb-3">
                                                                <input id="email" type="hidden" id="userEmail"name="email" class="form-control" required id="emailInput" placeholder="Enter your email" value="${member.email}">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="usernameInput" class="form-label">?????????</label>
                                                                <input type="text" id="userName" name="id" class="form-control" required id="usernameInput" placeholder="???????????? ???????????????">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="usernameInput" class="form-label">????????????</label>
                                                                <input type="password" id="password" name="password" class="form-control" required id="usernameInput" placeholder="??????????????? ???????????????">
                                                            </div>
                                                            <div class="mb-3">
                                                                <input type="password" id="password2" name="password2" class="form-control" required id="usernameInput" placeholder="????????????????????????">
                                                            </div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-6">
		                                                                <label for="usernameInput" class="form-label">??????</label>
		                                                                <input id="sample6_postcode" type="text" name="addressNum" class="form-control" required id="usernameInput" placeholder="????????????">
                                                            		</div>
                                                            		<div class="col-lg-6">
		                                                                <button type="button"  class="btn btn-white btn-hover w-100" id="searchPost" onclick="sample6_execDaumPostcode()">??????????????????</button>
	                                                            	</div>
                                                            	</div>
                                                            </div>
                                                            	<div class="mb-3">
                                                                	<input type="text" id="sample6_address" name="basicAddress" class="form-control" required id="usernameInput" placeholder="????????????">
                                                            	</div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-7">
		                                                                <input id="sample6_detailAddress" type="text" name="detailAddress" class="form-control" required id="usernameInput" placeholder="????????????">
                                                            		</div>
                                                            		<div class="col-lg-5">
		                                                                <input id="sample6_extraAddress" type="text" name="detailAddress2" class="form-control" required id="usernameInput" placeholder="??????">
	                                                            	</div>
                                                            	</div>
                                                            </div>
                                                            <div class="text-center">
                                                                <button type="submit" class="btn btn-white btn-hover w-100">??????????????????</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div><!--end col-->
                                        </div><!--end row-->
                                    </div><!--end auth-box-->
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    <!-- END SIGN-UP -->
                    
                </div>
                <!-- End Page-content -->

            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

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

        <!-- JAVASCRIPT -->
        <script src="/finalproject1/resources/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


        <!-- Switcher Js -->
         <script src="/finalproject1/resources/js/pages/switcher.init.js"></script>
		 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		
    	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
		<script>
		function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
	                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                var addr = ''; // ?????? ??????
	                var extraAddr = ''; // ???????????? ??????
	                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
	                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
	                    addr = data.roadAddress;
	                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
	                    addr = data.jibunAddress;
	                }
	                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
	                if(data.userSelectedType === 'R'){
	                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // ???????????? ??????, ??????????????? ?????? ????????????.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // ????????? ??????????????? ?????? ????????? ?????????.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // ????????? ???????????? ????????? ????????????.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }			
		</script>
	
    </body>
</html>
