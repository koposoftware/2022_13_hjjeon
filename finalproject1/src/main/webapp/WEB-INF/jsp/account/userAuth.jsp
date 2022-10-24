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
                                        <h3 class="mb-4" style="color: black">본인 인증</h3>
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
                    			<form>
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
                                                                
                                                              <h5 class="fs-17 fw-semibold mb-3 mb-0">휴대폰 인증</h5>
                                                                <div class="mb-3"> 
                                                                	<div class="row align-items-end">
                                                                		 <div class="col-lg-6">
		                                                                        <label for="email" class="form-label">휴대폰 번호</label>
		                                                                        <input type="text" class="form-control" id="email" value="01099791943" disabled="disabled"/>
		                                                                </div>		
		                                                                <div class="col-lg-6">
																				<a id="sendAuth" class="primary-link"><h5 class="fs-17 mb-1" style="text-decoration: underline; cursor: pointer;">인증번호 보내기</h5></a>
				                                                       </div>
                                                                	</div>
                                                                </div>
                                                                 <div id="phoneAuthSection"  class="mb-3" style="display: none;"> 
                                                                	<div class="row align-items-end">
                                                                		 <div class="col-lg-6">
		                                                                        <input id="phoneAuthInput" type="text" class="form-control" value=""  placeholder="인증번호를 입력해주세요"/>
		                                                                </div>		
		                                                                <div class="col-lg-6">
																				<a id="checkPhoneAuth" class="primary-link"><h5 class="fs-17 mb-1" style="text-decoration: underline; cursor: pointer;">인증확인</h5></a>
				                                                       </div>
                                                                	</div>
                                                                </div>
                                                                		<h5 class="fs-17 fw-semibold mb-3 mb-0">신분증 인증</h5>
                                                                      <div id="idNumAuthSection" class="mb-3">
				                                                            	<div class="row align-items-end">
				                                                            		<div class="col-lg-6">
						                                                                <label for="usernameInput" class="form-label">신분증을 업로드해주세요</label>
						                                                                <input id="input_image" type="file" name="accountPassword" class="form-control"  multiple="multiple"  placeholder="신분증을 업로드해주세요" onchange="uploadFile()">
				                                                            		</div>
				                                                            	</div>
                                                                    </div>
                                                                    <div id="idNumAuthSection2" class="mb-3" style="display: none;">
				                                                            	<div class="row align-items-end">
				                                                            		<div class="col-lg-6" style="display: flex; align-items: center;" >
				                                                            			<div style="margin-right: 10px;">
							                                                                <input id="idNum1" type="text" name="accountPassword" class="form-control"  multiple="multiple" disabled="disabled">
				                                                            			</div>
				                                                            			<div style="font-size: 20px;">-</div>
				                                                            			<div style="margin-left: 10px;">
							                                                                <input id="idNum2" type="text" name="accountPassword" class="form-control"  multiple="multiple" disabled="disabled">
				                                                            			</div>
				                                                            		</div>
				                                                            		<div class="col-lg-6">
																							<a  class="primary-link" onclick="uploadfile1()"><h5 class="fs-17 mb-1" style="text-decoration: underline; cursor: pointer;">인증확인</h5></a>
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
                                                       
                                                        
                                                    </form>
                                                    <div class="mt-4 text-end">
																<button id="next"  type="button" class="btn btn-primary btn-hover mt-2 ms-md-2"  disabled="disabled" onclick="next()">다음으로 이동</button>
                                                        </div>
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
		let idNum = ''
		function uploadFile(){
	           var form = new FormData();
	             form.append("file1", $("#input_image")[0].files[0]);
	           
	           $.ajax({
	            type: 'post',
	            url : '${ pageContext.request.contextPath }/uploadfile/',
	            dataType: "json",
	            data : form,
	            processData: false,
	            contentType: false,
	            cache: false,
	            success : function(result){
	            	response = JSON.parse(result)
	           		idNum = response.images[0].fields[2].inferText
	           		let idNumSplit = (response.images[0].fields[2].inferText).split('-')
	           		$('#idNum1').val(idNumSplit[0])
	           		$('#idNum2').val(idNumSplit[1])
	           		$('#idNumAuthSection2').show()
	            },
	            error : function () {
	               alert('실패')               
	            }
	         })

		}
		function next(){
			location.href = '${pageContext.request.contextPath}/account/confirmForm'
		}
		
		let phoneCode;
		
		$('#sendAuth').on('click',function(){
			fetch('${pageContext.request.contextPath}/account/sendPhoneAuth?phoneNumber=01099791943').then(res=>res.json()).then(response=>{
				 phoneCode = response
				$('#phoneAuthSection').show()
			})
		})
		
		$('#checkPhoneAuth').on('click',function(){
			if($('#phoneAuthInput').val() == phoneCode){
				$('#phoneWrong').hide()
				$('#phoneAuthSection').append('<div id="phoneCorrect" style="color: #47C83E;">인증 완료되었습니다.</div>')
			}else{
				$('#phoneCorrect').hide()
				$('#phoneAuthSection').append('<div id="phoneWrong" style="color: red;">인증번호가 일치하지 않습니다.</div>')
			}
		})
		
		
		$(document).ready(function() {
		   	
			$('#check4').on('click',function(){
				if ( $(this).prop('checked') ) {
					$('#next').removeAttr("disabled");
				} else {
					$('#next').attr("disabled",true);
			      }
			})
			
    });
	      function uploadfile1() {   
	    	  fetch('${pageContext.request.contextPath}/checkIdNum').then(res=>res.json()).then(response1=>{
         			if(response1.idNum == idNum){
         				$('#idNumWrong').hide()
	    				$('#idNumAuthSection2').append('<div id="idNumCorrect" style="color: #47C83E;">인증 완료되었습니다.</div>')
         			}else{
         				$('#idNumCorrect').hide()
	    				$('#idNumAuthSection2').append('<div id="idNumWrong" style="color: red;">잘못된 인증입니다.</div>')
         			}
         		})
	   }

		</script>
    </body>
</html>