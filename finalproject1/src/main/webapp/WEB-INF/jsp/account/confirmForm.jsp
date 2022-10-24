<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        
        
        <meta charset="utf-8" />
        <title>FAQ'S | Jobvia - Job Listing Template | Pichforest</title>
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
		<link href="/finalproject1/resources/signature-pad-main//assets/jquery.signaturepad.css" rel="stylesheet">
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

                <div class="page-content">

         		      <section class="page-title-box" style="background-color: white; padding: 170px; padding-bottom: 0px;">
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
                    <section class="section" style="padding-top: 30px;">
                   		<div class="container">
                            <div class="row justify-content-center">
                    			<form action="${pageContext.request.contextPath }/account/accountComplete" method="post">
                                                        <div>
                                                            <h5 class="fs-17 fw-semibold mb-3 mb-0">계정정보</h5>
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label for="firstName" class="form-label">이름</label>
                                                                        <input type="text" class="form-control" id="firstName"
                                                                            value="${loginVO.name}" name="name" disabled="disabled"/>
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label for="lastName" class="form-label">생년월일</label>
                                                                        <input type="text" class="form-control" id="lastName"
                                                                            value="${loginVO.idNum1}" name="idNum1" disabled="disabled"/>
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                                <!--end col-->
                                                                      <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label for="email" class="form-label">아이디</label>
                                                                        <input type="text" class="form-control" id="email"
                                                                            value="${loginVO.id}"  disabled="disabled" />
                                                                            <input type="hidden" class="form-control"
                                                                            value="${loginVO.id}" name="id"/>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label for="email" class="form-label">이메일</label>
                                                                        <input type="text" class="form-control" id="email"
                                                                            value="${loginVO.email}" name="email" disabled="disabled"/>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="col-lg-12">
                                                                    <div class="mb-3">
                                                                        <label for="email" class="form-label">주소</label>
                                                                        <input type="text" class="form-control" id="email"
                                                                            value="${loginVO.address}" disabled="disabled"/>
                                                                    </div>
                                                                </div>
                                                                
                                                              <h5 class="fs-17 fw-semibold mb-3 mb-0">계좌정보</h5>
                                                                 <div class="col-lg-12">
                                                                    <div class="mb-3">
                                                                        <label for="email" class="form-label">신청계좌</label>
                                                                        <input type="text" class="form-control" id="email"
                                                                            value="하나랜드종합투자계좌" disabled="disabled"/>
                                                                    </div>
                                                                </div>
                                                                      <div class="mb-3">
				                                                            	<div class="row align-items-end">
				                                                            		<div class="col-lg-6">
						                                                                <label for="usernameInput" class="form-label">계좌 비밀번호</label>
						                                                                <input id="idNum1" type="password" name="accountPassword" class="form-control" required id="usernameInput" placeholder="비밀번호 4자리를 입력해 주세요">
				                                                            		</div>
				                                                            			<div class="col-lg-6">
						                                                                <input id="idNum2" type="password" name="password2" class="form-control" required id="usernameInput" placeholder="한 번더 입력하세요"/>
				                                                            		</div>
				                                                            	</div>
                                                                    </div>
                                                                </div>
                                                                <!--end col-->
                                                            </div>
                                                           <div style="display: flex; justify-content: center; margin-top: 10px;">
																 <div class="form-check mb-2 justify-content-center">
						                                                <input class="form-check-input" type="checkbox" value="" id="check4" />
						                                                <label class="form-check-label ms-2" for="education">하나랜드 서비스 이용약관 및 개인정보취급방침에 동의합니다</label>
			                                                	</div>
													       </div>
                                                       
                                                        <div class="mt-4 text-end">
																<button id="next"  type="submit" class="btn btn-primary btn-hover mt-2 ms-md-2"  disabled="disabled">계좌개설하기</button>
                                                        </div>
                                                    </form>
                                                            <!--end row-->
                                                   				 </div>
                                                    	</div>
                                                </section>
                                                    

                </div>
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

        <!-- END layout-wrapper -->

        <!-- JAVASCRIPT -->
        <script src="/finalproject1/resources/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


        <!-- Switcher Js -->
        <script src="/finalproject1/resources/js/pages/switcher.init.js"></script>

        <script src="/finalproject1/resources/js/app.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		 <script src="/finalproject1/resources/signature-pad-main/assets/json2.min.js"></script>
		 <script src="/finalproject1/resources/signature-pad-main/jquery.signaturepad.js"></script>
		<script>
		$(document).ready(function() {
		   	
			$('#check4').on('click',function(){
				if ( $(this).prop('checked') ) {
					$('#next').removeAttr("disabled");
				} else {
					$('#next').attr("disabled",true);
			      }
			})
			
    });
		
		</script>
    </body>
</html>
