<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="shortcut icon"
	href="/finalproject1/resources/images/favicon.ico">

<!-- Bootstrap Css -->
<link href="/finalproject1/resources/css/bootstrap.min.css"
	id="bootstrap-style" rel="stylesheet" type="text/css" />
<!-- Icons Css -->
<link href="/finalproject1/resources/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<!-- App Css-->
<link href="/finalproject1/resources/css/app.min.css" id="app-style"
	rel="stylesheet" type="text/css" />
<!--Custom Css-->
<link
	href="/finalproject1/resources/signature-pad-main//assets/jquery.signaturepad.css"
	rel="stylesheet">

<!-- App favicon -->

<!-- Choise Css -->
<link rel="stylesheet"
	href="/finalproject1/resources/libs/choices.js/public/assets/styles/choices.min.css">

<!-- Light Box Css -->
<link rel="stylesheet"
	href="/finalproject1/resources/libs/glightbox/css/glightbox.min.css">

<link rel="stylesheet"
	href="/finalproject1/resources/libs/swiper/swiper-bundle.min.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
.plusBtn:focus {
	border: none;
	outline: none;
}

.price {
	cursor: pointer;
}	

.slideBar{
		-webkit-appearance: none; 
	    width: 100%; 
	    height: 15px; 
	    border-radius: 20px; 
		background-color : #EAEAEA;
	    transition: background 450ms ease-in;
	    outline: none; 
	    
	}
	
.slideBar::-webkit-slider-thumb {
    -webkit-appearance: none; /* 기본 CSS 스타일을 적용하지 않기 위해서 */
    appearance: none; /* 기본 CSS 스타일을 적용하지 않기 위해서 */
    width: 25px; /* 슬라이더 핸들 길이 */
    height: 25px; /* 슬라이더 핸들 높이 */
    border-radius: 50%; /* 핸들 모양을 원모양으로 만들기 위함 */
    background: #089995; /* 슬라이더 핸들 색상 */
    cursor: pointer; /* 슬라이더 핸들에 마우스를 갖다대면 포인터로 변경 */
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

			<div class="page-content" style="margin-top: 120px;">

				<!--end col-->
				<!-- START CANDIDATE-DETAILS -->
				<section class="section">
					<div class="container">
						<div class="row">
							<h3 class="mb-4" style="color: black">${building.buildingName}</h3>
							<div class="col-lg-4">
								<div class="card side-bar">
									<div class="card-body" style="padding: 0;">

										<div class="row justify-content-center">
											<div class="col-lg-10" style="width: 100%;">
												<div class="swiper testimonialSlider">
													<div class="swiper-wrapper">

														<div class="swiper-slide">
															<div class="candidate-portfolio-box card border-0">
																<img
																	src="/finalproject1/resources/images/detail/${building.imageName1}"
																	alt="" class="img-fluid">
																<div class="bg-overlay"></div>
																<div class="zoom-icon">
																	<a
																		href="/finalproject1/resources/images/detail/${building.imageName1}"
																		class="image-popup text-white"><i
																		class="uil uil-search-alt"></i></a>
																</div>
															</div>
														</div>
														<!--end swiper-slide-->
														<div class="swiper-slide">
															<div class="candidate-portfolio-box card border-0">
																<img
																	src="/finalproject1/resources/images/detail/${building.imageName2}"
																	alt="" class="img-fluid">
																<div class="bg-overlay"></div>
																<div class="zoom-icon">
																	<a
																		href="/finalproject1/resources/images/detail/${building.imageName2}"
																		class="image-popup text-white"><i
																		class="uil uil-search-alt"></i></a>
																</div>
															</div>
														</div>
														<!--end swiper-slide-->
														<div class="swiper-slide">
															<div class="candidate-portfolio-box card border-0">
																<img
																	src="/finalproject1/resources/images/detail/${building.imageName3}"
																	alt="" class="img-fluid">
																<div class="bg-overlay"></div>
																<div class="zoom-icon">
																	<a
																		href="/finalproject1/resources/images/detail/${building.imageName3}"
																		class="image-popup text-white"><i
																		class="uil uil-search-alt"></i></a>
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
										</div>
									</div>
									<!--end candidate-profile-->

									<div
										class="candidate-profile-overview  card-body border-top p-4">
										<h6 class="fs-17 fw-semibold mb-3">
											<i class="fa-solid fa-building"
												style="margin-right: 5px; font-size: 18px; color: #008299"></i>빌딩정보
										</h6>
										<ul class="list-unstyled mb-0">
											<li>
												<div class="d-flex">
													<label class="text-dark">규모</label>
													<div>
														<p class="text-muted mb-0">${building.scale}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">거래대상</label>
													<div>
														<p class="text-muted mb-0">${property.propertyName}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">연면적</label>
													<div>
														<p class="text-muted mb-0">${building.totalFloorArea}(㎡)</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">거래 연면적</label>
													<div>
														<p class="text-muted text-break mb-0">${property.propertyArea }(㎡)</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">건폐율</label>
													<div>
														<p class="text-muted mb-0">${building.coverageRatio}%</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">용적률</label>
													<div>
														<p class="text-muted mb-0">${building.floorAreaRatio}%</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">주용도</label>
													<div>
														<p class="text-muted mb-0">${building.buildingPurpose}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">준공년월</label>
													<div>
														<p class="text-muted mb-0">${building.buildDate}</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!--candidate-profile-overview-->

									<div
										class="candidate-profile-overview  card-body border-top p-4">
										<h6 class="fs-17 fw-semibold mb-3">
											<i class="fa-solid fa-mountain-city"
												style="margin-right: 5px; font-size: 18px; color: #997000;"></i>토지정보
										</h6>
										<ul class="list-unstyled mb-0">
											<li>
												<div class="d-flex">
													<label class="text-dark">주소</label>
													<div>
														<p class="text-muted mb-0">${building.buildingAddress}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">용도지역</label>
													<div>
														<p class="text-muted mb-0">${building.landPurpose}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">전체 대지면적</label>
													<div>
														<p class="text-muted mb-0">${building.landArea}(㎡)</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">거래 대지면적</label>
													<div>
														<p class="text-muted text-break mb-0">${property.propertyLandArea}(㎡)</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!--candidate-profile-overview-->


									<div
										class="candidate-profile-overview  card-body border-top p-4">
										<h6 class="fs-17 fw-semibold mb-3">
											<i class="fa-solid fa-user"
												style="margin-right: 5px; font-size: 18px; color: #2F9D27;"></i>임차인
											정보
										</h6>
										<ul class="list-unstyled mb-0">
											<li>
												<div class="d-flex">
													<label class="text-dark">임차인</label>
													<div>
														<p class="text-muted mb-0">${tenant.tenantName}</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">업종</label>
													<div>
														<p class="text-muted mb-0">${tenant.business }</p>
													</div>
												</div>
											</li>
											<li>
												<div class="d-flex">
													<label class="text-dark">게약기간</label>
													<div>
														<p class="text-muted text-break mb-0">${tenant.contract}</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<!--candidate-profile-overview-->



									<div class="card-body p-4 border-top">
										<h6 class="fs-17 fw-semibold mb-4">
											<i class="fa-brands fa-periscope"
												style="margin-right: 5px; font-size: 18px; color: #C9AE00;"></i>위치
										</h6>
											<iframe src="https://www.google.com/maps/embed?pb=${building.map}" style="width: 100%" height="250" allowfullscreen=""
											loading="lazy"></iframe>
									</div>
								</div>
								<!--end card-->
							</div>
							<!--end col-->

							<div class="col-lg-8">
								<div class="card ms-lg-4 mt-4 mt-lg-0">
									<div class="card-body p-4">
										<div class="mb-5" style="margin-top: 10px; padding-top: 10px;">
											<h6 class="fs-17 fw-semibold mb-4" style="font-size: 27px;">
												<i class="fa-solid fa-meteor"
													style="font-size: 25px; margin-right: 8px; margin-bottom: 8px;"></i>투자
												포인트
											</h6>
											<div class="candidate-education-content mt-4 d-flex"
												style="margin-bottom: 0">
												<div class="circle flex-shrink-0 bg-soft"
													style="margin-bottom: 0; background-color: #D9E5FF;">
													<i class="fa-solid fa-train-subway fa-beat-fade" style="color: #6799FF; --fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
												<div class="ms-4">
													<h6 class="fs-16 mb-2">${property.pointHead1}</h6>
													<p class="text-muted">${property.pointDetail1}</p>
												</div>
											</div>
											<div class="candidate-education-content mt-3 d-flex">
												<div class="circle flex-shrink-0 bg-soft-primary">
													<i class="fa-solid fa-arrow-trend-up fa-beat-fade" style="--fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
												<div class="ms-4">
													<h6 class="fs-16 mb-2">${property.pointHead2}</h6>
													<p class="text-muted">${property.pointDetail2}</p>
												</div>
											</div>
											<div class="candidate-education-content mt-3 d-flex">
												<div class="circle flex-shrink-0 bg-soft"
													style="background-color: #FFD9EC;">
													<i class="fa-solid fa-user-shield fa-beat-fade" style="color: #F361A6; --fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
												<div class="ms-4">
													<h6 class="fs-16 mb-2">${property.pointHead3}</h6>
													<p class="text-muted">${property.pointDetail3}</p>
												</div>
											</div>
										</div>

										<div class="candidate-portfolio mb-0">
											<h6 class="fs-17 fw-semibold mb-2" style="font-size: 27px;">
												<i class="fa-solid fa-chart-line"
													style="font-size: 25px; margin-right: 8px; margin-bottom: 8px;"></i>차트
											</h6>
											<div class="row g-3">
												<ul
													class="profile-content-nav nav nav-pills border-bottom mb-4"
													id="pills-tab" role="tablist">
													<li class="nav-item" role="presentation">
														<button class="nav-link active" id="candle"
															data-bs-toggle="pill" type="button" aria-selected="true">
															캔들차트</button>
													</li>
													<li class="nav-item" role="presentation">
														<button class="nav-link" id="line" data-bs-toggle="pill"
															type="button" aria-selected="false">라인차트</button>
													</li>
													<li class="nav-item" role="presentation">
														<button class="nav-link" id="propertyPrice" data-bs-toggle="pill"
															type="button" aria-selected="false">부동산 시세확인</button>
													</li>
												</ul>

												<div id="candleChart" style="margin: 0">
													<div id="chart"></div>
												</div>
												<div id="lineChart">
													<div id="chart2" style="margin: 0"></div>
												</div>
											</div>
										</div>
										<!-- end portfolio -->

										<div class="candidate-portfolio mb-5"
											style="margin-top: 20px;">
											<h6 class="fs-17 fw-semibold mb-4" style="font-size: 27px;">
												<i class="fa-solid fa-file-signature"
													style="font-size: 25px; margin-right: 8px; margin-bottom: 16px;"></i>주문
											</h6>
											<div class="row g-3">
												<div class="row justify-content-center">
													<div class="col-lg-6">
														<ul
															class="job-list-menu nav nav-pills nav-justified flex-column flex-sm-row mb-0"
															id="pills-tab" role="tablist">
															<li class="nav-item" role="presentation">
																<button class="nav-link active" id="bidAskBtn"
																	data-bs-toggle="pill" data-bs-target="#recent-jobs"
																	type="button" role="tab" aria-controls="recent-jobs"
																	aria-selected="true">호가</button>
															</li>
															<li class="nav-item" role="presentation">
																<button class="nav-link" id="realTimeBtn"
																	data-bs-toggle="pill" data-bs-target="#featured-jobs"
																	type="button" role="tab" aria-controls="featured-jobs"
																	aria-selected="false">실시간</button>
															</li>
															<li class="nav-item" role="presentation">
																<button class="nav-link" id="dailyBtn"
																	data-bs-toggle="pill" data-bs-target="#freelancer"
																	type="button" role="tab" aria-controls="freelancer"
																	aria-selected="false">일별</button>
															</li>
														</ul>
														<div id="bidAsk"
															style="overflow: auto; height: 350px; border: 1px solid #EAEAEA; margin-top: 0; border-radius: 5px;">
															<table
																style="width: 100%; height: 400px; border-collapse: collapse; text-align: center; table-layout: fixed;">
																<tr style="border: 1px solid #EAEAEA;">
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp10_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;"></div></td>
																	<td class="price" id="askp10"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF; cursor: pointer;"></td>
																	<td rowspan="10">
																		<div
																			style="display: flex; flex-direction: column; margin: 0; padding: 0; margin-top: 120px; text-align: left;">
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_oprc" class="text-muted mb-0"
																					style="margin: 0; padding: 0; font-size: 14px;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_hgpr" class="text mb-0"
																					style="margin: 0; padding: 0; color: red; font-size: 14px;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_lwpr" class="text mb-0"
																					style="margin: 0; padding: 0; color: blue; font-size: 14px;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_mxpr" class="text mb-0"
																					style="margin: 0; padding: 0; color: red; font-size: 14px;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_llam" class="text mb-0"
																					style="margin: 0; padding: 0; color: blue; font-size: 14px;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="stck_sdpr" class="text-muted mb-0"
																					style="margin: 0; padding: 0; font-size: 14px;"></p>
																			</div>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp9_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">100</div></td>
																	<td class="price" id="askp9"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp8_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">250</div></td>
																	<td class="price" id="askp8"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp7_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">120</div></td>
																	<td class="price" id="askp7"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp6_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">242</div></td>
																	<td class="price" id="askp6"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp5_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">401</div></td>
																	<td class="price" id="askp5"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp4_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">140</div></td>
																	<td class="price" id="askp4"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp3_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">140</div></td>
																	<td class="price" id="askp3"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp2_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">392</div></td>
																	<td class="price" id="askp2"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: right; display: flex; justify-content: flex-end;"><div
																			id="askp1_balance"
																			style="background-color: #C4DEFF; width: 40%; height: 70%; font-size: 12px;">
																			800</div></td>
																	<td class="price" id="askp1"
																		style="border: 1px solid #EAEAEA; background-color: #C4DEFF;"></td>
																</tr>
																<tr>
																	<td rowspan="10">
																		<div
																			style="display: flex; flex-direction: column; margin: 0; padding: 0; margin-bottom: 180px; text-align: right;">
																			<div style="margin: 0; padding: 0;">
																				<p id="avls" class="text-muted mb-0"
																					style="margin: 0; padding: 0; font-size: 13px; white-space: nowrap; font-weight: 700;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="acmlTrPbmn" class="text-muted mb-0"
																					style="margin: 0; padding: 0; font-size: 13px; font-weight: 700;"></p>
																			</div>
																			<div style="margin: 0; padding: 0;">
																				<p id="acmlVol" class="text-muted mb-0"
																					style="margin: 0; padding: 0; font-size: 13px; font-weight: 700;"> </p>
																			</div>
																		</div>
																	</td>
																	<td class="price" id="bidp1"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp1_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;">s</div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp2"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp2_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp3"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp3_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp4"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp4_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp5"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp5_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp6"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp6_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp7"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp7_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp8"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp8_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp9"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp9_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>
																<tr>
																	<td class="price" id="bidp10"
																		style="border: 1px solid #EAEAEA; background-color: #FFDDDD;"></td>
																	<td
																		style="border: 1px solid #EAEAEA; text-align: left;"><div
																			id="bidp10_balance"
																			style="background-color: #FFDDDD; width: 40%; height: 70%; font-size: 12px;"></div></td>
																</tr>

															</table>

														</div>
														<div id="realTime"
															style="overflow: auto; height: 350px; border: 1px solid #EAEAEA; margin-top: 0; border-radius: 5px;">
																<table  class="table" style="text-align: center; table-layout: fixed; font-size: 13px;">
																		  <thead>
																		    <tr>
																		      <th scope="col">시간</th>
																		      <th scope="col">체결가</th>
																		      <th scope="col">체결량</th>
																		    </tr>
																		  </thead>
																		  <tbody id="realtime_tbody">
																		 	
																		  </tbody>
																</table>
															</div>
															<div id="daily"
															style="overflow: auto; height: 350px; border: 1px solid #EAEAEA; margin-top: 0; border-radius: 5px;">
																<table class="table" style="text-align: center; table-layout: fixed; font-size: 13px;">
																		  <thead>
																		    <tr>
																		      <th scope="col">일자</th>
																		      <th scope="col">익일기준가</th>
																		      <th scope="col">거래량</th>
																		    </tr>
																		  </thead>
																		  <tbody id="daily_tbody">
																		 	
																		  </tbody>
																</table>
															</div>
													</div>
													<!--end col-->
													<div class="col-lg-6">
														<ul
															class="job-list-menu nav nav-pills nav-justified flex-column flex-sm-row mb-0"
															id="pills-tab" role="tablist">
															<li class="nav-item" role="presentation">
																<button class="nav-link active" id="buy-tab"
																	data-bs-toggle="pill" data-bs-target="#buy"
																	type="button" role="tab" aria-controls="recent-jobs"
																	aria-selected="true">매수</button>
															</li>
															<li class="nav-item" role="presentation">
																<button class="nav-link" id="sell-tab"
																	data-bs-toggle="pill" data-bs-target="#sell"
																	type="button" role="tab" aria-controls="featured-jobs"
																	aria-selected="false">매도</button>
															</li>
															<li class="nav-item" role="presentation">
																<button class="nav-link" id="freelancer-tab"
																	data-bs-toggle="pill" data-bs-target="#freelancer"
																	type="button" role="tab" aria-controls="freelancer"
																	aria-selected="false">주문</button>
															</li>
														</ul>
														<div id="buy"
															style="overflow: auto; height: 350px; border: 1px solid #EAEAEA; margin-top: 0; border-radius: 5px; display: flex; justify-content: space-around; align-items: center; flex-direction: column;">
															<div
																style="border-radius: 5px; margin-top: 5px; border: none; background-color: #EEEEEE; width: 88%; height: 40px; display: flex; justify-content: center; align-items: center;">
																<c:if test="${empty account}">
																	<p style="margin-bottom: 0;">거래 가능 시간 (평일 09:00 ~17:00)</p>
																</c:if>
																<c:if test="${not empty account}">
																	<p style="margin-bottom: 0;">거래 가능 금액: <div id="accountBalance"><fmt:formatNumber value="${account.balance}" pattern="#,###" /></div>원</p>
																</c:if>
															</div>
															<div
																style="margin-bottom: 3px; height: 50px; border: 1px solid #EAEAEA; width: 88%; border-radius: 5px; display: flex; align-items: center;">
																<p
																	style="font-size: 16px; margin-bottom: 0; margin-left: 4px;">가격</p>
																<input id="stck_prpr1"
																	style="margin-left: 22px; outline: none; margin-bottom: 0; text-align: right; border: none; height: 100%; width: 50%;"
																	type="text" />
																<div id="btn_minus_stck_prpr1"
																	style="padding: 0px; margin: 0px; margin-left: 3px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">-</button>
																</div>
																<div id="btn_plus_stck_prpr1"
																	style="padding: 0px; margin: 0px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">+</button>
																</div>
															</div>
															<div
																style="margin-bottom: 15px; height: 50px; border: 1px solid #EAEAEA; width: 88%; border-radius: 5px; display: flex; align-items: center;">
																<p
																	style="font-size: 16px; margin-bottom: 0; margin-left: 4px;">수량</p>
																<input id="cnt_stck_prpr1"
																	style="margin-left: 22px; outline: none; margin-bottom: 0; text-align: right; border: none; height: 100%; width: 50%;"
																	type="text" value="0"/>
																<div id="btn_minus_cnt_stck_prpr1"
																	style="padding: 0px; margin: 0px; margin-left: 3px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">-</button>
																</div>
																<div id="btn_plus_cnt_stck_prpr1"
																	style="padding: 0px; margin: 0px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">+</button>
																</div>
															</div>
															<div
																style="border-radius: 5px; border: none; background-color: #FFEFEF; width: 88%; display: flex; height: 60px; align-items: center; justify-content: space-between;">
																<p
																	style="font-size: 17px; margin-left: 7px; margin-bottom: 0; color: #FF4848;">주문총액</p>
																<p id="total_price1"
																	style="margin-right: 7px; margin-bottom: 0; text-align: right; color: #FF4848; font-size: 19px; font-weight: 700;">0 원</p>
															</div>
															<div
																style="margin-bottom: 0; border-radius: 5px; border: none; width: 88%; display: flex; height: 60px; align-items: center; justify-content: center;">
																<button
																	style="border-radius: 5px; height: 50px; border: none; width: 35%; background-color: #A6A6A6; margin-right: 4px; color: white;"
																	onclick="reset()">초기화</button>
																<a  href="#checkAccountModal2" data-bs-toggle="modal"
																	style="border-radius: 5px; height: 50px; border: none; width: 65%; background-color: #FFA2A2; color: white;  display: flex; align-items: center; justify-content: center;">
																		<div>주문하기</div>
																	</a>
															</div>
														</div>
														<div id="sell"
															style="overflow: auto; height: 350px; border: 1px solid #EAEAEA; margin-top: 0; border-radius: 5px; display: flex; justify-content: space-around; align-items: center; flex-direction: column;">
															<div
																style="border-radius: 5px; margin-top: 5px; border: none; background-color: #EEEEEE; width: 88%; height: 40px; display: flex; justify-content: center; align-items: center;">
																<p style="margin-bottom: 0;" id="dabsCnt">거래 가능 시간 (평일 09:00 ~
																	17:00)</p>
															</div>
															<div
																style="margin-bottom: 3px; height: 50px; border: 1px solid #EAEAEA; width: 88%; border-radius: 5px; display: flex; align-items: center;">
																<p
																	style="font-size: 16px; margin-bottom: 0; margin-left: 4px;">가격</p>
																<input id="stck_prpr2"
																	style="margin-left: 22px; outline: none; margin-bottom: 0; text-align: right; border: none; height: 100%; width: 50%;"
																	type="text" />
																<div id="btn_minus_stck_prpr2"
																	style="padding: 0px; margin: 0px; margin-left: 3px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">-</button>
																</div>
																<div id="btn_plus_stck_prpr2"
																	style="padding: 0px; margin: 0px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">+</button>
																</div>
															</div>
															<div
																style="margin-bottom: 15px; height: 50px; border: 1px solid #EAEAEA; width: 88%; border-radius: 5px; display: flex; align-items: center;">
																<p
																	style="font-size: 16px; margin-bottom: 0; margin-left: 4px;">수량</p>
																<input id="cnt_stck_prpr2"
																	style="margin-left: 22px; outline: none; margin-bottom: 0; text-align: right; border: none; height: 100%; width: 50%;"
																	type="text" value="0" />
																<div id="btn_minus_cnt_stck_prpr2"
																	style="padding: 0px; margin: 0px; margin-left: 3px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">-</button>
																</div>
																<div id="btn_plus_cnt_stck_prpr2"
																	style="padding: 0px; margin: 0px; height: 100%; display: inline; border-left: 2px solid #EAEAEA; display: flex; justify-content: center; width: 14%;">
																	<button
																		style="font-size: 20px; width: 100%; height: 100%; background: none; border: none;">+</button>
																</div>
															</div>
															<div
																style="border-radius: 5px; border: none; background-color: #D4F4FA; width: 88%; display: flex; height: 60px; align-items: center; justify-content: space-between;">
																<p
																	style="font-size: 17px; margin-left: 7px; margin-bottom: 0; color: #6799FF;">주문총액</p>
																<p id="total_price2"
																	style="margin-right: 7px; margin-bottom: 0; text-align: right; color: #6799FF; font-size: 19px; font-weight: 700;">0 원</p>
															</div>
															<div
																style="margin-bottom: 0; border-radius: 5px; border: none; width: 88%; display: flex; height: 60px; align-items: center; justify-content: center;">
																<button
																	style="border-radius: 5px; height: 50px; border: none; width: 35%; background-color: #A6A6A6; margin-right: 4px; color: white;"
																	onclick="reset()">초기화</button>
																<a href="#checkAccountModal" data-bs-toggle="modal"
																	style="border-radius: 5px; height: 50px; border: none; width: 65%; background-color: #376DEA; color: white;  display: flex; align-items: center; justify-content: center;">
																		<div>주문하기</div>
																	</a>
															</div>
														</div>

													</div>
												</div>
											</div>
										</div>
										<!-- end portfolio -->

										<div>
											<h6 class="fs-17 fw-semibold mb-4" style="font-size: 27px;">
												<i class="fa-solid fa-file-signature"
													style="font-size: 25px; margin-right: 8px; margin-bottom: 8px;"></i>배당
											</h6>
											<div class="job-box bookmark-post card mt-4">
												<div class="p-4">
													<div class="row">
														<div class="col-lg-10">
															<div class="mt-3 mt-lg-0">
																<h5 class="fs-17 mb-1" id="moneyAmount">
																	5,000원 매수하면
																</h5>
																<div class="mt-2">
																	 <input class="slideBar" type="range" min="0" max="100" value="0" step="10" style=" width: 70%;">
																</div>
																<div class="mt-2">
																	<span class="badge bg-soft-success mt-1">배당수익률 연 ${property.yield}%</span> 
																	<span class="badge bg-soft-warning mt-1">배당주기 한달배당</span>
																</div>
															</div>
														</div>
														<!--end col-->
													</div>
													<!--end row-->
													<div class="favorite-icon">
														<a href="javascript:void(0)"><i class="fa-solid fa-won-sign" style="color: white; font-size: 15px;"></i></a>
													</div>
												</div>
												<div class="p-3 bg-light">
													<div class="row justify-content-between">
														<div class="col-md-8">
															<div>
																<ul class="list-inline mb-0">
																	<li class="list-inline-item"> <h5 class="fs-17 mb-1">예상 연 배당수익</h5> </li>
																</ul>
															</div>
														</div>
														<!--end col-->
														<!--end col-->
														<div class="col-md-4">
															<div class="text-md-end">
																<ul class="list-inline mb-0">
																	<li class="list-inline-item"> <h5 class="fs-17 mb-1" id="moneyAmountTotal">${fn:substring(property.yield*5000*0.001*12,0,3)} 원</h5> </li>
																</ul>
															</div>
														</div>
														<!--end col-->
													</div>
													<!--end row-->
												</div>
											</div>
											<!--end job-box-->


										</div>
									</div>
									<!-- card body end -->
								</div>
								<!--end card-->
							</div>
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<!-- END CANDIDATE-DETAILS -->

				
				<!-- END APPLY MODAL -->

                                   <!-- SIMPLE MODALS -->
                                   <div id="checkAccountModal" class="modal fade" tabindex="-1" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                       <div class="modal-dialog modal-dialog-centered">
                                           <div class="modal-content">
                                               <div class="modal-header">
                                                   <h5 class="modal-title mt-0" id="myModalLabel">계좌비밀번호 입력</h5>
                                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                               </div>
                                               <div id="accountModalbody" class="modal-body">
                                                   <div class="form-floating">
														  <input type="password" class="form-control" id="accountPassword" placeholder="Password">
														  <label for="floatingPassword">비밀번호를 입력하세요</label>
													</div>
                                               </div>
                                               <div class="modal-footer">
                                                   <button type="button" class="btn btn-secondary waves-effect" data-bs-dismiss="modal">뒤로가기</button>
				                                    <button  id="orderBtn2" type="button" class="btn btn-primary waves-effect waves-light" data-bs-target="#bidOrderModal2" data-bs-toggle="modal" style="display: none;">확인</button>
                                                   <a  id="checkAccountBtn" type="button" class="btn btn-primary waves-effect waves-light" onclick="checkAccount()">확인</a>
                                               </div>
                                           </div><!-- /.modal-content -->
                                       </div><!-- /.modal-dialog -->
                                   </div><!-- SIMPLE MODALS -->
                                                 <div id="checkAccountModal2" class="modal fade" tabindex="-1" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                       <div class="modal-dialog modal-dialog-centered">
                                           <div class="modal-content">
                                               <div class="modal-header">
                                                   <h5 class="modal-title mt-0" id="myModalLabel">계좌비밀번호 입력</h5>
                                                   <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                               </div>
                                               <div id="accountModalbody2" class="modal-body">
                                                   <div class="form-floating">
														  <input type="password" class="form-control" id="accountPassword2" placeholder="Password">
														  <label for="floatingPassword">비밀번호를 입력하세요</label>
													</div>
                                               </div>
                                               <div class="modal-footer">
                                                   <button type="button" class="btn btn-secondary waves-effect" data-bs-dismiss="modal">뒤로가기</button>
				                                    <button  id="orderBtn" type="button" class="btn btn-primary waves-effect waves-light" data-bs-target="#bidOrderModal" data-bs-toggle="modal" style="display: none;">확인</button>
                                                   <a  id="checkAccountBtn" type="button" class="btn btn-primary waves-effect waves-light" onclick="checkAccount2()">확인</a>
                                               </div>
                                           </div><!-- /.modal-content -->
                                       </div><!-- /.modal-dialog -->
                                   </div><!-- SIMPLE MODALS -->
			</div>
			<!-- End Page-content -->
			<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>

			<!-- Style switcher -->
			<div id="style-switcher" onclick="toggleSwitcher()"
				style="left: -165px;">
				<div>
					<h6>Select your color</h6>
					<ul class="pattern list-unstyled mb-0">
						<li><a class="color-list color1" href="javascript: void(0);"
							onclick="setColorGreen()"></a></li>
						<li><a class="color-list color2" href="javascript: void(0);"
							onclick="setColor('blue')"></a></li>
						<li><a class="color-list color3" href="javascript: void(0);"
							onclick="setColor('purple')"></a></li>
					</ul>
					<div class="mt-3">
						<h6>Light/dark Layout</h6>
						<div class="text-center mt-3">
							<!-- light-dark mode -->
							<a href="javascript: void(0);" id="mode"
								class="mode-btn text-white rounded-3"> <i
								class="uil uil-brightness mode-dark mx-auto"></i> <i
								class="uil uil-moon mode-light"></i>
							</a>
							<!-- END light-dark Mode -->
						</div>
					</div>
				</div>
				<div class="bottom">
					<a href="javascript: void(0);" class="settings rounded-end"><i
						class="mdi mdi-cog mdi-spin"></i></a>
				</div>
			</div>
			<!-- end switcher-->

			<!--start back-to-top-->
			<button onclick="topFunction()" id="back-to-top">
				<i class="mdi mdi-arrow-up"></i>
			</button>
			<!--end back-to-top-->
		</div>
	</div>
	<!-- end main content-->
	
	         <!-- START SIGN-UP MODAL -->
            <div class="modal fade" id="bidOrderModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" style="width: 85%;">
                        <div class="modal-body p-5">
                            <div class="position-absolute end-0 top-0 p-3">
                                <button id="btn-close1" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="auth-content">
                                <div class="w-70">
                                    <div class="mb-4" style="text-align: left;">
                                        <h3>매수주문 확인</h3>
                                        <hr>
                                    </div>
                                    <form action="${pageContext.request.contextPath}/member/login" class="auth-form" method="post">
                                    	<input  type="hidden" name="orderType"  id="orderType"  value="매수" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                    	<input  type="hidden" name="customerId"  id="customerId"  value="${loginVO.id}" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">빌딩명</label>
                                            <input  readonly="readonly" type="text" name="buildingName"  id="buildingName"  value="${building.buildingName}" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                         <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">가격</label>
                                            <input  readonly="readonly" type="text" name="orderPrice"  id="orderPrice"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">수량</label>
                                            <input  readonly="readonly" type="text" name="dabsAmount"  id="dabsAmount"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">주문금액</label>
                                            <input  readonly="readonly" type="text" name="totalPrice"  id="totalPrice"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                          <div class="mb-3">
													<hr>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">수수료</label>
                                            <input  readonly="readonly" type="text" name="commission"  id="commission"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-5">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">정산금액</label>
                                            <input  readonly="readonly" type="text" name="calculatePrice"  id="calculatePrice"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                       
                                        <!-- <div class="mb-4">
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">I agree to the <a href="javascript:void(0)" class="text-primary form-text text-decoration-underline">Terms and conditions</a></label>
                                            </div>
                                        </div> -->
                                        <div class="text-center">
                                            <button type="button" class="btn btn-primary w-100" style="background-color: #EB4655; border-color: #EB4655;  display: flex; justify-content: center; align-items: center; height: 48px; border: none;" onclick="buy()">매수하기<div id="spinner1" class="spinner-border text-secondary m-1" role="status" style="margin: 0; display: none;"> </div></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div><!--end modal-body-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div>
            
             <div class="modal fade" id="bidOrderModal2" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" style="width: 85%;">
                        <div class="modal-body p-5">
                            <div class="position-absolute end-0 top-0 p-3">
                                <button id="btn-close1" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="auth-content">
                                <div class="w-70">
                                    <div class="mb-4" style="text-align: left;">
                                        <h3>매도주문 확인</h3>
                                        <hr>
                                    </div>
                                    <form action="${pageContext.request.contextPath}/member/login" class="auth-form" method="post">
                                    	<input  type="hidden" name="orderType"  id="orderType2"  value="매도" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                    	<input  type="hidden" name="customerId"  id="customerId2"  value="${loginVO.id}" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">빌딩명</label>
                                            <input  readonly="readonly" type="text" name="buildingName"  id="buildingName2"  value="${building.buildingName}" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                         <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">가격</label>
                                            <input  readonly="readonly" type="text" name="orderPrice"  id="orderPrice2"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">수량</label>
                                            <input  readonly="readonly" type="text" name="dabsAmount"  id="dabsAmount2"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">주문금액</label>
                                            <input  readonly="readonly" type="text" name="totalPrice"  id="totalPrice2"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                          <div class="mb-3">
											<hr>
                                        </div>
                                        <div class="mb-3">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">수수료</label>
                                            <input  readonly="readonly" type="text" name="commission"  id="commission2"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                        <div class="mb-5">
                                            <label class="text-muted" for="usernameInput" style="text-align: left; width: 30%; font-weight: 700;">정산금액</label>
                                            <input  readonly="readonly" type="text" name="calculatePrice"  id="calculatePrice2"  value="" style="border: none; text-align: right; width: 68%; pointer-events: none; font-weight: 700;" >
                                        </div>
                                       
                                        <!-- <div class="mb-4">
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="flexCheckDefault">
                                                <label class="form-check-label" for="flexCheckDefault">I agree to the <a href="javascript:void(0)" class="text-primary form-text text-decoration-underline">Terms and conditions</a></label>
                                            </div>
                                        </div> -->
                                        <div class="text-center">
                                            <button type="button" class="btn btn-primary w-100" style="background-color: #376DEA; border-color: #376DEA; display: flex; justify-content: center; align-items: center; height: 48px; border: none;" onclick="sell()">매도하기<div id="spinner2" class="spinner-border text-secondary m-1" role="status" style="margin: 0; display: none;"> </div></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div><!--end modal-body-->
                    </div><!--end modal-content-->
                </div><!--end modal-dialog-->
            </div>
			
			
			
			
			
			
			
			
			
			<button id ="orderSuccessModalBtn" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#orderSuccessModal">
			 		 Launch demo modal
			</button> 
			<div class="modal fade" id="orderSuccessModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-body" style="display: flex; justify-content: center; align-items: center; height: 140px;">
					        	<p style="font-size: 20px;">주문이 성공적으로 완료되었습니다.</p>
					      </div>
					       <div class="modal-footer" style="    display: flex; justify-content: center; align-items: center; height: fit-content;">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" style="border: none; color: black; background-color: white; font-size: 19px;">닫기</button>
					       </div>
					    </div>
					  </div>
			</div>           
			
			
	<!-- END layout-wrapper -->

	<!-- JAVASCRIPT -->
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

	
	function getAcml(){
		
		const urlParams = new URL(location.href).searchParams;
		
 		const propertyNo = urlParams.get('propertyNo');
 		
 		fetch('${pageContext.request.contextPath}/building/getAcml?propertyNo='+propertyNo).then(res=>res.json()).then(response=>{
 			if(response.response != 'false'){
	 			$('#acmlTrPbmn').text(numberToKorean(response.SUM_ORDER_PRICE)+' 대금')
	 			$('#acmlVol').text(numberToKorean(response.SUM_DABS_AMOUNT)+' 거래량')
 			}else{
 				$('#acmlTrPbmn').text('0 대금')
	 			$('#acmlVol').text('0 거래량')
 			}
 		})
	}
	 getAcml()
	 
	$('#orderSuccessModalBtn').hide()
	
	$('#propertyPrice').on('click',function(){
		window.open('http://localhost:3000/main',"_blank", "width=750, height=700, location=no,fullscreen:no,toolbar:no,directories:no")
	})

	function getAccountBalance(){
		try {
			fetch('${pageContext.request.contextPath}/account/getBalance',{
				method : "POST",
				headers : {"Content-Type" : "application/json"},
		 		body: JSON.stringify({
					id : '${loginVO.id}',
				}),
			}).then((res)=>res.json()).then((response)=>{
				if(response != null){
					$('#accountBalance').text(response.balance.toLocaleString('ko-KR'))
				}
			})
		} catch (e) {
				console.log(e)
		}
	}
	
	
	$('#orderBtn').on('click',function(){
		var totalPrice = $('#total_price1').text()
		$('#totalPrice').val(totalPrice)
		var dabsAmount = $('#cnt_stck_prpr1').val()
		$('#dabsAmount').val(dabsAmount+' DABS')
		var orderPrice = $('#stck_prpr1').val()
		$('#orderPrice').val(orderPrice+' 원')
		var commission = (totalPrice.replace('원','')).replaceAll(',','')*0.002
		commission = Math.floor(commission)
		var totalPrice2 = ((totalPrice.substring(0, totalPrice.indexOf('원'))).replaceAll(',',''))*1+commission
		$('#commission').val(commission.toLocaleString('ko-KR')+' 원')
		$('#calculatePrice').val(totalPrice2.toLocaleString('ko-KR')+' 원')
	})
	$('#orderBtn2').on('click',function(){
		var totalPrice = $('#total_price2').text()
		$('#totalPrice2').val(totalPrice)
		var dabsAmount = $('#cnt_stck_prpr2').val()
		$('#dabsAmount2').val(dabsAmount+' DABS')
		var orderPrice = $('#stck_prpr2').val()
		$('#orderPrice2').val(orderPrice+' 원')
		var commission = (totalPrice.substring(0, totalPrice.indexOf('원'))).replaceAll(',','')*0.002
		commission = Math.floor(commission)
		var totalPrice2 = ((totalPrice.substring(0, totalPrice.indexOf('원'))).replaceAll(',',''))*1-commission
		$('#commission2').val(commission+' 원')
		$('#calculatePrice2').val(totalPrice2.toLocaleString('ko-KR')+' 원')
	})
	
	function buy(){
		$('#spinner1').show()
		var orderType = '매수';
		var orderPrice = $('#orderPrice').val()
		var dabsAmount = $('#dabsAmount').val().split(' ')[0]
		var customerId = '${loginVO.id}'
		var buildingNo = '${building.buildingNo}'
		var propertyNo = '${property.propertyNo}'
		var bidAskId =''
		for(i=1; i<11; i++){
			if(($('#bidp'+i).text()).replace(',','') == (orderPrice.replace(',','')).replace('원','')*1){
				bidAskId = 'bidp'+i
			}
			if(($('#askp'+i).text()).replace(',','') == (orderPrice.replace(',','')).replace('원','')*1){
				bidAskId = 'askp'+i
			}
			
		}
	 	fetch('${pageContext.request.contextPath}/orders/process',{
	 		method : "POST",
			headers : {"Content-Type" : "application/json"},
	 		body: JSON.stringify({
				orderType : orderType,
				orderPrice : (orderPrice.replace(',','')).replace('원','')*1,
				dabsAmount : dabsAmount,
				customerId : customerId,
				buildingNo : buildingNo,
				propertyNo : propertyNo,
				bidAskId : bidAskId
			}),
		}).then(() => {
			$('#spinner1').hide()
			$('#btn-close1').trigger('click')			
			$('#orderSuccessModalBtn').trigger('click')		
			bidaskbalance()
			getAccountBalance()
			 getAcml()
			 getDabsCnt()
			}
		);
	}
	
		function sell(){
		 	$('#spinner2').show()
			var orderType = '매도';
			var orderPrice = $('#orderPrice2').val()
			var dabsAmount = $('#dabsAmount2').val().split(' ')[0]
			var customerId = '${loginVO.id}'
			var buildingNo = '${building.buildingNo}'
			var propertyNo = '${property.propertyNo}'
			var bidAskId =''
			for(i=1; i<11; i++){
				if(($('#bidp'+i).text()).replace(',','') == (orderPrice.replace(',','')).replace('원','')*1){
					bidAskId = 'bidp'+i
				}
				if(($('#askp'+i).text()).replace(',','') == (orderPrice.replace(',','')).replace('원','')*1){
					bidAskId = 'askp'+i
				}
				
			}
		 	fetch('${pageContext.request.contextPath}/orders/process',{
		 		method : "POST",
				headers : {"Content-Type" : "application/json"},
		 		body: JSON.stringify({
					orderType : orderType,
					orderPrice : (orderPrice.replace(',','')).replace('원','')*1,
					dabsAmount : dabsAmount,
					customerId : customerId,
					buildingNo : buildingNo,
					propertyNo : propertyNo,
					bidAskId : bidAskId
				}),
			}).then(() => {
				$('#spinner2').hide()
				$('#btn-close1').trigger('click')			
				$('#orderSuccessModalBtn').trigger('click')		
				bidaskbalance()
				getAccountBalance()
				getDabsCnt()
				 getAcml()
				}
			);
 
 		
		}
	
	// 호가 실시간 일별
	$('#bidAsk').show()
	$('#realTime').hide()
	$('#daily').hide()
	
	$('#bidAskBtn').on('click',function(){
				
		$('#bidAsk').show()
		$('#realTime').hide()
		$('#daily').hide()
	})
	$('#realTimeBtn').on('click',function(){
		let today = new Date();
		var date = today.getDate();
		fetch('${pageContext.request.contextPath}/orders/realtime?propertyNo=${property.propertyNo}&date='+date).then(
			(res)=>res.json()		
		).then(response=>{
			
			if(response != null){
				$('#realtime_tbody').empty()
				for(i=0; i<response.length; i++){
					var date = response[i].orderDate
					var price = response[i].orderPrice
					var amount = response[i].dabsAmount
					var orderType = response[i].orderType
					if(orderType == '매수'){
						price = ((price/amount)/1.002).toFixed(1)
						price = (price*1).toFixed(0)
					}else if(orderType == '매도'){
						price = (price/amount/0.998).toFixed(1)
						price = (price*1).toFixed(0)
					}
					$('#realtime_tbody').append('<tr><td>'+date+'</td><td>'+price+'</td><td>'+amount+'</td></tr>')
				}
			}
			
		})
		$('#realTime').show()
		$('#bidAsk').hide()
		$('#daily').hide()
	})
	
		$('#dailyBtn').on('click',function (){
			const date = new Date();
			const year = date.getFullYear();
			const month = ('0' + (date.getMonth() + 1)).slice(-2);
			const day = ('0' + date.getDate()).slice(-2);
			const dateStr = year + '-' + month + '-' + day;	
			let dailyArray = new Array() 
		fetch('${pageContext.request.contextPath}/orders/daily?propertyNo=${property.propertyNo}&date='+dateStr).then(
			(res)=>res.json()		
		).then (response=>{
			
			if(response != null){
				
				const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
		      	const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="
			    const headers = {"Content-Type":"application/json", 
			    "authorization": 'Bearer '+ACCESS_TOKEN,
			    "appKey":APP_KEY,
			    "appSecret":APP_SECRET,
			    "tr_id":"FHKST03010100",
			    }
				response.map((res)=>{
					let date = res.ORDERDATE
					let amount = res.DABSSUM
					let price  = res.ORDER_PRICE
					 fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${property.fid}&fid_input_date_1='+date.replaceAll('-','')+'&fid_input_date_2='+date.replaceAll('-','')+'&fid_period_div_code=D&fid_org_adj_prc=0',{headers}).then(
					            (res) => res.json()
					         ).then(response1=>{
					        	 if(response1 != null){
									let daily = new Object();
									daily.date = date
									daily.price = price
									daily.amount = amount
					        		dailyArray.push(daily)
					        		if(dailyArray.length == response.length){
					        			//dailyArray.sort(function(a,b) {	return (b.date.replace('-',''))*1 - (a.date.replace('-',''))*1})
												dailyArray.sort(function(a,b) {
												if(a.date > b.date) return -1;
												else if(a.date < b.date) return 1;
												else return 0;
											});
					        			for(let i=0; i < dailyArray.length; i++){
											$('#daily_tbody').append('<tr><td>'+dailyArray[i].date+'</td><td>'+dailyArray[i].price+'</td><td>'+dailyArray[i].amount+'</td></tr>')
					        			}
					        		}
					        	 }
					         })  
				})
			}
		})
		$('#daily').show()
		$('#bidAsk').hide()
		$('#realTime').hide()
	})
	
		
	//슬라이드 디자인
	document.querySelector('.slideBar').addEventListener('input',function(event){
  	var gradient_value = 100 / event.target.attributes.max.value;
    event.target.style.background = 'linear-gradient(to right, #089995 0%, #089995 '+gradient_value * event.target.value +'%, rgb(236, 236, 236) ' +gradient_value *  event.target.value + '%, rgb(236, 236, 236) 100%)';
  });
	
	//슬라이드 값에 따른 변화
	function showSliderValue(sliderVal){
		
		if(sliderVal == 0){
			$('#moneyAmount').text('5,000원 매수하면')
			$('#moneyAmountTotal').text('${property.yield}'*5000*0.001*12+' 원')
		}
		if(sliderVal == 10){
			$('#moneyAmount').text('10,000원 매수하면')
			$('#moneyAmountTotal').text('${property.yield}'*10000*0.001*12+' 원')
		}
		if(sliderVal == 20){
			$('#moneyAmount').text('10만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*100000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 30){
			$('#moneyAmount').text('50만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*500000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 40){
			$('#moneyAmount').text('100만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*1000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 50){
			$('#moneyAmount').text('300만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*3000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 60){
			$('#moneyAmount').text('500만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*5000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 70){
			$('#moneyAmount').text('700만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*7000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 80){
			$('#moneyAmount').text('1,000만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*10000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 90){
			$('#moneyAmount').text('1,500만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*15000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
		if(sliderVal == 100){
			$('#moneyAmount').text('2,000만원 매수하면')
			$('#moneyAmountTotal').text(('${property.yield}'*20000000*0.001*12).toLocaleString('ko-KR')+' 원')
		}
	
		
	}
	
	function rangeSlider(){	
		
		var range = $('.slideBar');    	
		range.on('input', function(){
			showSliderValue(this.value);
			});
		};
		
		rangeSlider()
		
		
		$('#sell').hide()
		
		$('#buy-tab').on('click',function(){
			$('#sell').hide()
			$('#buy').show()
		})
		
		$('#sell-tab').on('click',function(){
			$('#sell').show()
			$('#buy').hide()
		})
		
		$('#chart2').hide()
		
		$('#candle').on('click',function(){
			$('#chart2').hide()
			$('#chart').show()
		})
		
		$('#line').on('click',function(){
			$('#chart').hide()
			$('#chart2').show()
		})
		
		$('#btn_minus_cnt_stck_prpr1').on('click',function(){
			let cnt = $('#cnt_stck_prpr1').val()*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			if(cnt > 0){
				$('#cnt_stck_prpr1').val(cnt-1)
				cnt -= 1
				$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+' 원')
			}
		})
		
			$('#btn_plus_cnt_stck_prpr1').on('click',function(){
			let cnt = $('#cnt_stck_prpr1').val()*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			$('#cnt_stck_prpr1').val(cnt+1)
			cnt += 1
			$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+' 원')
		})
		
		$('#btn_minus_cnt_stck_prpr2').on('click',function(){
			let cnt = $('#cnt_stck_prpr2').val()*1
			let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
			if(cnt > 0){
				$('#cnt_stck_prpr2').val(cnt-1)
				cnt -= 1
				$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+' 원')
				
			}
		})
		
			$('#btn_plus_cnt_stck_prpr2').on('click',function(){
				let cnt = $('#cnt_stck_prpr2').val()*1
				let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
				$('#cnt_stck_prpr2').val(cnt+1)
				cnt += 1
				$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+' 원')
		})
		
		$('#btn_plus_stck_prpr1').on('click',function(){
			let cnt = $('#cnt_stck_prpr1').val()*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			$('#stck_prpr1').val((price+10).toLocaleString('ko-KR'))
			price += 10
			$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+' 원')
		})
		
			$('#btn_minus_stck_prpr1').on('click',function(){
			let cnt = $('#cnt_stck_prpr1').val()*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			$('#stck_prpr1').val((price-10).toLocaleString('ko-KR'))
			price -= 10
			$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
		})
		
				$('#btn_plus_stck_prpr2').on('click',function(){
					let cnt = $('#cnt_stck_prpr2').val()*1
					let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
					$('#stck_prpr2').val((price+10).toLocaleString('ko-KR'))
					price += 10
					$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+' 원')
		})
		
			$('#btn_minus_stck_prpr2').on('click',function(){
			let cnt = $('#cnt_stck_prpr2').val()*1
			let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
			$('#stck_prpr2').val((price-10).toLocaleString('ko-KR'))
			price -= 10
			$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
		})
		
		$('.price').on('click',function(){
			let price = $(this).text()
			$('#stck_prpr1').val(price)
			$('#stck_prpr2').val(price)
		})
		
		//가격 리셋버튼
		function reset(){
			let askp1 = $('#askp1').text()
			
			$('#cnt_stck_prpr2').val('0')
			$('#stck_prpr2').val(askp1)
			$('#total_price2').text('0'+' 원')
			
			$('#cnt_stck_prpr1').val('0')
			$('#stck_prpr1').val(askp1)
			$('#total_price1').text('0'+' 원')
		}
		
		$('#cnt_stck_prpr1').on('propertychange change keyup paste input',function(){
			let cnt = $('#cnt_stck_prpr1').val().replace(/,/g, "")*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
			$('#cnt_stck_prpr1').val(cnt.toLocaleString('ko-KR'))
		})
		
			$('#cnt_stck_prpr2').on('propertychange change keyup paste input',function(){
			let cnt = $('#cnt_stck_prpr2').val()*1
			let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
			$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
		})
		
			$('#stck_prpr1').on('propertychange change keyup paste input',function(){
			let cnt = $('#cnt_stck_prpr1').val()*1
			let price = ($('#stck_prpr1').val()).replace(/,/g, "")*1;
			$('#total_price1').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
		})
		
		$('#stck_prpr2').on('propertychange change keyup paste input',function(){
			let cnt = $('#cnt_stck_prpr2').val()*1
			let price = ($('#stck_prpr2').val()).replace(/,/g, "")*1;
			$('#total_price2').text((price*cnt).toLocaleString('ko-KR')+ ' 원')
		})
			


		
		//매수매도호가 수량
		 const bidaskbalance = () =>{
			try {
				fetch('${pageContext.request.contextPath}/bidaskbalacne?propertyNo=${property.propertyNo}').then(
							(res)=>res.json()
						).then(response=>{
							if(response != null){
							for(i = 0; i < response.length/2; i++){
								$('#askp'+(i+1)+'_balance').text(response[i].balance)
								$('#bidp'+(i+1)+'_balance').text(response[i+10].balance)
								$('#askp'+(i+1)+'_balance').css('width',response[i].balance*0.15+'%')
								$('#askp'+(i+1)+'_balance').css('white-space','nowrap')
								$('#bidp'+(i+1)+'_balance').css('width',response[i+10].balance*0.15+'%')
								$('#bidp'+(i+1)+'_balance').css('white-space','nowrap')
							}
							}
						})
			} catch (e) {
					console.log('에러 : ' +e)
			}
		}
		 
		 bidaskbalance()
		
		
		//차트에 필요한 데이터 받아오기
		const getPrice = async () =>{
		    
				let data3 = new Array();
			    let data4 = new Array();
			    let today = new Date();   

			    let year = today.getFullYear();+'' 
			    let month = (today.getMonth() + 1)+''
			    let date = today.getDate()+''
			    let day = today.getDay()+''
				if (month < 10){
					month = '0'+month
				}
			    if(date < 10){
			    	date = '0'+date
			    }
			    let endDate = year+month+date
			    let startDate = '${property.competitionDate}'.replaceAll('-','')
			    if(startDate > endDate){
			    	let str = '<div style="display:flex; align-items:center; justify-content:center; height:200px;"><div style="text-align:center; font-size:20px; margin-right:10px; font-weight:700;">아직 준비중이에요</div><i class="fa-solid fa-wrench" style="font-size:20px;"></i></div>'
			    	$('#chart').append(str)
			    	$('#chart2').append(str)
			    }else{
			        const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
				      	const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="
					    const headers = {"Content-Type":"application/json", 
					    "authorization": 'Bearer '+ACCESS_TOKEN,
					    "appKey":APP_KEY,
					    "appSecret":APP_SECRET,
					    "tr_id":"FHKST03010100",
					    }
			        
					  try {
					       fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${property.fid}&fid_input_date_1='+startDate+'&fid_input_date_2='+endDate+'&fid_period_div_code=D&fid_org_adj_prc=0',{headers}).then(
				            (res) => res.json()
				         ).then(response=>{
				        	 for(i = 0; i < response.output2.length; i++){
				        	 let date = response.output2[i].stck_bsop_date.substr(0,4)+'.'+response.output2[i].stck_bsop_date.substr(4,2)+'.'+response.output2[i].stck_bsop_date.substr(6,2)
				        	 let data2 = new Object();
				        	 let data5  = new Array();
				        	 data2.x = date
				        	 data2.y = [response.output2[i].stck_oprc*1,response.output2[i].stck_hgpr*1,response.output2[i].stck_lwpr*1,response.output2[i].stck_clpr*1]
				        	 data5.push(date)
				        	 data5.push(response.output2[i].stck_oprc*1)
				        	 data3.push(data2)
				        	 data4.push(data5)
				        	 
				        	 }
				        	 showChart2(data3)
				        	 showChart3(data4)
				         })
					    } catch (error) {
					        console.log('error')        
					    }
			    }

			}
			
			getPrice();
		
			
			// 캔들차
		   function showChart2(data3){
			   var options = {
				          series: [{
				          data:data3
				          }],
				          chart: {
				          type: 'candlestick',
				          height: 350,
				          defaultLocale: 'ko',
				            locales: [{
				              name: 'ko',
				              options: {
				                months: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				                shortMonths: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				                days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
				                shortDays: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
				                toolbar: {
				                  download: 'Download SVG',
				                  selection: 'Selection',
				                  selectionZoom: 'Selection Zoom',
				                  zoomIn: 'Zoom In',
				                  zoomOut: 'Zoom Out',
				                  pan: 'Panning',
				                  reset: 'Reset Zoom',
				                  Open : '시가'
				                }
				              }
				            }]
				        },
				        title: {
				          text: '${building.buildingName}',
				          align: 'left'
				        },
				        xaxis: {
				          type: 'datetime'
				        },
				        yaxis: {
				          tooltip: {
				            enabled: true
				          }
				        }
				        };

				        var chart = new ApexCharts(document.querySelector("#chart"), options);
				        chart.render();
				      
		   }
		   
			//라인차트
		   function showChart3(data4){
			    var options = {
			            series: [{
			            name: "기준가",
			            data:	data4		         
			            	}],
			            chart: {
			            id: 'area-datetime',
			            type: 'area',
			            height: 350,
			            zoom: {
			              autoScaleYaxis: true
			            },
			            defaultLocale: 'ko',
			            locales: [{
			              name: 'ko',
			              options: {
			            	  months: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				                shortMonths: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			                days: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
			                shortDays: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
			                toolbar: {
			                  download: 'Download SVG',
			                  selection: 'Selection',
			                  selectionZoom: 'Selection Zoom',
			                  zoomIn: 'Zoom In',
			                  zoomOut: 'Zoom Out',
			                  pan: 'Panning',
			                  reset: 'Reset Zoom',
			                }
			              }
			            }]
			          },
			          title: {
				          text: '${building.buildingName}',
				          align: 'left'
				        },
			          annotations: {
			            yaxis: [{
			              y: 30,
			              borderColor: '#999',
			              label: {
			                show: true,
			                text: 'Support',
			                style: {
			                  color: "#fff",
			                  background: '#00E396'
			                }
			              }
			            }],
			            xaxis: [{
			            	
			            }]
			          },
			          dataLabels: {
			            enabled: false
			          },
			          markers: {
			            size: 0,
			            style: 'hollow',
			          },
			          xaxis: {
			            type: 'datetime',
			            tickAmount: 6,
			            format: 'yyyy MM dd'
			          },
			          tooltip: {
			            x: {
			              format: 'yyyy  MM dd '
			            }
			          },
			          fill: {
			            type: 'gradient',
			            gradient: {
			              shadeIntensity: 1,
			              opacityFrom: 0.7,
			              opacityTo: 0.9,
			              stops: [0, 100]
			            }
			          },
			          };

			          var chart = new ApexCharts(document.querySelector("#chart2"), options);
			          chart.render();
			        
			        
			          var resetCssClasses = function(activeEl) {
			          
			        	  var els = document.querySelectorAll('button')
			          Array.prototype.forEach.call(els, function(el) {
			            el.classList.remove('active')
			          })
			        
			          activeEl.target.classList.add('active')
			        }
			      
		   }
 		
 				// 주식 데이터 받아오기
 		 		 function getStck(){
					    
					    const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
				      	const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

					    const headers = {"Content-Type":"application/json", 
					    "authorization": 'Bearer '+ACCESS_TOKEN,
					    "appKey":APP_KEY,
					    "appSecret":APP_SECRET,
					    "tr_id":"FHKST01010100",
					    }
					  try {
					       fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${property.fid}',{headers}).then(
				            (res) => res.json()
				         ).then(response=>{
				        	 $('#stck_sdpr').text('기준가 '+(response.output.stck_sdpr*1).toLocaleString('ko-KR'))
				        	 $('#stck_llam').text('하한가 '+(response.output.stck_llam*1).toLocaleString('ko-KR'))
				        	 $('#stck_mxpr').text('상한가 '+(response.output.stck_mxpr*1).toLocaleString('ko-KR'))
				        	 $('#stck_lwpr').text('저가 '+(response.output.stck_lwpr*1).toLocaleString('ko-KR'))
				        	 $('#stck_hgpr').text('고가 '+(response.output.stck_hgpr*1).toLocaleString('ko-KR'))
				        	 $('#stck_oprc').text('시가 '+(response.output.stck_oprc*1).toLocaleString('ko-KR'))
				        	 $('#avls').text(numberToKorean(Math.floor(((response.output.stck_oprc*1)*${property.totalDabs})/10000)*10000)+'시총')
				        	 $('#stck_prpr1').val((response.output.stck_prpr*1).toLocaleString('ko-KR'))
			        	 	 $('#stck_prpr2').val((response.output.stck_prpr*1).toLocaleString('ko-KR'))
			        	 	for(i=1; i<11; i++){
								$('#askp'+i).text((response.output.stck_prpr*1+10*(i-1)).toLocaleString('ko-KR'))
								$('#bidp'+i).text((response.output.stck_prpr*1-10*i).toLocaleString('ko-KR'))
							
							}
				         })
					      
					    } catch (error) {
					        console.log('error')        
					    }

			   }
 			
 		 		getStck()
			
		 const timer = setInterval(()=>{
				    
				    const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
			      	const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

				    const headers = {"Content-Type":"application/json", 
				    "authorization": 'Bearer '+ACCESS_TOKEN,
				    "appKey":APP_KEY,
				    "appSecret":APP_SECRET,
				    "tr_id":"FHKST01010100",
				    }
				  try {
				       fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${property.fid}',{headers}).then(
			            (res) => res.json()
			         ).then(response=>{
			         	 $('#stck_sdpr').text('기준가 '+(response.output.stck_sdpr*1).toLocaleString('ko-KR'))
			        	 $('#stck_llam').text('하한가 '+(response.output.stck_llam*1).toLocaleString('ko-KR'))
			        	 $('#stck_mxpr').text('상한가 '+(response.output.stck_mxpr*1).toLocaleString('ko-KR'))
			        	 $('#stck_lwpr').text('저가 '+(response.output.stck_lwpr*1).toLocaleString('ko-KR'))
			        	 $('#stck_hgpr').text('고가 '+(response.output.stck_hgpr*1).toLocaleString('ko-KR'))
			        	 $('#stck_oprc').text('시가 '+(response.output.stck_oprc*1).toLocaleString('ko-KR'))
			        	 //$('#stck_prpr1').val(response.output.stck_prpr)
		        	 	 //$('#stck_prpr2').val(response.output.stck_prpr)
						for(i=1; i<11; i++){
							$('#askp'+i).text((response.output.stck_prpr*1+10*(i-1)).toLocaleString('ko-KR'))
							$('#bidp'+i).text((response.output.stck_prpr*1-10*i).toLocaleString('ko-KR'))
						}
			        	 
			         })
				      
				    } catch (error) {
				        console.log('error')        
				    }

		 },3000)
		
		 //dabs 수량 업데이트
		 function getDabsCnt(){
		 		const urlParams = new URL(location.href).searchParams;
		
		 		const propertyNo = urlParams.get('propertyNo');
				fetch('${pageContext.request.contextPath}/dabs/getDabsCnt',{
					method : "POST",
					headers : {"Content-Type" : "application/json"},
					body : JSON.stringify({
						propertyNo : propertyNo+'',
						customerId : '${loginVO.id}' 
					}),
				}).then(res=>res.json()).then(response=>{
					if(response != null){
						$('#dabsCnt').text('거래가능 DABS : '+response.DABSCNT)	
					}
				})
 		 	}
 		
 		 getDabsCnt()
		
		function checkAccount(){
 			 fetch('${pageContext.request.contextPath}/account/checkAccount',{
 				 method:"POST",
 				 headers :{"Content-Type" : "application/json"},
 				 body : JSON.stringify({
 					 accountPassword:$('#accountPassword').val(),
 					 customerId:'${loginVO.id}'
 				 })
 			 }).then(res=>res.json()).then(response=>{
 				 if(response){
 					 $('#orderBtn2').trigger('click')
 				 }else{
 					 $('#accountModalbody').append('<div style="color:red;">비밀번호가 일치하지 않습니다</div>')
 				 }
 			 })
 		 }
 		function checkAccount2(){
			 fetch('${pageContext.request.contextPath}/account/checkAccount',{
				 method:"POST",
				 headers :{"Content-Type" : "application/json"},
				 body : JSON.stringify({
					 accountPassword:$('#accountPassword2').val(),
					 customerId:'${loginVO.id}'
				 })
			 }).then(res=>res.json()).then(response=>{
				 if(response){
					 $('#orderBtn').trigger('click')
				 }else{
					 $('#accountModalbody2').append('<div style="color:red;">비밀번호가 일치하지 않습니다</div>')
				 }
			 })
		 }
		</script>
</body>
</html>
