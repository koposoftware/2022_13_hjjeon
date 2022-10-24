<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>


    <meta charset="utf-8" />
    <title>하나랜드 </title>
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
	<link rel="stylesheet" type="text/css" href="/finalproject1/resources/css/loading-bar.css"/>
	
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

            <div class="page-content">

                <!-- START HOME -->
                <section class="bg-home3" id="home" style="background-color: #F3FFFF;">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-7">
                                <div class="mb-4 pb-3 me-lg-5">
                                    <h6 class="sub-title" style="font-size: 25px;">편하고 재밌는 부동산 조각투자</h6>
                                    <h1 class="display-5 fw-semibold mb-3">건물주 원<span class="text fw-bold" style="color: #089995;">하나</span>요?</h1>
                                    <h1 class="display-5 fw-semibold mb-3"><span class="text fw-bold" style="color: #089995;">하나랜드</span>에서 시작해봐요!</h1>
                                    <p class="lead text-muted mb-0">소수가 아닌 모두에게 공평한 기회,견고한 시스템으로 안전하고 투명하게 </p>
                                    <p class="lead text-muted mb-0">부동산 시세부터 투자 유형에 따른 맞춤형 투자까지</p>
                                </div>
                                <form action="${pageContext.request.contextPath}/building/detail">
                                    <input type="hidden" id="propertyNo" name="propertyNo" />
                                    <input type="hidden" id="buildingNo" name="buildingNo" />
                                    <div class="registration-form">
                                        <div class="row g-0">
                                            <div class="col-md-6">
                                                <div class="filter-search-form mt-3 mt-md-0">
                                                    <i class="uil uil-map-marker" style="color: #089995;"></i>
                                                    <select class="form-select"  id="choices-single-location" onchange="changeSelect(this.value)">
                                                    	<c:forEach var="indexBuilding"  items="${indexBuildingList}">
                                                    		<option value="${indexBuilding.BUILDING_NO},${indexBuilding.PROPERTY_NO}">${indexBuilding.BUILDING_NAME}</option>
                                                    	</c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--end col-->
                                            <div class="col-md-6">
                                                <div class="mt-3 mt-md-0 h-100">
                                                    <button class="btn btn-primary submit-btn w-100 h-100" type="submit" style="font-size: 20px; background-color: #089995; border-color: #089995;"><i class="uil uil-search me-1"></i> 투자하러 가기</button>
                                                </div>
                                            </div>
                                            <!--end col-->
                                        </div>
                                        <!--end row-->
                                    </div>
                                </form>
                            </div>
                            <!--end col-->
                            <div class="col-lg-5" style="width: 380px;">
                                <div class="mt-5 mt-lg-0 ms-xl-5">
                                    <div class="quote-icon">
                                        <i class="mdi mdi-format-quote-open icon" style="color: #089995;"></i>
                                        <i class="mdi mdi-format-quote-open icon-2" style="color: #089995;"></i>
                                    </div>
                                    <div class="swiper homeslider">

                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <div class="home-slide-box text-center">
                                                    <img src="/finalproject1/resources/images/home/home01.png" alt="" class="img-fluid rounded-3">

                                                </div>
                                            </div>
                                            <!--swiper-slide-->
                                            <div class="swiper-slide">
                                                <div class="home-slide-box text-center">
                                                    <img src="/finalproject1/resources/images/home/home02.png" alt="" class="img-fluid rounded-3">

                                                </div>
                                            </div>
                                            <!--swiper-slide-->
                                            <div class="swiper-slide">
                                                <div class="home-slide-box text-center">
                                                    <img src="/finalproject1/resources/images/home/home03.png" alt="" class="img-fluid rounded-3">

                                                </div>
                                            </div>
                                            <!--swiper-slide-->
                                        </div>
                                        <!--end sw-->
                                    </div>
                                    <!--end swiper-->
                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                    </div>
                    <!--end container-->
                </section>
                <!-- End Home -->

                <!-- START CATEGORY -->
                <section class="section">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="section-title text-center">
                                    <h3 class="title">하나랜드에서 시작하는 부동산 투자</h3>
                                    <p class="text-muted"></p>
                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                        <div class="row">
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-money-check-dollar" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">비대면 계좌 개설</h5>
                                        </a>
                                        <p class="text-muted mb-0">비대면 계좌를 통해 바로 하나랜드</p>
                                        <p class="text-muted mb-0">서비스를 이용할 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-stethoscope" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">투자 성향 진단</h5>
                                        </a>
                                        <p class="text-muted mb-0">자신의 투자 성향이 어떤 스타일인지</p>
                                        <p class="text-muted mb-0">알 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>

                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-person-chalkboard" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">맞춤형 투자 지원</h5>
                                        </a>
                                        <p class="text-muted mb-0">투자 성향 진단 결과를 통해</p>
                                        <p class="text-muted mb-0">맞춤형 투자를 할 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-chart-line" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">부동산 시세 조회</h5>
                                        </a>
                                        <p class="text-muted mb-0">아파트 가격지수, 건물 투자 수익률을</p>
                                        <p class="text-muted mb-0">차트로 한눈에 볼 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-building-circle-check" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">공모/청약</h5>
                                        </a>
                                        <p class="text-muted mb-0">새로운 건물을 공모/청약을 통해</p>
                                        <p class="text-muted mb-0">건물주가 될 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-retweet" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">매수/매도</h5>
                                        </a>
                                        <p class="text-muted mb-0">청약에 당첨되지 않아도 매수/매도를</p>
                                        <p class="text-muted mb-0">통해 건물 지분을 사고 팔 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-hand-holding-dollar" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">배당금 지급</h5>
                                        </a>
                                        <p class="text-muted mb-0">건물 임대 수익을 배당금으로 받을 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                            <div class="col-lg-3 col-md-6 mt-4 pt-2">
                                <div class="popu-category-box rounded text-center">
                                    <div class="popu-category-icon icons-md">
                                        <i class="fa-solid fa-check-to-slot" style="color: #089995"></i>
                                    </div>
                                    <div class="popu-category-content mt-4">
                                        <a href="javascript:void(0)" class="text-dark stretched-link">
                                            <h5 class="fs-18">매각 투표</h5>
                                        </a>
                                        <p class="text-muted mb-0">매각 투표를 진행해서 시세차익을</p>
                                        <p class="text-muted mb-0">남길 수 있어요</p>
                                    </div>
                                </div>
                                <!--end popu-category-box-->
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="mt-5 text-center">
                                    <a href="job-categories.html" class="btn btn-primary btn-hover" style="background-color: #089995; border-color: #089995;">자세히 알아보기 <i class="uil uil-arrow-right MS-1"></i></a>
                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                    </div>
                    <!--end container-->
                </section>
                <!-- END CATEGORY -->

                <!-- START JOB-LIST -->
                <section class="section bg-light">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="section-title text-center mb-4 pb-2">
                                    <h4 class="title">투자 가능 빌딩</h4>
                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <ul class="job-list-menu nav nav-pills nav-justified flex-column flex-sm-row mb-4" id="pills-tab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" id="prdy_ctrt" data-bs-toggle="pill" data-bs-target="#recent-job" type="button" role="tab" aria-controls="recent-jobs" aria-selected="true">전일 대비 등락률</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="yield" data-bs-toggle="pill" data-bs-target="#freelancer" type="button" role="tab" aria-controls="freelancer" aria-selected="false">배당률</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="avls" data-bs-toggle="pill" data-bs-target="#part-time" type="button" role="tab" aria-controls="part-time" aria-selected="false">시가총액</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link" id="acml_vol" data-bs-toggle="pill" data-bs-target="#full-time" type="button" role="tab" aria-controls="full-time" aria-selected="false">거래량</button>
                                    </li>
                                </ul>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="propertyList" role="tabpanel" aria-labelledby="recent-jobs-tab">

                                        <div class="text-center mt-4 pt-2">
                                            <a href="job-list.html" class="btn btn-primary">View More <i class="uil uil-arrow-right"></i></a>
                                        </div>

                                    </div>
                                    <!--end recent-jobs-tab-->

                                </div>
                            </div>
                            <!--end col-->
                        </div>
                        <!--end row-->
                    </div>
                    <!--end container-->
                </section>
                <!-- END JOB-LIST -->
				<c:if test="${not empty subscriptionList}">
						                <!-- START PROCESS -->
				<c:forEach var="subscription" items="${subscriptionList}">
					<section class="section">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="section-title me-5">
                                    <h3 class="title">청약 진행중 건물</h3>
                                    <h3 class="title" style="color: #089995;">
                                        ${subscription.BUILDING_NAME}  
                                    </h3>
                                    <div class="process-menu nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <a class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" style="margin-bottom: 40px;">
                                            <div class="d-flex">
                                                <div class="number flex-shrink-0">
                                                    1
                                                </div>
                                                <div class="flex-grow-1 text-start ms-3">
                                                    <h5 class="fs-18">${subscription.POINT_HEAD1}</h5>
                                                    <p class="text-muted mb-0" style="white-space: nowrap;">${subscription.POINT_DETAIL1}</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false" style="margin-bottom: 40px;">
                                            <div class="d-flex">
                                                <div class="number flex-shrink-0">
                                                    2
                                                </div>
                                                <div class="flex-grow-1 text-start ms-3">
                                                    <h5 class="fs-18">${subscription.POINT_HEAD2}</h5>
                                                    <p class="text-muted mb-0" style="white-space: nowrap;">${subscription.POINT_DETAIL2}</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                                            <div class=" d-flex">
                                                <div class="number flex-shrink-0">
                                                    3
                                                </div>
                                                <div class="flex-grow-1 text-start ms-3">
                                                    <h5 class="fs-18">${subscription.POINT_HEAD3}</h5>
                                                    <p class="text-muted mb-0" style="white-space: nowrap;">${subscription.POINT_DETAIL3}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <!--end col-->
                            <div class="col-lg-6">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="blog-box card p-2 mt-3">
                                        <div class="blog-img position-relative overflow-hidden" style="width: 100%;">
                                            <img id="cafe2_subscription_none" src="/finalproject1/resources/images/blog/newbuilding.jpg" alt="" class="img-fluid" style="width: 100%;">
                                            <img id="cafe2_subscription_done" src="/finalproject1/resources/images/blog/cafe2_subscription_complete.png" alt="" class="img-fluid" style="width: 100%;">
                                            <div class="bg-overlay"></div>
                                            <div class="author">
                                                <p class=" mb-0"><a href="javascript:void(0)" class="text-light user">${subscription.BUILDING_NAME}</a></p>
                                                <p class="text-light mb-0 date"><i class="mdi mdi-calendar-check"></i> 청약기간 ${subscription.COMPETITION_PERIOD}</p>
                                            </div>
                                            <div class="likes">
                                                <ul class="list-unstyled mb-0">

                                                    <li class="list-inline-item"><a href="javascript:void(0)" class="text-white"><i class="mdi mdi-comment-outline me-1"></i>전체 공모 금액 <fmt:formatNumber value="${subscription.AVLS}"></fmt:formatNumber></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <a href="javascript:void(0)" class="primary-link">
                                                <h5 class="fs-17">청약신청을 통해 건물주가 되어보세요!</h5>
                                            </a>
                                            <p class="text-muted">청약은 선착순으로 완료되며, 완료될 시 건물의 수익증권을 여러 매로 나누어 발행하여 소유주 분들의 계좌로 넣어드려요</p>
                                            <a  id="subscriptionBtn" href="#subscriptionModal" data-bs-toggle="modal" class="form-text" style="color: #089995;" onclick="getSubscription(${subscription.PROPERTY_NO})">청약 신청하러 가기 <i class="mdi mdi-chevron-right align-middle"></i></a>
                                        </div>
                                    </div>
                                    <!--end blog-box-->

                                </div>
                            </div>
                        </div>
                        <!--end row-->
                    </div>
                    <!--end container-->
                </section>
				</c:forEach>
                
                <!-- END PROCESS -->
				</c:if>
				<c:if test="${empty subscriptionList}">
					<section class="section">
	                    <div class="container">
	                        <div class="row align-items-center">
	                        		<h3 class="title" style="text-align: center;">청약 진행중 건물</h3>
	                        		<div style="display: flex; align-items: center; flex-direction: column; justify-content: center; margin-top: 50px;">
		                        		<h4>청약 진행중인 빌딩이 없습니다</h4>
		                        		<img src="/finalproject1/resources/admin/images/noBuilding.png" class="img-fluid" style="width: 200px;">
	                        		</div>
	                        </div>
	                      </div>
	                  </section>
				</c:if>


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
        <!-- START SIGN-UP MODAL -->
        <div class="modal fade" id="subscriptionModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" style="max-width: 750px;">
                <div class="modal-content" style="height: 780px;">
                    <div class="modal-body p-5">
                        <div class="position-absolute end-0 top-0 p-3">
                            <button id="btnClose" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="auth-content">
                            <div class="w-100">
                                <div class="text mb-3">
                                    <h4>청약 신청하기</h4>
                                </div>
                                    <hr style="height: 3px;">
                                <div class="text" style="margin-bottom: 2px;">
                                    <h4 id="subscriptionName" style="margin-bottom: 0;"></h4>
                                    <div style="display: flex; justify-content: flex-start; align-items: center;">
	                                    <i class="fa-solid fa-location-dot" style="font-size:13px;"></i>
	                                    <div id="subscriptionFullName" class="text_muted" style="font-size:13px;"></div>
                                    </div>
                                </div>
                                    <div class="d-flex justify-content">
                                        <div class="col-lg-10" style="width:40%;">
                                            <div class="swiper testimonialSlider">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <div class="candidate-portfolio-box card border-0">
                                                            <img id="subscriptionImg1" src="/finalproject1/resources/images/detail/cafe2.jpg" alt="" class="img-fluid">
                                                            <div class="bg-overlay"></div>
                                                            <div class="zoom-icon">
                                                                <a href="" class="image-popup text-white"><i class="uil uil-search-alt"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end swiper-slide-->
                                                    <div class="swiper-slide">
                                                        <div class="candidate-portfolio-box card border-0">
                                                            <img id="subscriptionImg2" src="/finalproject1/resources/images/detail/cafe2_1.jpg" alt="" class="img-fluid">
                                                            <div class="bg-overlay"></div>
                                                            <div class="zoom-icon">
                                                                <a href="" class="image-popup text-white"><i class="uil uil-search-alt"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end swiper-slide-->
                                                    <div class="swiper-slide">
                                                        <div class="candidate-portfolio-box card border-0">
                                                            <img id="subscriptionImg3" src="/finalproject1/resources/images/detail/cafe2_2.jpg" alt="" class="img-fluid">
                                                            <div class="bg-overlay"></div>
                                                            <div class="zoom-icon">
                                                                <a href="" class="image-popup text-white"><i class="uil uil-search-alt"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--end swiper-slide-->

                                                </div>
                                                <!--end swiper-wrapper-->
                                                <div class="swiper-pagination"></div>
                                            </div>
                                            <!--end swiper-container  -->
                                        </div>
                                        <!--end col-->
                                        <div style="display: flex; flex-direction: column; margin-left: 20px;">
                                        	<div class="candidate-education-content mt-2 d-flex"
												style="margin-bottom: 0">
												<div class="circle flex-shrink-0 bg-soft"
													style="background-color: #D9E5FF;">
													<i class="fa-solid fa-arrow-trend-up fa-fade" style="color: #6799FF;"></i>
												</div>
												<div class="ms-2" style="margin-top:3px;">
			                                        	<h5 id="pointHead1" style="margin-bottom: 10;"></h5>
												</div>
											</div>
                                        	
                                        	<div class="candidate-education-content mt-4 d-flex"
												style="margin-bottom: 0">
												<div class="circle flex-shrink-0 bg-soft-primary">
													<i class="fa-solid fa-building-wheat fa-fade"></i>
												</div>
												<div class="ms-2" style="margin-top:3px;">
		                                        	<h5 id="pointHead2"  style="margin-bottom: 10px;"></h5>
												</div>
											</div>
											<div class="candidate-education-content mt-4 d-flex"
												style="margin-bottom: 0">
												<div class="circle flex-shrink-0 bg-soft"
													style="background-color: #FFD9EC;">
													<i class="fa-solid fa-user-shield fa-fade" style="color: #F361A6"></i>
												</div>
												<div class="ms-2" style="margin-top:3px;">
		                                        	<h5 id="pointHead3" style="margin-bottom: 5px;"></h5>
												</div>
											</div>
                                        	
                                        	
                                        	 <div style="display: flex; justify-content: space-between; margin-top: 50px;">
												<div style="display: flex; flex-direction: column; width: 50%; margin-right: 0;">
													<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 5px;">
														<p class="text-muted" style="font-weight: 700;">공모액</p>
														<p id="competitionSum" style="font-weight: 700; margin-right: 10px;"></p>
													</div>
														 <hr style="margin-top: 0;">										
													<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 5px; margin-top: 25px;">
														<p class="text-muted" style="font-weight: 700;">총 수량</p>
														<p id="totalDABS" style="font-weight: 700; margin-right: 10px;"></p>										
													</div>
													<hr style="margin-top: 0;">	
												</div>
												<div style="display: flex; flex-direction: column; width: 50%;">
												<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 5px;">
													<p class="text-muted" style="font-weight: 700;">공모가</p>
													<p id="competitionPrice" style="font-weight: 700;"></p>
												</div>
													 <hr style="margin-top: 0;">										
												<div style="display: flex; justify-content: space-between; padding-bottom: 0; margin-bottom: 5px; margin-top: 25px;">
													<p class="text-muted" style="font-weight: 700;">잔여수량</p>
													<p id="subscriptionRemanet" style="font-weight: 700;">0개</p>										
												</div>
												<hr style="margin-top: 0;">	
											</div>                                   			
                                    		</div>
                                        </div> 
                                    </div>
                                    <div class="progress" style="height: 30px; margin-top: 20px; background-color: #BDBDBD;">
									 	 <div id="progressBar" class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar"  aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%"></div>
									</div>
                                    <div style="display: flex; margin-top: 50px; justify-content: center; align-items: center;">
                                    	<div class="form-floating" style="width: 49%; margin-right: 20px;">
											  <input type="text" class="form-control" id="subscriptionCnt" placeholder="name@example.com">
											  <label for="floatingInput">청약 수량을 입력해주세요</label>
										</div>
										<i class="fa-regular fa-circle-right" style="font-size: 25px; --fa-beat-scale: 2.0;"></i>
										<div class="form-floating" style="width: 49%; margin-left: 20px;">
											  <input readonly="readonly" type="text" class="form-control" id="subscriptionPrice" placeholder="Password">
											  <label for="floatingPassword">총 금액</label>
										</div>
                                    </div>
                                    <div style="display: flex; align-items: center;">
	                                    <div class="text-muted mt-1" style="font-weight: 700;">내 자산 : </div>
	                                    <div id="myBalance" class="text-muted mt-1" style="font-weight: 700;"> 000</div>
                                    </div>
                                     <div class="d-flex mt-3 text mb-5" style="align-items: center; justify-content: flex-end;">
                                   		 <a class="btn btn-primary btn-hover" style="background-color: #089995; border-color: #089995; display: flex; align-items: center; height: 48px;" onclick="subscriptionProcess()">
                                   		 	청약 신청하기 <i class="uil uil-arrow-right MS-1"></i><div id="spinner" class="spinner-border text-secondary m-1" role="status" style="margin: 0; display: none;"> </div>
                                   		 </a>
                                   		 <input type="hidden" id="subscriptionPropertyNo" name="subscriptionPropertyNo" value="">
                                   		 <!-- <a class="btn btn-primary btn-hover" style="background-color: #089995; border-color:#089995;  width: 142px; height: 42px;">
	                                   		 	<div class="spinner-border text-secondary m-1" role="status" style="margin: 0;"> </div>
                                   		</a> -->
                                	</div>
                                </div>
                            </div>
                        </div>
                        <!--end modal-body-->
                    </div>
                    <!--end modal-content-->
                </div>
                <!--end modal-dialog-->
            </div>
            <!-- END SIGN-UP MODAL -->

			 <button id ="subscriptionSuccessModalBtn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderSuccessModal">
			 		 Launch demo modal
			</button> 
			<div class="modal fade" id="orderSuccessModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-body" style="display: flex; justify-content: center; align-items: center; height: 140px;">
					        	<p style="font-size: 20px;">청약신청이 성공적으로 완료되었습니다.</p>
					      </div>
					       <div class="modal-footer" style="    display: flex; justify-content: center; align-items: center; height: fit-content;">
						        <button id="closeBtn" type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="border: none; color: black; background-color: white; font-size: 19px;">닫기</button>
					       </div>
					    </div>
					  </div>
			</div> 

        </div>
        <!-- END layout-wrapper -->

        <!-- JAVASCRIPT -->
        <script src="/finalproject1/resources/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


        <!-- Choice Js -->
        <script src="/finalproject1/resources/libs/choices.js/public/assets/scripts/choices.min.js"></script>

        <!-- Swiper Js -->
        <script src="/finalproject1/resources/libs/swiper/swiper-bundle.min.js"></script>

        <!-- Index Js -->
        <script src="/finalproject1/resources/js/pages/job-list.init.js"></script>

        <!-- Switcher Js -->
        <script src="/finalproject1/resources/js/pages/switcher.init.js"></script>

        <script src="/finalproject1/resources/js/pages/index.init.js"></script>

        <!-- App Js -->
        <script src="/finalproject1/resources/js/app.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script type="text/javascript" src="/finalproject1/resources/js/loading-bar.js"></script>
		<script type="text/javascript" src="/finalproject1/resources/js/appToken.js"></script>
        <script>
        function numberToKorean(number){
            var inputNumber  = number < 0 ? false : number;
            var unitWords    = ['', '만', '억', '조', '경'];
            var splitUnit    = 10000;
            var splitCount   = unitWords.length;
            var resultArray  = [];
            var resultString = '';

            for (var i = 0; i < splitCount; i++){
                 var unitResult = (inputNumber % Math.pow(splitUnit, i + 1)) / Math.pow(splitUnit, i);
                unitResult = Math.floor(unitResult);
                if (unitResult > 0){
                    resultArray[i] = unitResult;
                }
            }

            for (var i = 0; i < resultArray.length; i++){
                if(!resultArray[i]) continue;
                resultString = String(resultArray[i]) + unitWords[i] + resultString;
            }

            return resultString;
        }
        
        function checkSubscription(){
        	fetch('${pageContext.request.contextPath}/getSubscriptionAmount?propertyNo=10030000').then(res=>res.json()).then(
        		response => {
        			console.log(response)
        			if(response != null){
        				if(response[0].SUM_DABS_AMOUNT == response[0].TOTAL_DABS){
        					 $('#cafe2_subscription_none').hide()
        					 $('#cafe2_subscription_done').show()
        					 $('#subscriptionBtn').hide()
        					 autoAlarm()
        				}
        			}
        		}		
        	)
        }
        checkSubscription()
        
        $('#subscriptionSuccessModalBtn').hide()
        $('#cafe2_subscription_done').hide()
       	function subscriptionProcess(){
        	$('#spinner').show()
        	let customerId = '${loginVO.id}'
        	let competitionPrice = $('#competitionPrice').text()
        	competitionPrice = competitionPrice.replaceAll(',','')
        	competitionPrice = competitionPrice.replaceAll('원','')
        	let subscriptionCnt = $('#subscriptionCnt').val()
        	let subscriptionPrice = $('#subscriptionPrice').val()
        	subscriptionPrice =  subscriptionPrice.replaceAll(',','')
        	subscriptionPrice =  subscriptionPrice.replaceAll('원','') 
        	fetch('${pageContext.request.contextPath}/subscriptionProcess',{
        			method : "POST",
        			headers:{"Content-Type" : "application/json"},
        			body : JSON.stringify({
        				propertyNo : $('#subscriptionPropertyNo').val(),
        				customerId: customerId,
        				competitionPrice : competitionPrice,
        				subscriptionCnt  :  subscriptionCnt,
        				subscriptionPrice : subscriptionPrice
                	})
        		}
        	).then((res)=> res.json()
        	).then(response=>{
        		console.log(response)
        		if(response != null){
        			$('#spinner').hide();
	    			$('#btnClose').trigger('click')
					$('#subscriptionSuccessModalBtn').trigger('click')
					checkSubscription()
        		}
        	})
        }
        
        	$('#subscriptionCnt').on('propertychange change keyup paste input',function(){
        		let cnt =  $('#subscriptionCnt').val()
        		$('#subscriptionPrice').val((cnt*5000).toLocaleString('ko-KR')+'원')
        	})
        
            function getSubscription(propertyNo) {
                fetch('${pageContext.request.contextPath}/getSubscriptionProperty?propertyNo='+propertyNo).then(
                    res => res.json()
                ).then(
                    response => {
                        console.log(response)
                        if (response != null) {
                        	$('#subscriptionPropertyNo').val(propertyNo)
                        	let totalDabs = numberToKorean(response[0].TOTAL_DABS*1)
                        	let SUBSCRIPTION_REMANET = numberToKorean(response[0].SUBSCRIPTION_REMANET*1)
                        	$('#subscriptionName').text(response[0].BUILDING_NAME)
                        	$('#subscriptionFullName').text(response[0].BUILDING_FULL_NAME)
                        	$('#pointHead1').text(''+response[0].POINT_HEAD1)
                        	$('#pointHead2').text(''+response[0].POINT_HEAD2)
                        	$('#pointHead3').text(''+response[0].POINT_HEAD3)
                        	$('#competitionPrice').text(response[0].COMPETITION_PRICE.toLocaleString('ko-KR')+' 원')
                        	$('#totalDABS').text(totalDabs+' 개')
                        	$('#subscriptionRemanet').text(SUBSCRIPTION_REMANET + ' 개')
                        	$('#competitionSum').text(((response[0].TOTAL_DABS)*(response[0].COMPETITION_PRICE)/100000000)+' 억원')
                        	$('#progressBar').text((response[0].SUBSCRIPTION_RATE).toFixed(2)+'%')
                        	$('#progressBar').css('width',response[0].SUBSCRIPTION_RATE+'%')
                        }
                    })
                    fetch('${pageContext.request.contextPath}/account/getBalance',{
                    	method:"POST",
                    	headers:{"Content-Type" : "application/json"},
                    	body : JSON.stringify({
                    		id : '${loginVO.id}'
                    	})
                    }).then(
                    	(res)=>res.json()		
                    ).then(
                    	response =>{
                    		if(response != null){
                    			$('#myBalance').text(" "+response.balance.toLocaleString('ko-KR')+" 원")
                    		}
                    	}		
                    )
                    
            }

            
            $(document).ready(function() {

                $('#prdy_ctrt').trigger('click')
            })

            $('#propertyNo').val('10000000')

            function changeSelect(val) {
            	console.log(val)
            	let data = val.split(',')
				$('#buildingNo').val(data[0])
				$('#propertyNo').val(data[1])
            }

            $('#prdy_ctrt').on('click', function() {
                var fids = ['138930', '006220', '046140']

                const APP_KEY = "PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
                const APP_SECRET = "8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

                const headers = {
                    "Content-Type": "application/json",
                    "authorization": 'Bearer ' + ACCESS_TOKEN,
                    "appKey": APP_KEY,
                    "appSecret": APP_SECRET,
                    "tr_id": "FHKST01010100",
                }
                try {
                    let propertyList = new Array();
                    for (i = 0; i < fids.length; i++) {
                        fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=' + fids[i], {
                            headers
                        }).then(
                            (res) => res.json()
                        ).then(response => {
                            if (response.output.stck_shrn_iscd == '138930') {
                                let property = new Object()
                                property.name = '합정하나가든타운'
                                property.img = 'cafe1.jpg'
                                property.location = '서울특별시 마포구 합정동'
                                property.distribution = '10월 31일'
                                property.prdy_ctrt = response.output.prdy_ctrt
                                property.stck_prpr = response.output.stck_prpr
                                propertyList.push(property)
                                //console.log('건물명 : 합정하나가든타운 '+'종목코드 : '+response.output.stck_shrn_iscd+' 등락률 :  '+response.output.prdy_ctrt+' 현재가 : ' +response.output.stck_prpr )

                            } else if (response.output.stck_shrn_iscd == '006220') {
                                var property = new Object()
                                property.name = '서초하나워커타워'
                                property.img = 'building1.jpg'
                                property.distribution = '11월 20일'
                                property.location = '서울특별시 서초구 서초동'
                                property.prdy_ctrt = response.output.prdy_ctrt
                                property.stck_prpr = response.output.stck_prpr
                                propertyList.push(property)
                                //console.log('건물명 : 서초하나워커타워 '+'종목코드 : '+response.output.stck_shrn_iscd+' 등락률 :  '+response.output.prdy_ctrt+' 현재가 : ' +response.output.stck_prpr )

                            } else if (response.output.stck_shrn_iscd == '046140') {
                                var property = new Object()
                                property.name = '김포하나물류창고'
                                property.img = 'warehouse1.jpg'
                                property.location = '경기도 김포시 구래동'
                                property.distribution = '9월 31일'
                                property.prdy_ctrt = response.output.prdy_ctrt
                                property.stck_prpr = response.output.stck_prpr
                                propertyList.push(property)
                                //console.log('건물명 : 김포하나물류창고 '+'종목코드 : '+response.output.stck_shrn_iscd+' 등락률 :  '+response.output.prdy_ctrt+' 현재가 : ' +response.output.stck_prpr )

                            }
                            if (propertyList.length === 3) {
                                for (i = 0; i < propertyList.length; i++) {
                                    for (j = 0; j < propertyList.length; j++) {
                                        if (propertyList[i].prdy_ctrt * 1 < propertyList[j].prdy_ctrt * 1) {
                                            res = propertyList[i]
                                            propertyList[i] = propertyList[j]
                                            propertyList[j] = res
                                        }
                                    }
                                }
                                //console.log(propertyList)
                                $('#propertyList').empty()
                                for (i = 0; i < propertyList.length; i++) {
                                    $('#propertyList').prepend('<div class="job-box bookmark-post card mt-4"><div class="bookmark-label text-center"><a href="javascript:void(0)"class="text-white align-middle"><i class="mdi mdi-star"></i></a></div><div class="p-4"><div class="row align-items-center"><div class="col-md-2"><div class="text-center mb-4 mb-md-0"><a href="company-details.html"><img src="/finalproject1/resources/images/featured-job/' + propertyList[i].img + '"alt=""class="img-fluid rounded-3"></a></div></div><!--end col--><div class="col-md-3"><div class="mb-2 mb-md-0"><h5 class="fs-18 mb-1">' + propertyList[i].name + '</h5></div></div><!--end col--><div class="col-md-3"><div class="d-flex mb-2"><div class="flex-shrink-0"><i class="mdi mdi-map-marker text-primary me-1"></i></div><p class="text-muted mb-0">' + propertyList[i].location + '</p></div></div><!--end col--><div class="col-md-2"><div><p class="text-muted mb-2">' + propertyList[i].prdy_ctrt + '%</p></div></div><!--end col--><div class="col-md-2"><div><span class="badge bg-soft-success fs-15 mt-0">현재가</span><span class="badge bg-soft-success fs-15 mt-0">' + propertyList[i].stck_prpr + '</span></div></div><!--end col--></div><!--end row--></div><div class="p-3 bg-light"><div class="row"><div class="col-md-4"><div><p class="text-muted mb-0"><span class="text-dark">배당예상일:</span>' + propertyList[i].distribution + '</p></div></div><!--end col--><div class="col-lg-6 col-md-5"></div><!--end col--><div class="col-lg-2 col-md-3"><div class="text-start text-md-end"><a href="#applyNow"data-bs-toggle="modal"class="primary-link">거래하러가기<i class="mdi mdi-chevron-double-right"></i></a></div></div><!--end col--></div><!--end row--></div></div><!--end job-box-->')
                                }

                            }
                        })
                    }
                } catch (error) {
                    console.log('error')
                } finally {}

            })


            $('#yield').on('click', function() {
                var fids = ['138930', '006220', '046140']

                const APP_KEY = "PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
                const APP_SECRET = "8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

                const headers = {
                    "Content-Type": "application/json",
                    "authorization": 'Bearer ' + ACCESS_TOKEN,
                    "appKey": APP_KEY,
                    "appSecret": APP_SECRET,
                    "tr_id": "FHKST01010100",
                }
                try {
                    let propertyList = new Array();
                    for (i = 0; i < fids.length; i++) {
                        fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=' + fids[i], {
                            headers
                        }).then(
                            (res) => res.json()
                        ).then(response => {
                            fetch('${pageContext.request.contextPath}/property?fid=' + response.output.stck_shrn_iscd).then(
                                (res) => res.json()
                            ).then(response2 => {
                                console.log(response2)
                                let property = new Object()
                                let fid = response2.fid
                                property = {
                                    [fid]: response2.yield
                                }
                                if (yield != null) {
                                    if (response.output.stck_shrn_iscd == '138930') {
                                        property.name = '합정하나가든타운'
                                        property.img = 'cafe1.jpg'
                                        property.location = '서울특별시 마포구 합정동'
                                        property.distribution = '10월 31일'
                                        property.yield = response2.yield
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '006220') {
                                        property.name = '서초하나워커타워'
                                        property.img = 'building1.jpg'
                                        property.distribution = '11월 20일'
                                        property.location = '서울특별시 서초구 서초동'
                                        property.yield = response2.yield
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '046140') {
                                        property.name = '김포하나물류창고'
                                        property.img = 'warehouse1.jpg'
                                        property.location = '경기도 김포시 구래동'
                                        property.distribution = '9월 31일'
                                        property.yield = response2.yield
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    }
                                    if (propertyList.length === 3) {
                                        for (i = 0; i < propertyList.length; i++) {
                                            for (j = 0; j < propertyList.length; j++) {
                                                if (propertyList[i].yield < propertyList[j].yield) {
                                                    res = propertyList[i]
                                                    propertyList[i] = propertyList[j]
                                                    propertyList[j] = res
                                                }
                                            }
                                        }
                                        console.log(propertyList)
                                        $('#propertyList').empty()
                                        for (i = 0; i < propertyList.length; i++) {
                                            $('#propertyList').prepend('<div class="job-box bookmark-post card mt-4"><div class="bookmark-label text-center"><a href="javascript:void(0)"class="text-white align-middle"><i class="mdi mdi-star"></i></a></div><div class="p-4"><div class="row align-items-center"><div class="col-md-2"><div class="text-center mb-4 mb-md-0"><a href="company-details.html"><img src="/finalproject1/resources/images/featured-job/' + propertyList[i].img + '"alt=""class="img-fluid rounded-3"></a></div></div><!--end col--><div class="col-md-3"><div class="mb-2 mb-md-0"><h5 class="fs-18 mb-1">' + propertyList[i].name + '</h5></div></div><!--end col--><div class="col-md-3"><div class="d-flex mb-2"><div class="flex-shrink-0"><i class="mdi mdi-map-marker text-primary me-1"></i></div><p class="text-muted mb-0">' + propertyList[i].location + '</p></div></div><!--end col--><div class="col-md-2"><div><p class="text-muted mb-2">' + propertyList[i].yield + '%</p></div></div><!--end col--><div class="col-md-2"><div><span class="badge bg-soft-success fs-15 mt-0">현재가</span><span class="badge bg-soft-success fs-15 mt-0">' + propertyList[i].stck_prpr + '</span></div></div><!--end col--></div><!--end row--></div><div class="p-3 bg-light"><div class="row"><div class="col-md-4"><div><p class="text-muted mb-0"><span class="text-dark">배당예상일:</span>' + propertyList[i].distribution + '</p></div></div><!--end col--><div class="col-lg-6 col-md-5"></div><!--end col--><div class="col-lg-2 col-md-3"><div class="text-start text-md-end"><a href="#applyNow"data-bs-toggle="modal"class="primary-link">거래하러가기<i class="mdi mdi-chevron-double-right"></i></a></div></div><!--end col--></div><!--end row--></div></div><!--end job-box-->')
                                        }

                                    }


                                }
                            })
                        })
                    }
                } catch (error) {
                    console.log('error')
                } finally {}
            })

            $('#avls').on('click', function() {
                var fids = ['138930', '006220', '046140']

                const APP_KEY = "PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
                const APP_SECRET = "8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

                const headers = {
                    "Content-Type": "application/json",
                    "authorization": 'Bearer ' + ACCESS_TOKEN,
                    "appKey": APP_KEY,
                    "appSecret": APP_SECRET,
                    "tr_id": "FHKST01010100",
                }
                try {
                    let propertyList = new Array();
                    for (i = 0; i < fids.length; i++) {
                        fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=' + fids[i], {
                            headers
                        }).then(
                            (res) => res.json()
                        ).then(response => {
                            fetch('${pageContext.request.contextPath}/property?fid=' + response.output.stck_shrn_iscd).then(
                                (res) => res.json()
                            ).then(response2 => {
                                console.log(response2)
                                let property = new Object()
                                if (response2.avls != null) {
                                    if (response.output.stck_shrn_iscd == '138930') {
                                        property.name = '합정하나가든타운'
                                        property.img = 'cafe1.jpg'
                                        property.location = '서울특별시 마포구 합정동'
                                        property.distribution = '10월 31일'
                                        property.avls = numberToKorean(response2.avls)
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '006220') {
                                        property.name = '서초하나워커타워'
                                        property.img = 'building1.jpg'
                                        property.distribution = '11월 20일'
                                        property.location = '서울특별시 서초구 서초동'
                                        property.avls = numberToKorean(response2.avls)
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '046140') {
                                        property.name = '김포하나물류창고'
                                        property.img = 'warehouse1.jpg'
                                        property.location = '경기도 김포시 구래동'
                                        property.distribution = '9월 31일'
                                        property.avls = numberToKorean(response2.avls)
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    }
                                    if (propertyList.length === 3) {
                                        for (i = 0; i < propertyList.length-1; i++) {
                                            for (j = i+1; j < propertyList.length; j++) {
                                                if (propertyList[i].avls < propertyList[j].avls) {
                                                    res = propertyList[i]
                                                    propertyList[i] = propertyList[j]
                                                    propertyList[j] = res
                                                }
                                            }
                                        }
                                        $('#propertyList').empty()
                                        for (i = 0; i < propertyList.length; i++) {
                                            var avls = propertyList[i].avls + ''
                                            $('#propertyList').prepend('<div class="job-box bookmark-post card mt-4"><div class="bookmark-label text-center"><a href="javascript:void(0)"class="text-white align-middle"><i class="mdi mdi-star"></i></a></div><div class="p-4"><div class="row align-items-center"><div class="col-md-2"><div class="text-center mb-4 mb-md-0"><a href="company-details.html"><img src="/finalproject1/resources/images/featured-job/' + propertyList[i].img + '"alt=""class="img-fluid rounded-3"></a></div></div><!--end col--><div class="col-md-3"><div class="mb-2 mb-md-0"><h5 class="fs-18 mb-1">' + propertyList[i].name + '</h5></div></div><!--end col--><div class="col-md-3"><div class="d-flex mb-2"><div class="flex-shrink-0"><i class="mdi mdi-map-marker text-primary me-1"></i></div><p class="text-muted mb-0">' + propertyList[i].location + '</p></div></div><!--end col--><div class="col-md-2"><div><p class="text-muted mb-2">' + avls+'</p></div></div><!--end col--><div class="col-md-2"><div><span class="badge bg-soft-success fs-15 mt-0">현재가</span><span class="badge bg-soft-success fs-15 mt-0">' + propertyList[i].stck_prpr + '</span></div></div><!--end col--></div><!--end row--></div><div class="p-3 bg-light"><div class="row"><div class="col-md-4"><div><p class="text-muted mb-0"><span class="text-dark">배당예상일:</span>' + propertyList[i].distribution + '</p></div></div><!--end col--><div class="col-lg-6 col-md-5"></div><!--end col--><div class="col-lg-2 col-md-3"><div class="text-start text-md-end"><a href="#applyNow"data-bs-toggle="modal"class="primary-link">거래하러가기<i class="mdi mdi-chevron-double-right"></i></a></div></div><!--end col--></div><!--end row--></div></div><!--end job-box-->')
                                        }

                                    }


                                }
                            })
                        })
                    }
                } catch (error) {
                    console.log('error')
                } finally {}

            })



            $('#acml_vol').on('click', function() {
                console.log('acml_vol')
                var fids = ['138930', '006220', '046140']

                const APP_KEY = "PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
                const APP_SECRET = "8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

                const headers = {
                    "Content-Type": "application/json",
                    "authorization": 'Bearer ' + ACCESS_TOKEN,
                    "appKey": APP_KEY,
                    "appSecret": APP_SECRET,
                    "tr_id": "FHKST01010100",
                }
                try {
                    let propertyList = new Array();
                    for (i = 0; i < fids.length; i++) {
                        fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=' + fids[i], {
                            headers
                        }).then(
                            (res) => res.json()
                        ).then(response => {
                            fetch('${pageContext.request.contextPath}/property?fid=' + response.output.stck_shrn_iscd).then(
                                (res) => res.json()
                            ).then(response2 => {
                                console.log(response2)
                                let property = new Object()
                                if (response2.acmlVOL != null) {
                                    if (response.output.stck_shrn_iscd == '138930') {
                                        property.name = '합정하나가든타운'
                                        property.img = 'cafe1.jpg'
                                        property.location = '서울특별시 마포구 합정동'
                                        property.distribution = '10월 31일'
                                        property.acmlVOL = response2.acmlVOL
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '006220') {
                                        property.name = '서초하나워커타워'
                                        property.img = 'building1.jpg'
                                        property.distribution = '11월 20일'
                                        property.location = '서울특별시 서초구 서초동'
                                        property.acmlVOL = response2.acmlVOL
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    } else if (response.output.stck_shrn_iscd == '046140') {
                                        property.name = '김포하나물류창고'
                                        property.img = 'warehouse1.jpg'
                                        property.location = '경기도 김포시 구래동'
                                        property.distribution = '9월 31일'
                                        property.acmlVOL = response2.acmlVOL
                                        property.stck_prpr = response.output.stck_prpr
                                        propertyList.push(property)

                                    }
                                    if (propertyList.length === 3) {
                                        for (i = 0; i < propertyList.length; i++) {
                                            for (j = 0; j < propertyList.length; j++) {
                                                if (propertyList[i].acmlVOL < propertyList[j].acmlVOL) {
                                                    res = propertyList[i]
                                                    propertyList[i] = propertyList[j]
                                                    propertyList[j] = res
                                                }
                                            }
                                        }
                                        $('#propertyList').empty()
                                        for (i = 0; i < propertyList.length; i++) {
                                            var acmlVOL = (propertyList[i].acmlVOL * 1).toLocaleString('ko-KR')
                                            $('#propertyList').prepend('<div class="job-box bookmark-post card mt-4"><div class="bookmark-label text-center"><a href="javascript:void(0)"class="text-white align-middle"><i class="mdi mdi-star"></i></a></div><div class="p-4"><div class="row align-items-center"><div class="col-md-2"><div class="text-center mb-4 mb-md-0"><a href="company-details.html"><img src="/finalproject1/resources/images/featured-job/' + propertyList[i].img + '"alt=""class="img-fluid rounded-3"></a></div></div><!--end col--><div class="col-md-3"><div class="mb-2 mb-md-0"><h5 class="fs-18 mb-1">' + propertyList[i].name + '</h5></div></div><!--end col--><div class="col-md-3"><div class="d-flex mb-2"><div class="flex-shrink-0"><i class="mdi mdi-map-marker text-primary me-1"></i></div><p class="text-muted mb-0">' + propertyList[i].location + '</p></div></div><!--end col--><div class="col-md-2"><div><p class="text-muted mb-2">' + acmlVOL + '</p></div></div><!--end col--><div class="col-md-2"><div><span class="badge bg-soft-success fs-15 mt-0">현재가</span><span class="badge bg-soft-success fs-15 mt-0">' + propertyList[i].stck_prpr + '</span></div></div><!--end col--></div><!--end row--></div><div class="p-3 bg-light"><div class="row"><div class="col-md-4"><div><p class="text-muted mb-0"><span class="text-dark">배당예상일:</span>' + propertyList[i].distribution + '</p></div></div><!--end col--><div class="col-lg-6 col-md-5"></div><!--end col--><div class="col-lg-2 col-md-3"><div class="text-start text-md-end"><a href="#applyNow"data-bs-toggle="modal"class="primary-link">거래하러가기<i class="mdi mdi-chevron-double-right"></i></a></div></div><!--end col--></div><!--end row--></div></div><!--end job-box-->')
                                        }

                                    }

                                }
                            })
                        })
                    }
                } catch (error) {
                    console.log('error')
                } finally {}
            })
        </script>

</body>

</html>
