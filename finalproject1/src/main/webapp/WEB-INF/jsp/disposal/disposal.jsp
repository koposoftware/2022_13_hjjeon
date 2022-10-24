<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<link href="/finalproject1/resources/signature-pad-main/assets/jquery.signaturepad.css" rel="stylesheet">
		
		<link rel="stylesheet" href="/finalproject1/resources/libs/choices.js/public/assets/styles/choices.min.css">

<!-- Light Box Css -->
		<link rel="stylesheet" href="/finalproject1/resources/libs/glightbox/css/glightbox.min.css">

		<link rel="stylesheet" href="/finalproject1/resources/libs/swiper/swiper-bundle.min.css">
		
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<style type="text/css">
				.voteBtn {
					border: none; 
					background-color: white; 
					color: #BDBDBD; 
					padding-left: 0;
				}
				.voteIcon {
					color:#BDBDBD; 
					cursor: pointer;
				}
		</style>
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

         		
                    <!-- end home -->
                    <div class="container" style="margin-top: 200px;">
						<h3 style="color: black"> 매각 진행중인 건물
							<c:if test="${not empty completeDisposal}">
								<i class="fa-solid fa-building-circle-exclamation" style="color: #DC5E64; margin-left: 10px;"></i>
							</c:if>
							<c:if test="${empty completeDisposal}">
								<i class="fa-solid fa-building-circle-exclamation fa-beat" style="color: #DC5E64; margin-left: 10px;"></i>
							</c:if>
						</h3>
						<hr style="color: black; height: 2px;">
                    </div>
                    <!-- COMPANY TESTIMONIAL START -->
                    <c:choose>
                    	<c:when test="${not empty disposalProperty}">
                    		                  <c:forEach var="disposalProperty" items="${disposalProperty}" varStatus="status">
                    	<section class="section" style="padding-top: 30px;">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-5">
                                    <div class="section-title mb-3 mb-lg-0">
                                    <div style="display: flex; align-items: center;">
                                        <h4 class="title">${disposalProperty.BUILDING_NAME}</h4>
                                        <p id="voteState" style="margin-left: 10px; font-size: 15px; margin-top: 6px; background:#DC5E64; color: white; padding-left: 3px; padding-right: 3px;">투표진행중</p>
                                    </div>
                                        <ul class="list-unstyled about-list text-muted mt-4">
                                            <li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700;">투표기간</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"  value="${disposalProperty.DISPOSAL_PERIOD}" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px; width: 200px;" >
                                            </li>
                                            <li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700;">공모금액</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"    value="${disposalProperty.COMPETITION_PRICE*disposalProperty.TOTAL_DABS/100000000} 억원" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px;" >
                                            </li>
											<li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700;">매각금액</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"   value="${disposalProperty.EXPECT_DISPOSAL_PRICE/100000000 } 억원" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px;" >
                                            </li>
											<li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700; margin-right: 0;">매각시 1DABS 누적 수익금액</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"  value="<fmt:formatNumber value="${(disposalProperty.EXPECT_DISPOSAL_PRICE-(disposalProperty.COMPETITION_PRICE*disposalProperty.TOTAL_DABS))/disposalProperty.TOTAL_DABS}" pattern="#,###" /> 원" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px;" >
                                            </li>
                                            <li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700; margin-right: 0;">누적 수익률</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"  id="earningRate${status.index}"  value="" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px;" >
                                            </li>
                                          <%--   <li style="display: flex; justify-content: space-between;">
                                            	<label class="text-muted" for="usernameInput" style="text-align: left;  font-weight: 700; margin-right: 0;">예상 수익금 지급일</label>
                                           		 <input  readonly="readonly" type="text" name="buildingName"    value="${disposalProperty.PAY_DATE}" style="border: none; text-align: right;  pointer-events: none; font-weight: 700; margin-right: 50px;" >
                                            </li> --%>
                                        </ul>
                                        <div class="d-flex align-items-end justify-content" style="margin-left: -30px;">
                                        	<div id="chart${status.index}" style="padding: 0;"></div>
                                            <div style="display: flex; flex-direction: column; justify-content:flex-start; align-items: center; margin-left: -20px;">
                                            		<table id="voteResult" style="table-layout: fixed; text-align: left; white-space: nowrap; margin-bottom: 50px;">
	                                            		<tbody>
	                                            			<tr>
	                                            				<td>
					                                            	<p class="text-muted" style="white-space: nowrap;">총 DABS</p>
	                                            				</td>
	                                            				<td>
					                                            	<p id="totalDabs" style="text-align: center; margin-left: 20px; font-weight: 700;"></p>
	                                            				</td>
	                                            			</tr>
	                                            			<tr>
	                                            				<td>
					                                            	<p class="text-muted" style="white-space: nowrap;">투표완료 DABS</p>
	                                            				</td>
	                                            				<td>
					                                            	<p id="sumDabsAmount" style="text-align: center; margin-left: 20px; font-weight: 700;"></p>
	                                            				</td>
	                                            			</tr>
                                            			</tbody>
                                            		</table>
	                                            <div style="margin-bottom: 60px;">
	                                                <a id="voteModalBtn" href="#vote${status.index}" data-bs-toggle="modal" class="btn btn-outline-primary">투표하기<i class="uil uil-angle-right-b ms-1"></i></a>
	                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end col-->

                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="about-testimonial-menu nav flex-sm-column flex-row nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                                <a href="#v-pills-home" class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" role="tab" aria-controls="v-pills-home" aria-selected="true">
                                                    <div class="position-relative">
                                                        <img src="/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME1}" alt="" class="rounded">
                                                        <div class="about-testi-bg-overlay">
                                                            <i class="mdi mdi-plus-circle-outline text-white fs-3"></i>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#v-pills-profile" class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                                                    <div class="position-relative">
                                                        <img src="/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME2}" alt="" class="rounded">
                                                        <div class="about-testi-bg-overlay">
                                                            <i class="mdi mdi-plus-circle-outline text-white fs-3"></i>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#v-pills-messages" class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                                                    <div class="position-relative">
                                                        <img src="/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME3}" alt="" class="rounded">
                                                        <div class="about-testi-bg-overlay">
                                                            <i class="mdi mdi-plus-circle-outline text-white fs-3"></i>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div><!--end col-->
                                        <div class="col-md-9">
                                            <div class="tab-content about-tab-content h-100" id="v-pills-tabContent">
                                                <div class="tab-pane fade rounded-3 show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" style="background-image: url('/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME1}');">
                                                </div>
                                                <div class="tab-pane fade rounded-3" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" style="background-image: url('/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME2}');"></div>
                                                <div class="tab-pane fade rounded-3" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" style="background-image: url('/finalproject1/resources/images/detail/${disposalProperty.IMAGE_NAME3}');"></div>
                                            </div>
                                        </div><!--end col-->
                                    </div><!--end row-->
                                </div><!--end col-->
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    </c:forEach>
                    	</c:when>
                    	<c:otherwise>
                    			<section class="section" style="padding-top: 30px;">
                        <div class="container">
                            <div class="row align-items-center justify-content-center" >
                                <div class="col-lg-5" style=" margin: 0; padding: 0;">
                                    <div class="section-title mb-lg-0" style="text-align: center; height: 300px; display: flex; justify-content: center; align-items: center;">
                                    	<h2>매각 진행중인 건물이 없습니다<i class="fa-solid fa-building-circle-xmark" style="margin-left: 20px;"></i></h2>
                                    </div>
                                </div><!--end col-->
                           
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    	</c:otherwise>
                    </c:choose>
  
                    
                     <div class="container">
						<h3 style="color: black"> 매각 완료 건물<i class="fa-solid fa-building-circle-check" style="color: #02af74; margin-left: 10px;"></i></h3>
						<hr style="color: black; height: 2px;">
                    </div>
					
					<c:choose>
                	<c:when test="${not empty completeDisposal}">
                		<c:forEach var="completeDisposal" items="${completeDisposal}" varStatus="status">
                    	<section class="section" style="padding-top: 30px;">
                        <div class="container">
                            <div class="row align-items-center" style="border: 2px solid #BDBDBD; border-radius: 10px; padding: 0; padding-right: 20px;">
                                <div class="col-lg-5" style="width: 30%; margin: 0; padding: 0;">
                                    <div class="section-title mb-lg-0">
                                    <div style="display: flex; align-items: center; height: 400px;">
                                    	<img src="/finalproject1/resources/images/disposal/warehouse_disposal.png" style="height: 100%; width: 100%; border-top-left-radius: 7px; border-bottom-left-radius: 7px; margin-right: 30px;">
                                    </div>
                                    </div>
                                </div><!--end col-->
								
								
								 <div class="col-lg-5" style="width: 65%;">
                                    <div class="section-title mb-3 mb-lg-0">
                                    <div>
	                                    <div style="display: flex; align-items: center; margin-top: 20px;">
	                                        <h4 class="title">${completeDisposal.BUILDING_NAME}</h4>
	                                        <p style="margin-left: 10px; font-size: 15px; margin-top: 6px; background:#8C8C8C; color: white; padding-left: 3px; padding-right: 3px;">매각완료</p>
	                                    </div>
	                                    <div>
	                                    	<p class="text_muted" style="font-size:13px;"><i class="fa-solid fa-location-dot"></i> ${completeDisposal.LOCATION_FULL_NAME}</p>
	                                    </div>
	                                    <hr style="height: 3px;">
                                    </div>
                                    		<div style="display: flex; justify-content: space-between; margin-top: 40px;">
												<div style="display: flex; flex-direction: column; width: 50%; margin-right: 40px;">
													<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px;">
														<p class="text-muted" style="font-weight: 700;">공모기간</p>
														<p style="font-weight: 700;">${completeDisposal.COMPETITION_PERIOD}</p>
													</div>
														 <hr style="margin-top: 0;">										
													<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px; margin-top: 20px;">
														<p class="text-muted" style="font-weight: 700;">상장일</p>
														<p style="font-weight: 700;">${completeDisposal.COMPETITION_DATE}</p>										
													</div>
														 <hr style="margin-top: 0;">
														 <div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px; margin-top: 20px;">
														<p class="text-muted" style="font-weight: 700;">매각일</p>
														<p style="font-weight: 700;">${completeDisposal.DISPOSAL_DATE}</p>										
													</div>										
												</div>
												<div style="display: flex; flex-direction: column; width: 50%;">
												<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px;">
													<p class="text-muted" style="font-weight: 700;">매각금액</p>
													<p style="font-weight: 700;">${completeDisposal.DISPOSAL_PRICE/100000000} 억원</p>
												</div>
													 <hr style="margin-top: 0;">										
												<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px; margin-top: 20px;">
													<p class="text-muted" style="font-weight: 700;">1DABS당 누적 수익금액</p>
													<p style="font-weight: 700;"><fmt:formatNumber value="${completeDisposal.EARNING_PRICE}" pattern="#,###" /> 원</p>										
												</div>
													 <hr style="margin-top: 0;">
													 <div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 20px; margin-top: 20px;">
													<p class="text-muted" style="font-weight: 700;">누적수익룰</p>
													<p style="font-weight: 700;"><fmt:formatNumber value="${completeDisposal.EARNING_RATE*100}" pattern="#.##" />%</p>										
												</div>										
											</div>                                   			
                                    		</div>
                                    </div>
                                </div><!--end col-->
                           
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    </c:forEach>
                	</c:when>
                	
                	<c:otherwise>
                    	<section class="section" style="padding-top: 30px;">
                        <div class="container">
                            <div class="row align-items-center justify-content-center" >
                                <div class="col-lg-5" style=" margin: 0; padding: 0;">
                                    <div class="section-title mb-lg-0" style="text-align: center; height: 300px; display: flex; justify-content: center; align-items: center;">
                                    	<h2>매각 완료된 건물이 없습니다<i class="fa-solid fa-building-circle-xmark" style="margin-left: 20px;"></i></h2>
                                    </div>
                                </div><!--end col-->
                           
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                	</c:otherwise>
                </c:choose>
					
				
                   
					
					
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

                <!--start back-to-top-->
                <button onclick="topFunction()" id="back-to-top">
                    <i class="mdi mdi-arrow-up"></i>
                </button>
                <!--end back-to-top-->
                
                
                
                 <c:forEach var="disposalProperty" items="${disposalProperty}" varStatus="status">
                 		  <div class="modal fade" id="vote${status.index}" tabindex="-1" aria-hidden="true">
				                <div class="modal-dialog modal-dialog-centered">
				                    <div class="modal-content" style="width: 85%;">
				                        <div class="modal-body p-5">
				                            <div class="position-absolute end-0 top-0 p-3">
				                                <button id="btn-close1" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				                            </div>
				                            <div class="auth-content">
				                                <div class="w-70">
				                                    <div class="mb-4" style="text-align: left;">
				                                        <h3><i class="fa-solid fa-check-to-slot" style="margin-right: 5px;"></i>투표하기</h3>
				                                        <hr>
				                                    </div>
				                                    <form action="${pageContext.request.contextPath}/member/login" class="auth-form" method="post">
				                                    	<input  type="hidden" name="userId"  id="userId"  value="${loginVO.id}" style="border: none; text-align: right; width: 54%; pointer-events: none; font-weight: 700;" >
				                                    	<input  type="hidden" name="propertyNo"  id="propertyNo"  value="${disposalProperty.PROPERTY_NO}" style="border: none; text-align: right; width: 54%; pointer-events: none; font-weight: 700;" >
				                                        <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">빌딩명</label>
				                                            <input  readonly="readonly" type="text" name="buildingName"  id="buildingName2"  value="${disposalProperty.BUILDING_NAME}" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                         <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">매각금액</label>
				                                            <input  readonly="readonly" type="text" name="orderPrice"  id="orderPrice2"  value="${disposalProperty.EXPECT_DISPOSAL_PRICE/100000000} 억원" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                        <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">예상 수익률</label>
				                                            <input  readonly="readonly" type="text" name="dabsAmount"  id="earningRate2${status.index}"  value="" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                        <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">보유 DABS</label>
				                                            <input  readonly="readonly" type="text" name="dabsAmount"  id="dabsAmount"  value="${dabsAmount[status.index].DABS_AMOUNT}" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                          <div class="mb-3">
																	<hr>
				                                        </div>
				                                        <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">${loginVO.name}님의 예상 수익금</label>
				                                            <input  readonly="readonly" type="text" name="commission"  id="userEarningAmount${status.index}"  value="" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                         <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;  white-space: nowrap;">${loginVO.name}님의 예상 총 입금액</label>
				                                            <input  readonly="readonly" type="text" name="commission"  id="userEarningAmountSum${status.index}"  value="" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div>
				                                  <%--       <div class="mb-3">
				                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 45%; font-weight: 700;">수익금 지급 예정일</label>
				                                            <input  readonly="readonly" type="text" name="calculatePrice"  id="calculatePrice2"  value="${disposalProperty.PAY_DATE}" style="border: none; text-align: right; width: 53%; pointer-events: none; font-weight: 700;" >
				                                        </div> --%>
				                                        <div class="mb-4" style="display: flex; justify-content: center; cursor: pointer;">
				                                        	<div id="agreeBtn" style="font-size: 20px; margin-rignt:10px;">
					                                        	<label><i id="agreeIcon" class="fa-regular fa-circle-check voteIcon"></i></label>
					                                        	<input id="agreeInput"  class="voteBtn" type="button" value="찬성">
				                                        	</div>
															<div id="disagreeBtn" style="font-size: 20px; margin-left: 10px; cursor: pointer;">
					                                        	<label><i id="disagreeIcon" class="fa-regular fa-circle-check voteIcon"></i></label>
					                                        	<input id="disagreeInput" class="voteBtn" type="button" value="반대">
				                                        	</div>
				                                        </div>
				                                        <!-- <div class="mb-4">
				                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="flexCheckDefault">
				                                                <label class="form-check-label" for="flexCheckDefault">I agree to the <a href="javascript:void(0)" class="text-primary form-text text-decoration-underline">Terms and conditions</a></label>
				                                            </div>
				                                        </div> -->
				                                        <div class="text-center">
				                                            <button type="button" class="btn btn-primary w-100" style="background-color: #398175; border-color: #398175;" onclick="vote()">투표하기</button>
				                                        </div>
				                                    </form>
				                                </div>
				                            </div>
				                        </div><!--end modal-body-->
				                    </div><!--end modal-content-->
				                </div><!--end modal-dialog-->
				            </div>
                 </c:forEach>
            </div>
            
            <button id ="orderSuccessModalBtn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderSuccessModal">
			 		 Launch demo modal
			</button> 
			<div class="modal fade" id="orderSuccessModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-body" style="display: flex; justify-content: center; align-items: center; height: 140px;">
					        	<p style="font-size: 20px;">투표가 성공적으로 완료되었습니다.</p>
					      </div>
					       <div class="modal-footer" style="    display: flex; justify-content: center; align-items: center; height: fit-content;">
						        <button id="closeBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="border: none; color: black; background-color: white; font-size: 19px;">닫기</button>
					       </div>
					    </div>
					  </div>
			</div> 
            
            <!-- end main content-->

        <!-- END layout-wrapper -->

	<script
		src="/finalproject1/resources/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Switcher Js -->
	<script src="/finalproject1/resources/js/pages/switcher.init.js"></script>

	<script src="/finalproject1/resources/js/app.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="/finalproject1/resources/signature-pad-main/assets/json2.min.js"></script>
	<script
		src="/finalproject1/resources/signature-pad-main/jquery.signaturepad.js"></script>

	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Choice Js -->
	<script
		src="/finalproject1/resources/libs/choices.js/public/assets/scripts/choices.min.js"></script>

	<!-- Light Box Js -->
	<script
		src="/finalproject1/resources/libs/glightbox/js/glightbox.min.js"></script>

	<script src="/finalproject1/resources/js/pages/lightbox.init.js"></script>


	<script src="/finalproject1/resources/libs/swiper/swiper-bundle.min.js"></script>

	<script src="/finalproject1/resources/js/pages/index.init.js"></script>

	<script src="/finalproject1/resources/js/app.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
		<script type="text/javascript">
				$('#orderSuccessModalBtn').hide()
			/* 	$('#closeBtn').on('click',function(){
					location.reload();
				}) */
				function checkVoteState(propertyNo){
					fetch('${pageContext.request.contextPath}/checkVoteState?propertyNo='+propertyNo).then(
						res=>res.json()		
					).then(response=>{
						if(response != null){
							response.sort(function(a,b) {
								if(a.AGREE_DISAGREE_STATE < b.AGREE_DISAGREE_STATE ) return -1;
								else if(a.AGREE_DISAGREE_STATE  > b.AGREE_DISAGREE_STATE ) return 1;
								else return 0;
							});
							if(response[0].DABS_AMOUNT > ((($('#totalDabs').text()).replaceAll(',',''))*1)/2 || response[1].DABS_AMOUNT > ((($('#totalDabs').text()).replaceAll(',',''))*1)/2) {
								$('#voteState').text('투표종료')
								$('#voteState').css('background-color','#8C8C8C')
								$('#voteModalBtn').hide()
								$('#voteResult').append('<tr><td><p class="text-muted" style="white-space: nowrap;">찬성</p></td><td><p  style="text-align: center; margin-left: 20px; font-weight: 700;">'+(response[0].DABS_AMOUNT).toLocaleString('ko-KR')+'</p></td></tr>')
								$('#voteResult').append('<tr><td><p class="text-muted" style="white-space: nowrap;">반대</p></td><td><p  style="text-align: center; margin-left: 20px; font-weight: 700;">'+(response[1].DABS_AMOUNT).toLocaleString('ko-KR')+'</p></td></tr>')
								$('#voteResult').css('margin-bottom','0')
								showVoteChart()
								autoAlarm()
							}
							if(response[0].DABS_AMOUNT < ((($('#totalDabs').text()).replaceAll(',',''))*1)/2) {
								showVoteChart()
							}
						}
					})
				}
				
				
				function vote(){
					let agreeDisagreeState
					let propertyNo = $('#propertyNo').val()
					if(agreeBtnState == 1){
						agreeDisagreeState = 'A'
					}
					if(disAgreeBtnState == 1){
						agreeDisagreeState = 'D'
					}
					let dabsAmount = $('#dabsAmount').val()
					let userId = '${loginVO.id}'
					fetch('${pageContext.request.contextPath}/voteProcess',{
						method : "POST",
						headers : {"Content-Type" : "application/json"},
						body : JSON.stringify({
							propertyNo : propertyNo,
							agreeDisagreeState : agreeDisagreeState,
							dabsAmount : dabsAmount,
							userId : userId 
						}),
					}).then((res)=>res.json()).then(response1=>{
						$('#btn-close1').trigger('click')
						$('#orderSuccessModalBtn').trigger('click')
						if(response1 != null){
							checkVoteState(propertyNo)
						}
					})
					
				}
		
				 let agreeBtnState = 0
		         let disAgreeBtnState = 0
		         
		         $('#agreeBtn').on('click',function(){
		        	
		        	 if(agreeBtnState == 0){
			        	 agreeBtnState = 1
			        	 $('#agreeInput').removeClass('voteBtn')
			        	 $('#agreeIcon').removeClass('voteIcon')
			        	 $('#agreeIcon').css('color','#4EAC79')
			        	 $('#agreeInput').css('border','none')
			        	 $('#agreeInput').css('background-color','white')
			        	 $('#agreeInput').css('color','#4EAC79')
			        	 $('#agreeInput').css('border','none')
			        	 $('#agreeInput').css('padding-left','0')
			        	 disAgreeBtnState = 0
			        	  $('#disagreeInput').removeAttr('style')
			        	 $('#disagreeIcon').removeAttr('style')
			        	 $('#disagreeInput').addClass('voteBtn')
			        	 $('#disagreeIcon').addClass('voteIcon')
		        	 } else{
			        	 agreeBtnState = 0
			        	 $('#agreeInput').removeAttr('style')
			        	 $('#agreeIcon').removeAttr('style')
			        	 $('#agreeInput').addClass('voteBtn')
			        	 $('#agreeIcon').addClass('voteIcon')
			        	 
		        	 }
		        	 
		        	 
		         })
		         
		        $('#disagreeBtn').on('click',function(){
		        	
		        	 if(disAgreeBtnState == 0){
			        	 disAgreeBtnState = 1
			        	 $('#disagreeInput').removeClass('voteBtn')
			        	 $('#disagreeIcon').removeClass('voteIcon')
			        	 $('#disagreeIcon').css('color','#DC5E64')
			        	 $('#disagreeInput').css('border','none')
			        	 $('#disagreeInput').css('background-color','white')
			        	 $('#disagreeInput').css('color','#DC5E64')
			        	 $('#disagreeInput').css('border','none')
			        	 $('#disagreeInput').css('padding-left','0')
			        	 agreeBtnState = 0
			        	 $('#agreeInput').removeAttr('style')
			        	 $('#agreeIcon').removeAttr('style')
			        	 $('#agreeInput').addClass('voteBtn')
			        	 $('#agreeIcon').addClass('voteIcon')

		        	 } else{
			        	 disAgreeBtnState = 0
			        	 $('#disagreeInput').removeAttr('style')
			        	 $('#disagreeIcon').removeAttr('style')
			        	 $('#disagreeInput').addClass('voteBtn')
			        	 $('#disagreeIcon').addClass('voteIcon')
			        	 
		        	 }
		        	 
		        	 
		         })
					
				<c:forEach var="disposalProperty" items="${disposalProperty}" varStatus="status">
					let a= ${((((disposalProperty.EXPECT_DISPOSAL_PRICE))-((disposalProperty.COMPETITION_PRICE*disposalProperty.TOTAL_DABS))))}
					let earning = ${((disposalProperty.COMPETITION_PRICE*disposalProperty.TOTAL_DABS))/disposalProperty.TOTAL_DABS}
					let competitionPrice = ${disposalProperty.COMPETITION_PRICE}
					let earningPrice = a/${disposalProperty.TOTAL_DABS} 
					let userEarningAmount = earningPrice * ${dabsAmount[status.index].DABS_AMOUNT}
					userEarningAmount = (userEarningAmount.toFixed(0))*1
					let userEarningAmountSum = (earningPrice+${disposalProperty.COMPETITION_PRICE}) * ${dabsAmount[status.index].DABS_AMOUNT}
					userEarningAmountSum = (userEarningAmountSum.toFixed(0))*1
					let earningRate = (a/${(disposalProperty.COMPETITION_PRICE*disposalProperty.TOTAL_DABS)}).toFixed(2)
					$('#earningRate${status.index}').val(earningRate*100+'%')
					$('#earningRate2${status.index}').val(earningRate*100+'%')
					$('#userEarningAmount${status.index}').val(userEarningAmount.toLocaleString('ko-kR')+' 원')
					$('#userEarningAmountSum${status.index}').val((userEarningAmountSum).toLocaleString('ko-kR')+' 원')
				</c:forEach>
					
				function showVoteChart(){				
						<c:forEach var="disposalProperty" items="${disposalProperty}" varStatus="status">
							fetch('${pageContext.request.contextPath}/disposal/getVoteProcess?propertyNo=${disposalProperty.PROPERTY_NO}').then(
								(res) => res.json	()	
							).then(response=>{
								if(response != null){
									
									$('#totalDabs').text((response[0].TOTAL_DABS).toLocaleString('ko-KR'))
									$('#sumDabsAmount').text((response[0].SUM_DABS_AMOUNT).toLocaleString('ko-KR'))
									
									$('#chart${status.index}').empty()
									var options = {
									          series: [response[0].VOTE_PROCESS],
									          chart: {
									          height: 300,
									          type: 'radialBar',
									          offsetY: -10,
									        },
									        plotOptions: {
									            radialBar: {
									              startAngle: -135,
									              endAngle: 225,
									               hollow: {
									                margin: 0,
									                size: '70%',
									                background: '#fff',
									                image: undefined,
									                imageOffsetX: 0,
									                imageOffsetY: 0,
									                position: 'front',
									                dropShadow: {
									                  enabled: true,
									                  top: 3,
									                  left: 0,
									                  blur: 4,
									                  opacity: 0.24
									                }
									              },
									              track: {
									                background: '#fff',
									                strokeWidth: '67%',
									                margin: 0, // margin is in pixels
									                dropShadow: {
									                  enabled: true,
									                  top: -3,
									                  left: 0,
									                  blur: 4,
									                  opacity: 0.35
									                }
									              },
									          
									              dataLabels: {
									                show: true,
									                name: {
									                  offsetY: -10,
									                  show: true,
									                  color: '#888',
									                  fontSize: '17px'
									                },
									                value: {
									                  formatter: function(val) {
									                    return parseInt(val)+'%';
									                  },
									                  color: '#111',
									                  fontSize: '36px',
									                  show: true,
									                }
									              }
									            }
									          },
									          fill: {
									            type: 'gradient',
									            gradient: {
									              shade: 'dark',
									              type: 'horizontal',
									              shadeIntensity: 0.5,
									              gradientToColors: ['#ABE5A1'],
									              inverseColors: true,
									              opacityFrom: 1,
									              opacityTo: 1,
									              stops: [0, 100]
									            }
									          },
									          stroke: {
									            lineCap: 'round'
									          },
									          labels: ['투표진행률'],
									          };											
										        var chart = new ApexCharts(document.querySelector("#chart${status.index}"), options);
										        chart.render();
											

								}
									})

						</c:forEach>
						
					}
		
				
				showVoteChart()
		</script>
	</body>
</html>
