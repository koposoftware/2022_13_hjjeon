<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

    <head>
        
        
        <meta charset="utf-8" />
        <title>하나건물주</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content=" " />
        <meta name="keywords" content="" />
        <meta content="Pichforest" name="author" />

        <!-- App favicon -->
        <link rel="shortcut icon" href="/finalproject1/resources/images/favicon.ico">

        <!-- Choise Css -->
        <link rel="stylesheet" href="/finalproject1/resources/libs/choices.js/public/assets/styles/choices.min.css">

        <!-- Swiper Css -->
        <link rel="stylesheet" href="/finalproject1/resources/libs/swiper/swiper-bundle.min.css">

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
 


            <!-- START TOP-BAR -->
            <div class="top-bar" style="background: white;">
                <div class="container-fluid custom-container">
                    <div class="row g-0 align-items-center">
                        <div class="col-md-7">
                          <!--   <ul class="list-inline mb-0 text-center text-md-start">
                                <li class="list-inline-item">
                                    <p class="fs-13 mb-0"> <i class="mdi mdi-map-marker"></i> Your Location: <a href="javascript:void(0)" class="text-dark">New Caledonia</a></p>
                                </li>
                                <li class="list-inline-item">
                                    <ul class="topbar-social-menu list-inline mb-0">
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="social-link"><i
                                                    class="uil uil-whatsapp"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="social-link"><i
                                                    class="uil uil-facebook-messenger-alt"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="social-link"><i
                                                    class="uil uil-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="social-link"><i
                                                    class="uil uil-envelope"></i></a></li>
                                        <li class="list-inline-item"><a href="javascript:void(0)" class="social-link"><i
                                                    class="uil uil-twitter-alt"></i></a></li>
                                    </ul>
                                </li>
                            </ul> -->
                        </div>
                        <!--end col-->
                        <div class="col-md-5">
                            <ul class="list-inline mb-0 text-center text-md-end">
                                <li class="list-inline-item py-2 me-2 align-middle">
                                    <c:if test="${ not empty loginVO }">
	                                    <a href="${pageContext.request.contextPath}/member/logout" class="text-dark fw-medium fs-13" ><i class="uil uil-lock"></i>
	                                        로그아웃</a>
                                    </c:if>
                                    <c:if test="${ empty loginVO }">
	                                    <a href="#signupModal" class="text-dark fw-medium fs-13" data-bs-toggle="modal"><i class="uil uil-lock"></i>
	                                        로그인</a>
                                    </c:if>
                                </li>
                                <li class="list-inline-item align-middle">
                                    <div class="dropdown d-inline-block language-switch">
                                        <button type="button" class="btn" data-bs-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <a href="#" class="text-dark fw-medium fs-13"> 고객센터</a>
                                        </button>
                     <!--                    <div class="dropdown-menu dropdown-menu-end">
                                            item
                                            <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="eng">
                                                <img src="/finalproject1/resources/images/flags/us.jpg" alt="user-image" class="me-1" height="12" />
                                                <span class="align-middle">English</span>
                                            </a>
                                            item
                                            <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="sp">
                                                <img src="/finalproject1/resources/images/flags/spain.jpg" alt="user-image" class="me-1" height="12" />
                                                <span class="align-middle">Spanish</span>
                                            </a>
                                            item
                                            <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="gr">
                                                <img src="/finalproject1/resources/images/flags/germany.jpg" alt="user-image" class="me-1" height="12" />
                                                <span class="align-middle">German</span>
                                            </a>
                                            item
                                            <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="it">
                                                <img src="/finalproject1/resources/images/flags/italy.jpg" alt="user-image" class="me-1" height="12" />
                                                <span class="align-middle">Italian</span>
                                            </a>
                                            item
                                            <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ru">
                                                <img src="/finalproject1/resources/images/flags/russia.jpg" alt="user-image" class="me-1" height="12" />
                                                <span class="align-middle">Russian</span>
                                            </a>
                                        </div> -->
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--end col-->
                    </div>
                    <!--end row-->
                </div>
                <!--end container-->
            </div>
            <!-- END TOP-BAR -->

            <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg fixed-top sticky" id="navbar">
                <div class="container-fluid custom-container">
                    <a class="navbar-brand text-dark fw-bold me-auto" href="${pageContext.request.contextPath}/">
                        <img src="/finalproject1/resources/images/hanaLogo.png" height="50"  alt="" class="logo-dark" style="margin-bottom: 15px; margin-right: 5px;" />
                        <img src="/finalproject1/resources/images/logo-light.png" height="22" alt="" class="logo-light" />
                    </a>
                     <h3 class="title">하나랜드</h3> 
                    <div>
                        <button class="navbar-toggler me-3" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-label="Toggle navigation">
                            <i class="mdi mdi-menu"></i>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav mx-auto navbar-center">
                        <!--     <li class="nav-item dropdown dropdown-hover">
                                <a class="nav-link" href="javascript:void(0)" id="homedrop" role="button" data-bs-toggle="dropdown">
                                    Home <div class="arrow-down"></div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-center" aria-labelledby="homedrop">
                                    <li><a class="dropdown-item" href="index.html">Home 1</a></li>
                                    <li><a class="dropdown-item" href="index-2.html">Home 2</a></li>
                                    <li><a class="dropdown-item" href="index-3.html">Home 3</a></li>
                                </ul>
                            </li> -->
                            <li class="nav-item dropdown dropdown-hover">
                                <a class="nav-link" href="javascript:void(0)" id="jobsdropdown" role="button" data-bs-toggle="dropdown" style="font-size: 20px;">
                                    투자 하기 <div class="arrow-down" ></div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-center" aria-labelledby="jobsdropdown">
                                    <li><a class="dropdown-item" href="javascript:window.scrollTo( 0, 1600);" style="font-size: 18px;">거래</a></li>
                                    <li><a class="dropdown-item" href="javascript:window.scrollTo( 0, 2430 );" style="font-size: 18px;">청약</a></li>
                                    <li><a id="disposal" class="dropdown-item"   style="font-size: 18px;">매각</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown dropdown-hover">
                                <a class="nav-link" href="javascript:void(0)" id="pagesdoropdown" role="button" data-bs-toggle="dropdown" style="font-size: 20px;">
                                    투자 진단
                                    <div class="arrow-down"></div>
                                </a>
                              	 <ul class="dropdown-menu dropdown-menu-center" aria-labelledby="jobsdropdown">
                                    <li><a class="dropdown-item"  style="font-size: 18px; cursor: pointer;" onclick="getMbtiPage()">투자 MBTI 진단하기</a></li>
                                    <li><a class="dropdown-item"  style="font-size: 18px; cursor: pointer;" onclick="getCardList()">카드 사용내역 연동</a></li>
                                </ul>
                            </li><!--end dropdown-->
                            <li class="nav-item dropdown dropdown-hover">
                                <a class="nav-link" href="javascript:void(0)" id="productdropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 20px;">
											MY 자산
                                    <div class="arrow-down"></div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-center" aria-labelledby="productdropdown">
                                		<li><a id="myAsset" class="dropdown-item"  style="font-size: 18px; cursor: pointer;">내 자산 보기</a></li>
                                    	<li><a id="createAccount" class="dropdown-item"  style="font-size: 18px; cursor: pointer;">계좌개설하기</a></li>
                                </ul>
                            </li><!--end dropdown-->
                            <li class="nav-item">
                                <a href="javascript:window.scrollTo( 0, 750);" class="nav-link" style="font-size: 20px;">서비스 안내</a>
                            </li>
                        </ul><!--end navbar-nav-->
                    </div>
                    <!--end navabar-collapse-->
                   <c:if test="${ not empty loginVO }">
                    <ul class="header-menu list-inline d-flex align-items-center mb-0">
                        <li class="list-inline-item dropdown me-4">
                            <a href="javascript:void(0)" class="header-item noti-icon position-relative" id="notification" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-bell fs-22"></i>
                                <div id="alarmCnt" class="count position-absolute" style="background-color: transparent; border: none;"></div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-end p-0" aria-labelledby="notification">
                                <div class="notification-header border-bottom bg-light"> 
                                    <h6 class="mb-1"> 알림 </h6>
                                    <p id="alarmCtnDetail" class="text-muted fs-13 mb-0"></p>
                                </div>
                                <div id="alarmList" class="notification-wrapper dropdown-scroll">
                    
                                </div><!--end notification-wrapper-->
                                <div class="notification-footer border-top text-center">
                                    <a class="primary-link fs-13" href="javascript:void(0)">
                                        <i class="mdi mdi-arrow-right-circle me-1"></i> <span>더보기...</span>
                                    </a>
                                </div>
                            </div>
                        </li>
                          <i class="fa-solid fa-circle-user" style="font-size: 25px; margin-right: 5px; margin-bottom: 3px;"></i> 
                        <li class="list-inline-item dropdown">
	                            <a href="javascript:void(0)" class="header-item" id="userdropdown" data-bs-toggle="dropdown"
	                                aria-expanded="false">
	 	                               <span class="d-none d-md-inline-block fw-medium">${loginVO.name}님 반갑습니다</span>
	                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userdropdown">
                                <li><a class="dropdown-item" href="manage-jobs.html">Manage Jobs</a></li>
                                <li><a class="dropdown-item" href="bookmark-jobs.html">Bookmarks Jobs</a></li>
                                <li><a class="dropdown-item" href="profile.html">My Profile</a></li>
                                <li><a class="dropdown-item" href="sign-out.html">Logout</a></li>
                            </ul>
                        </li>
                    </ul><!--end header-menu-->
                           </c:if>
                </div>
                <!--end container-->
            </nav>
            <!-- Navbar End -->


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

        <!-- END layout-wrapper -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
		<script type="text/javascript">
		var socket = null;
		if(${loginVO != null}){
			connectWs();
		}
		
		function connectWs(){
			var ws = new SockJS("${pageContext.request.contextPath}/alarm");
			socket = ws;

			ws.onopen = function() {
				 socket.send('${loginVO.id}')
			 };

				ws.onmessage = function(event) {
					let response = JSON.parse(event.data)
					if(response != null){
						if(response.length != 0){
							 $('#alarmList').empty()
						}else{
							$('#alarmCnt').css('background-color','transparent')
							$('#alarmCnt').css('border','none') 
						}
						$('#alarmCtnDetail').text(response.length+"개의 알림이 있습니다")
						var readState
						let a = 0;
						var alarmCnt = 0
						for(let i=0; i<response.length; i++){
							if(response[i].READ_STATE == 'R'){
								readState = '읽음'
							}else{
								readState = '안읽음'
								alarmCnt += 1
							}
							a += 1
							
							var alarm='<a  class="text-dark notification-item d-block" onclick=changeReadState('+response[i].ALARM_NO+','+1+') style="cursor:pointer;">'
							alarm += '<div class="d-flex align-items-center">'
		               		alarm += '<div class="flex-shrink-0 me-3">'
		               		alarm += '<img src="/finalproject1/resources/images/detail/'+response[i].IMAGE_NAME+'" class="rounded-circle avatar-xs" alt="user-pic">' 	
	                        alarm += '</div>'
	                        alarm +=  '<div class="flex-grow-1">' 
	                        alarm += ' <h6 class="mt-0 mb-1 fs-14">'+response[i].ALARM_CONTENT+'</h6>'             
	                        alarm += '<p class="text-muted fs-12 mb-0"><i class="mdi mdi-clock-outline"></i> <span>'+readState+'</span></p>'    
	                        alarm += ' </div></div></a>'     
	                        $('#alarmList').append(alarm)
							if(a == response.length){
								if(alarmCnt == 0){
									$('#alarmCnt').css('background-color','transparent')
									$('#alarmCnt').css('border','none')
								}else{
									$('#alarmCnt').css('background-color', '#da3746')
									$('#alarmCnt').css('border:', '2px solid #fff')
									$('#alarmCnt').text(alarmCnt)
								}
							}
						}
						
					}
			};

				ws.onclose = function() {
				    console.log('close');
			 };

			};
			
			function autoAlarm(){
				if(${loginVO != null}){
					 socket.send('${loginVO.id}')
				}
			}
			
			/* if(${loginVO != null}){
				//autoAlarm();
				setInterval("autoAlarm()",2000)
			}  */
	 	
		
		function getMbtiPage(){
				location.href = '${pageContext.request.contextPath}/mbti/getMbtiPage'
		}
		
		function changeReadState(alarmNo,alarmHref){
			fetch('${pageContext.request.contextPath}/alarm/changeReadState?alarmNo='+alarmNo).then(res=>res.json()).then(response=>{
				if(response != null){
					if(alarmHref == 1){
						   let f = document.createElement('form');
						    let obj;
						    obj = document.createElement('input');
						    obj.setAttribute('type', 'hidden');
						    obj.setAttribute('name', 'userId');
						    obj.setAttribute('value', '${loginVO.id}');
						    
						    f.appendChild(obj);
						    f.setAttribute('method', 'post');
						    f.setAttribute('action', '${pageContext.request.contextPath}/account/myAsset');
						    document.body.appendChild(f);
						    f.submit();
					}else{
						location.href='${pageContext.request.contextPath}/disposal'
					}
				}
			})
		}
		
		
/* 			function getAlarm(){
				fetch('${pageContext.request.contextPath}/getAlarm?customerId=${loginVO.id}').then(res=>res.json()).then(response=>{
					if(response != null){
						if(response.length != 0){
							 $('#alarmList').empty()
						}else{
							$('#alarmCnt').css('background-color','transparent')
							$('#alarmCnt').css('border','none') 
						}
						$('#alarmCtnDetail').text(response.length+"개의 알림이 있습니다")
						var readState
						let a = 0;
						var alarmCnt = 0
						for(let i=0; i<response.length; i++){
							if(response[i].READ_STATE == 'R'){
								readState = '읽음'
							}else{
								readState = '안읽음'
								alarmCnt += 1
							}
							a += 1
							
							var alarm='<a  class="text-dark notification-item d-block" onclick=changeReadState('+response[i].ALARM_NO+','+1+') style="cursor:pointer;">'
							alarm += '<div class="d-flex align-items-center">'
		               		alarm += '<div class="flex-shrink-0 me-3">'
		               		alarm += '<img src="/finalproject1/resources/images/detail/'+response[i].IMAGE_NAME+'" class="rounded-circle avatar-xs" alt="user-pic">' 	
	                        alarm += '</div>'
	                        alarm +=  '<div class="flex-grow-1">' 
	                        alarm += ' <h6 class="mt-0 mb-1 fs-14">'+response[i].ALARM_CONTENT+'</h6>'             
	                        alarm += '<p class="text-muted fs-12 mb-0"><i class="mdi mdi-clock-outline"></i> <span>'+readState+'</span></p>'    
	                        alarm += ' </div></div></a>'     
	                        $('#alarmList').append(alarm)
							if(a == response.length){
								if(alarmCnt == 0){
									$('#alarmCnt').css('background-color','transparent')
									$('#alarmCnt').css('border','none')
								}else{
									$('#alarmCnt').css('background-color', '#da3746')
									$('#alarmCnt').css('border:', '2px solid #fff')
									$('#alarmCnt').text(alarmCnt)
								}
							}
						}
						
					}
				})

			}
			getAlarm()
			 setInterval(getAlarm,2000) */
		

			
		
			$('#myAsset').on('click',function(){
				   let f = document.createElement('form');
				    let obj;
				    obj = document.createElement('input');
				    obj.setAttribute('type', 'hidden');
				    obj.setAttribute('name', 'userId');
				    obj.setAttribute('value', '${loginVO.id}');
				    
				    f.appendChild(obj);
				    f.setAttribute('method', 'post');
				    f.setAttribute('action', '${pageContext.request.contextPath}/account/myAsset');
				    document.body.appendChild(f);
				    f.submit();
				
			})
			
			$('#disposal').on('click',function(){
				location.href="${pageContext.request.contextPath}/disposal"
			})
			
			function getCardList(){
				location.href='${pageContext.request.contextPath}/card'
			}
			
			$('#createAccount').on('click',function(){
				location.href='${pageContext.request.contextPath}/account/applyForm'
			})
			
		</script>


    </body>
</html>