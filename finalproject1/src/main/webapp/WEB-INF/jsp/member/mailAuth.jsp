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
															<div>
																	<img src="/finalproject1/resources/images/hanaLogo.png" height="30"  alt="" class="logo-dark" style="margin-bottom: 15px; margin-right: 5px;" />
																	<h5 class="title" style="color:black; display: inline-block; margin-bottom: 5px ">????????????</h5>
															</div>
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
                                                        <form action="${pageContext.request. contextPath}/member/userRegisterForm" method="post" class="auth-form" onsubmit="return registerUser()">
                                                            <div class="mb-3">
                                                                <label for="usernameInput" class="form-label">??????</label>
                                                                <input type="text" id="userName" name="name" class="form-control" required id="usernameInput" placeholder="????????? ???????????????">
                                                            </div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-6">
		                                                                <label for="usernameInput" class="form-label">????????????</label>
		                                                                <input id="idNum1" type="text" name="idNum1" class="form-control" required id="usernameInput" placeholder="???????????? ???????????????">
                                                            		</div>
                                                            			<div class="col-lg-6">
		                                                                <input id="idNum2" type="password" name="idNum2" class="form-control" required id="usernameInput" placeholder="???????????? ???????????????">
                                                            		</div>
                                                            	</div>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="passwordInput" class="form-label">????????? ??????</label>
                                                                <input id="number" type="text" name="number" class="form-control" required id="emailInput" placeholder="????????? ????????? ???????????????">
                                                            </div>
                                                         	 <div class="mb-3">
                                                                <label for="passwordInput" class="form-label">?????????</label>
                                                                <input id="email" type="email" id="userEmail"name="email" class="form-control" required id="emailInput" placeholder="Enter your email">
                                                            </div>
                                                            <div class="mb-4">
                                                                <div class="form-check"><input  id ="ckBox" class="form-check-input" type="checkbox" id="flexCheckDefault">
                                                                    <label class="form-check-label" for="flexCheckDefault"> <a href="javascript:void(0)" class="text-white text-decoration-underline">???????????? ??? ????????????</a>??? ???????????????</label>
                                                                </div>
                                                            </div>
                                                            <div class="mb-4">
	                                                             <div class="text-center">
	                                                                <button type="button" class="btn btn-white btn-hover w-100" id="mailBtn">???????????? ??????</button>
	                                                            </div>
                                                            </div>
                                                            <div class="mb-3" id="inputAuth">
                                                             <div class="row align-items-end">
	                                                            	<div class="col-lg-6">
		                                                                <input type="text" class="form-control" id="authNum" placeholder="??????????????? ???????????????">
	                                                            	</div>
	                                                            	<div class="col-lg-6">
		                                                                <button type="button"  class="btn btn-white btn-hover w-100" id="checkNum">????????????</button>
	                                                            	</div>
                                                             </div>
                                                            </div>
                                                            <div class="mb-3" id="confirmMsg">
	
                                                            </div>
                                                            <div class="text-center">
                                                                <button type="submit" class="btn btn-white btn-hover w-100">???????????? ????????????</button>
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
		
		<script>
			let authState = "0"
			$(document).ready(function(){
				
				let code = ''
				$("#inputAuth").hide()
				$('#mailBtn').click(function() {
					const email = $('#email').val() 
					
					if($('#userName').val() ==''){
						alert('????????? ???????????????')
						$('#userName').focus()
					}else if($('#idNum1').val() =='' || $('#idNum2').val() =='' ){
						alert('??????????????? ???????????????')
						$('#idNum1').focus()
					}else if($('#number').val() ==''){
						alert('??????????????? ???????????????')
						$('#number').focus()
					}else if($('#email').val() ==''){
						alert('???????????? ???????????????')
						$('#email').focus()
					}else if($('#ckBox').is(':checked') == false){
						alert('???????????? ??? ??????????????? ??????????????????')
					}else{
						$.ajax({
					type : 'get',
					url : '${pageContext.request.contextPath}/member/mailCheck?email='+email, // GET???????????? Url ?????? email??? ???????????????.
					success : function (data) {
						code = data;
						alert('??????????????? ?????????????????????.')
						$("#inputAuth").show()
					}
					})
					}
				})
			
				$('#checkNum').click(function(){
					const authNum = $('#authNum').val()
					if(authNum == code){
						$('#incorrect').remove()
						$('#confirmMsg').append('<p id="correct" style="color:blue">??????????????? ???????????????</p>')
						authState= '1'
					}else{
						$('#correct').remove()
						$('#confirmMsg').append('<p id="incorrect" style="color:red">??????????????? ????????????????????????</p>')
						authState='0'
					}
						
				})
				
				
				
			function sendMail(email){
				
				$.ajax({
					type : 'get',
					url : '${pageContext.request.contextPath}/member/mailCheck?email='+email, // GET???????????? Url ?????? email??? ???????????????.
					success : function (data) {
						code = data;
						alert('??????????????? ?????????????????????.')
						
					}
					})
					return code;
			}
				
			})
			
			function registerUser(){
				if(authState == '1'){
					return true
				}else{
					alert('???????????? ????????? ???????????????')
					return false
				}
			}
			
		</script>
	
    </body>
</html>
