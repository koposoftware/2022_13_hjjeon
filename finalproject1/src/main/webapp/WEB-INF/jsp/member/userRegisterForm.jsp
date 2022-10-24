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
                                                            <h5>회원가입</h5>
                                                        </div>
                                                        <form action="${pageContext.request. contextPath}/member/userRegister" method="post" class="auth-form" onsubmit="return registerUser()">
                                                            <div class="mb-3">
                                                                <input type="hidden" id="userName" name="name" class="form-control" required id="usernameInput" placeholder="이름을 입력하세요" value="${member.name}">
                                                            </div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-6">
		                                                                <input id="idNumber1" type="hidden" name="idNum1" class="form-control" required id="usernameInput" placeholder="앞자리를 입력하세요" value="${member.idNum1 }">
                                                            		</div>
                                                            			<div class="col-lg-6">
		                                                                <input id="idNumber2" type="hidden" name="idNum2" class="form-control" required id="usernameInput" placeholder="뒷자리를 입력하세요" value="${member.idNum2 }">
                                                            		</div>
                                                            	</div>
                                                            </div>
                                                            <div class="mb-3">
                                                                <input id="number" type="hidden" name="number" class="form-control" required id="emailInput" placeholder="휴대폰 번호를 입력하세요" value="${member.number}">
                                                            </div>
                                                         	 <div class="mb-3">
                                                                <input id="email" type="hidden" id="userEmail"name="email" class="form-control" required id="emailInput" placeholder="Enter your email" value="${member.email}">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="usernameInput" class="form-label">아이디</label>
                                                                <input type="text" id="userName" name="id" class="form-control" required id="usernameInput" placeholder="아이디를 입력하세요">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="usernameInput" class="form-label">비밀번호</label>
                                                                <input type="password" id="password" name="password" class="form-control" required id="usernameInput" placeholder="비밀번호를 입력하세요">
                                                            </div>
                                                            <div class="mb-3">
                                                                <input type="password" id="password2" name="password2" class="form-control" required id="usernameInput" placeholder="한번더입력하세요">
                                                            </div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-6">
		                                                                <label for="usernameInput" class="form-label">주소</label>
		                                                                <input id="sample6_postcode" type="text" name="addressNum" class="form-control" required id="usernameInput" placeholder="우편번호">
                                                            		</div>
                                                            		<div class="col-lg-6">
		                                                                <button type="button"  class="btn btn-white btn-hover w-100" id="searchPost" onclick="sample6_execDaumPostcode()">우편번호찾기</button>
	                                                            	</div>
                                                            	</div>
                                                            </div>
                                                            	<div class="mb-3">
                                                                	<input type="text" id="sample6_address" name="basicAddress" class="form-control" required id="usernameInput" placeholder="기본주소">
                                                            	</div>
                                                            <div class="mb-3">
                                                            	<div class="row align-items-end">
                                                            		<div class="col-lg-7">
		                                                                <input id="sample6_detailAddress" type="text" name="detailAddress" class="form-control" required id="usernameInput" placeholder="상세주소">
                                                            		</div>
                                                            		<div class="col-lg-5">
		                                                                <input id="sample6_extraAddress" type="text" name="detailAddress2" class="form-control" required id="usernameInput" placeholder="참고">
	                                                            	</div>
                                                            	</div>
                                                            </div>
                                                            <div class="text-center">
                                                                <button type="submit" class="btn btn-white btn-hover w-100">회원가입하기</button>
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
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }			
		</script>
	
    </body>
</html>
