<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8" />
        <title>Dashboard | Samply - Admin & Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/finalproject1/resources/admin/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="/finalproject1/resources/admin/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/finalproject1/resources/admin/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/finalproject1/resources/admin/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!-- Dark Mode Css-->
        <link href="/finalproject1/resources/admin/css/dark-layout.min.css" id="app-style" rel="stylesheet" type="text/css" />
</head>

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box" style="display: flex; align-items: center; background-color: white; border:none;">
	                            <a href="${pageContext.request.contextPath}/admin" class="logo logo-light">
	                            <div style="display: flex; align-items: center; justify-content: center;">
	                                    <img src="/finalproject1/resources/images/hanaLogo.png" alt="" height="22">
	                                	<h5 class="title" style="margin-left: 5px; margin-top: 10px;">하나랜드</h5> 
	                            </div>
	                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 vertinav-toggle header-item waves-effect" id="vertical-menu-btn">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                        <button type="button" class="btn btn-sm px-3 font-size-16 horinav-toggle header-item waves-effect waves-light" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                        <!-- App Search-->
                        <form class="app-search d-none d-lg-block">
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="검색">
                                <span class="mdi mdi-magnify"></span>
                            </div>
                        </form>
                    </div>
					
                    <div class="d-flex">

                        <div class="dropdown d-inline-block d-lg-none ms-2">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="mdi mdi-magnify"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-search-dropdown">
        
                                <form class="p-3">
                                    <div class="form-group m-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="dropdown d-inline-block">
                            <div class="dropdown-menu dropdown-menu-end">

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="en">
                                    <img src="/finalproject1/resources/admin/images/flags/us.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">English</span>
                                </a>
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="sp">
                                    <img src="/finalproject1/resources/admin/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="gr">
                                    <img src="/finalproject1/resources/admin/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="it">
                                    <img src="/finalproject1/resources/admin/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item language" data-lang="ru">
                                    <img src="/finalproject1/resources/admin/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
                                </a>
                            </div>
                        </div>

                        <div class="dropdown d-none d-lg-inline-block ms-1">
                            <button type="button" class="btn header-item noti-icon waves-effect" data-toggle="fullscreen">
                                <i class="mdi mdi-fullscreen"></i>
                            </button>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-notifications-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="mdi mdi-bell"></i>
                                <span class="badge bg-danger rounded-pill">3</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-notifications-dropdown">
                                <div class="p-3">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h6 class="m-0"> Notifications </h6>
                                        </div>
                                        <div class="col-auto">
                                            <a href="#" class="small" key="t-view-all"> View All</a>
                                        </div>
                                    </div>
                                </div>
                                <div data-simplebar style="max-height: 230px;">
                                    <a href="" class="text-reset notification-item d-block active">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar-xs">
                                                    <span class="avatar-title bg-primary rounded-circle font-size-16">
                                                        <i class="bx bx-cart"></i>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <h6 class="mt-0 mb-1" key="t-your-order">Your order is placed</h6>
                                                <div class="font-size-13 text-muted">
                                                    <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                                    <p class="mb-0 font-size-12"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 min ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="" class="text-reset notification-item d-block ">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <img src="/finalproject1/resources/admin/images/users/avatar-3.jpg" class="rounded-circle avatar-xs" alt="user-pic">
                                            </div>
                                
                                            <div class="flex-grow-1">
                                                <h6 class="mt-0 mb-1">James Lemire</h6>
                                                <div class="font-size-13 text-muted">
                                                    <p class="mb-1" key="t-simplified">It will seem like simplified English.</p>
                                                    <p class="mb-0 font-size-12"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">1 hours ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a href="" class="text-reset notification-item d-block ">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar-xs">
                                                    <span class="avatar-title bg-success rounded-circle font-size-16">
                                                        <i class="bx bx-badge-check"></i>
                                                    </span>
                                                </div>
                                            </div>
                                
                                            <div class="flex-grow-1">
                                                <h6 class="mt-0 mb-1" key="t-shipped">Your item is shipped</h6>
                                                <div class="font-size-13 text-muted">
                                                    <p class="mb-1" key="t-grammer">If several languages coalesce the grammar</p>
                                                    <p class="mb-0 font-size-12"><i class="mdi mdi-clock-outline"></i> <span key="t-min-ago">3 hours ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a href="" class="text-reset notification-item d-block ">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <img src="/finalproject1/resources/admin/images/users/avatar-4.jpg" class="rounded-circle avatar-xs" alt="user-pic">
                                            </div>
                                
                                            <div class="flex-grow-1">
                                                <h6 class="mt-0 mb-1">Salena Layfield</h6>
                                                <div class="font-size-13 text-muted">
                                                    <p class="mb-1" key="t-occidental">As a skeptical Cambridge friend of mine occidental.</p>
                                                    <p class="mb-0 font-size-12"><i class="mdi mdi-clock-outline"></i> <span key="t-hours-ago">10 hours ago</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <div class="p-2 border-top d-grid">
                                    <a class="btn btn-sm btn-link font-size-14 text-center" href="javascript:void(0)">
                                        <i class="mdi mdi-arrow-right-circle me-1"></i> <span>View More..</span> 
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="rounded-circle header-profile-user" src="/finalproject1/resources/admin/images/users/avatar-1.jpg"
                                    alt="Header Avatar">
                                <span class="d-none d-xl-inline-block ms-1">관리자</span>
                                <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <h6 class="dropdown-header">Welcome Peter!</h6>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-profile">Profile</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-message-text-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-messages">Messages</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-calendar-check-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-taskboard">Taskboard</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lifebuoy text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-help">Help</span></a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-wallet text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-balance">Balance : <b>$1901.67</b></span></a>
                                <a class="dropdown-item" href="#"><span class="badge bg-success bg-soft text-success mt-1 float-end">New</span><i class="mdi mdi-cog-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-settings">Settings</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-lock-screen">Lock screen</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-logout">Logout</span></a>
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                                <i class="bx bx-cog bx-spin"></i>
                            </button>
                        </div>

                    </div>
                </div>
            </header>

            <!-- ========== Left Sidebar Start ========== -->
            <div class="vertical-menu" style="background-color: #008485;">

                <div data-simplebar class="h-100">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu" style="background-color: #008485;">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title" key="t-menu">메뉴</li>
                
                            <li>
                                <a href="index.html" class="waves-effect">
                                    <i class='bx bxs-dashboard'></i>
                                    <span key="t-dashboard">Dashboard</span>
                                </a>
                            </li>

                            <li class="menu-title mt-3" key="t-more">부가기능</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class='bx bxs-grid'></i>
                                    <span key="t-apps">애플리케이션</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="${pageContext.request.contextPath}/admin/calendar"><span key="t-calendar">일정</span></a></li>
                                    <li><a href="apps-chat.html"><span key="t-chat">채팅</span></a></li>
                                    <li>
                                        <a href="javascript: void(0);" class="has-arrow"><span key="t-email">이메일</span></a>
                                        <ul class="sub-menu" aria-expanded="true">
                                            <li><a href="apps-email-inbox.html" key="t-inbox">Inbox</a></li>
                                            <li><a href="apps-email-read.html" key="t-read-email">Read Email</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
            <!-- Left Sidebar End -->

            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Dashboard</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">하나랜드</a></li>
                                            <li class="breadcrumb-item active">Dashboard</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                        	<c:forEach  var="property"  items="${propertyList}" varStatus="status">
                        		<div class="col-md-6 col-xl-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end">
                                            <div class="avatar-sm mx-auto mb-4">
                                                <span class="avatar-title rounded-circle bg-light font-size-24">
                                                   <img src="/finalproject1/resources/images/featured-job/${property.IMAGE_NAME1}" alt=""class="img-fluid rounded-3">
                                                </span>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-muted text-uppercase fw-semibold">${property.BUILDING_NAME}</p>
                                            <div style="display: flex; ">
	                                            <p  class="text-muted text-uppercase fw-semibold" style="margin-right: 10px;">현재가 </p>
	                                            <div id="stckPrPr${status.index}" style="font-weight: 700;">1111</div>
                                            </div>
                                                 <table class="table mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>거래량</th>
                                                        <th>거래대금</th>
                                                        <th>수익금액</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                    	<td><h4 class="mb-1 mt-1"><span><fmt:formatNumber value="${property.SUM_DABS_AMOUNT}" pattern="#,###"></fmt:formatNumber> </span></h4></td>
                                                    	<td><h4 class="mb-1 mt-1"><span><fmt:formatNumber value="${property.SUM_ORDER_PRICE}" pattern="#,###"></fmt:formatNumber> </span>원</h4></td>
                                                    	<td><h4 class="mb-1 mt-1"><span><fmt:formatNumber value="${property.EARNING_AMOUNT}" pattern="#,###"></fmt:formatNumber> </span>원</h4></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col-->
                        	</c:forEach>
                         
                        </div> <!-- end row-->

                        <div class="row">
                            <div class="col-xl-8">
                                <div class="card card-height-100">
                                    <div class="card-body">
                                    <div style="display: flex; align-items: center; margin-bottom: 20px; justify-content: space-between;">
                                       <h4 class="card-title" style="margin: 0;">거래 분석</h4>
											 <ul class="nav nav-tabs nav-tabs-custom nav-justified" role="tablist" style="width: 70%;">
                                                   <li class="nav-item">
                                                       <a class="nav-link active" data-bs-toggle="tab" href="#home1" role="tab">
                                                           <span class="d-block d-sm-none"><i class="fas fa-home"></i></span>
                                                           <span class="d-none d-sm-block" style="white-space: nowrap;" onclick=" getTotalChart(10000000)">합정 하나가든타운</span> 
                                                       </a>
                                                   </li>
                                                   <li class="nav-item">
                                                       <a class="nav-link" data-bs-toggle="tab" href="#profile1" role="tab">
                                                           <span class="d-block d-sm-none"><i class="far fa-user"></i></span>
                                                           <span class="d-none d-sm-block" style="white-space: nowrap;" onclick=" getTotalChart(10010400)">서초 워커타워</span>
                                                       </a>
                                                   </li>
                                                   <li class="nav-item">
                                                       <a class="nav-link" data-bs-toggle="tab" href="#messages1" role="tab">
                                                           <span class="d-block d-sm-none"><i class="far fa-envelope"></i></span>
                                                           <span class="d-none d-sm-block" style="white-space: nowrap;" onclick=" getTotalChart(10030000)">합정 월드컴포트</span>
                                                       </a>
                                                   </li>
                                                   <li class="nav-item">
                                                       <a class="nav-link" data-bs-toggle="tab" href="#settings1" role="tab">
                                                           <span class="d-block d-sm-none"><i class="fas fa-cog"></i></span>
                                                           <span class="d-none d-sm-block" style="white-space: nowrap;" onclick=" getTotalChart(10020000)">김포 하나물류창고</span>
                                                       </a>
                                                   </li>
                                               </ul>									               
                                    </div>
                                       <div class="mt-1" style="display:flex; justify-content: center; align-items: center; ">
                                            <ul class="list-inline main-chart mb-0">
                                                <li class="list-inline-item chart-border-left me-0 border-0">
                                                    <h3 class="text-primary"><span id="earningAmountWeek" data-plugin="counterup"></span><span class="text-muted d-inline-block fw-normal font-size-15 ms-3">수익금</span></h3>
                                                </li>
                                                <li class="list-inline-item chart-border-left me-0">
                                                    <h3><span  id="avlsAmountWeek" data-plugin="counterup"></span><span class="text-muted d-inline-block fw-normal font-size-15 ms-3">거래대금</span>
                                                    </h3>
                                                </li>
                                                <li class="list-inline-item chart-border-left me-0">
                                                    <h3><span id="avlsVolWeek" data-plugin="counterup"></span><span class="text-muted d-inline-block fw-normal font-size-15 ms-3">거래량</span></h3>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="mt-3">
                                            <div id="totalChart" ></div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col-->

                            <div class="col-xl-4">
                            	<c:if test="${empty subscriptionProperty }">
                            		<div class="card">
		                                    <div class="card-body">
		                                        <div class="row align-items-center">
		                                            <div class="col-sm-8">
		                                                    <div class="card-title" style="font-size: 16px;">공모/청약</div>
		                                                <p class="font-size-18" style="white-space: nowrap;">현재 진행중인 빌딩이 없습니다</p>
		                                                <div class="mt-4">
		                                                    <a type="button"  class="btn btn-success waves-effect waves-light" data-bs-toggle="modal" data-bs-target="#exampleModalScrollable">공모/청약 등록하기</a>
		                                                </div>
		                                            </div>
		                                            <div class="col-sm-4">
		                                                <div class="mt-4 mt-sm-0">
		                                                    <img src="/finalproject1/resources/admin/images/widget-img.png" class="img-fluid" alt="">
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div> <!-- end card-body-->
		                                </div>
                            	</c:if>
                                <c:if test="${not empty subscriptionProperty }">
                                	         <c:forEach var="subscriptionProperty" items="${subscriptionProperty}">
			                                <div class="card">
			                                    <div class="card-body">
			                                    <div style="display: flex; align-items: center; margin-bottom: 15px;">
				                                        <h4 class="card-title" style="margin: 0;">공모/청약</h4>
				                                        <div id="voteState" style="margin-left: 10px; font-size: 15px; background:#DC5E64; color: white; padding-left: 3px; padding-right: 3px;">공모 진행중</div>
			                                    </div>
			                                        <div class="row">
			                                            <div class="col-sm-6">
			                                            	<h5 style="margin-bottom: 15px;">${subscriptionProperty.BUILDING_NAME}</h5>
			                                                <div class="row mb-3">
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">공모액</p>
			                                                        <h5 id="competitionSum" class="mt-0"> ${subscriptionProperty.COMPETITION_PRICE*subscriptionProperty.TOTAL_DABS/100000000}억원</h5>
			                                                    </div>
			
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">공모가</p>
			                                                        <h5 id="competitionPrice" class="mt-0" ><fmt:formatNumber value="${subscriptionProperty.COMPETITION_PRICE}" pattern="#,###"></fmt:formatNumber>원</h5>
			                                                    </div>
			                                                </div>
			                                                <div class="row mb-3">
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">총 수량</p>
			                                                        <h5 id="subscriptionTotalDABS" class="mt-0" style="white-space: nowrap;"><fmt:formatNumber value="${subscriptionProperty.TOTAL_DABS}" pattern="#,###"></fmt:formatNumber></h5>
			                                                    </div>
			
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">잔여 수량</p>
			                                                        <c:if test="${not empty subscriptionProperty.SUBSCRIPTION_REMANET}">
				                                                        <h5 id="subscriptionRemanet" class="mt-0"><fmt:formatNumber value="${subscriptionProperty.SUBSCRIPTION_REMANET}" pattern="#,###"></fmt:formatNumber></h5>
			                                                        </c:if>
			                                                           <c:if test="${empty subscriptionProperty.SUBSCRIPTION_REMANET}">
				                                                        <h5 id="subscriptionRemanet" class="mt-0" style="white-space: nowrap;"><fmt:formatNumber value="${subscriptionProperty.TOTAL_DABS}" pattern="#,###"></fmt:formatNumber></h5>
			                                                        </c:if>
			                                                    </div>
			                                                </div>
			                                                <div class="mt-4">
			                                                    <a href="" class="btn btn-primary waves-effect waves-light btn-sm">청약 종료하기<i class="mdi mdi-arrow-right ms-1"></i></a>
			                                                </div>
			                                            </div>
			                                            <div class="col-sm-6">
			                                                <div class="mt-4 mt-sm-0">
			                                                    <div id="chart2" style="padding: 0;"></div>
			                                                </div>
			                                            </div>
			                                        </div>
			                                    </div>
			                                </div> <!-- end card -->
										</c:forEach>
                                </c:if>
                                <c:if test="${not empty disposalProperty}">
                                		<c:forEach var="disposalProperty" items="${disposalProperty}">
			                                <div class="card">
			                                    <div class="card-body">
			                                    <div style="display: flex; align-items: center; margin-bottom: 15px;">
				                                        <h4 class="card-title" style="margin: 0;">매각 투표</h4>
				                                        <div id="voteState" style="margin-left: 10px; font-size: 15px; background:#DC5E64; color: white; padding-left: 3px; padding-right: 3px;">투표진행중</div>
			                                    </div>
			                                        <div class="row">
			                                            <div class="col-sm-6">
			                                            	<h5 style="margin-bottom: 15px;">${disposalProperty.BUILDING_NAME}</h5>
			                                                <div class="row mb-3">
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">찬성</p>
			                                                        <h5 id="agreeCnt" class="mt-0"></h5>
			                                                    </div>
			
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">반대</p>
			                                                        <h5 id="disagreeCnt" class="mt-0"></h5>
			                                                    </div>
			                                                </div>
			                                                <div class="row mb-3">
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">투표 가능 수</p>
			                                                        <h5 id="totalDabs" class="mt-0"></h5>
			                                                    </div>
			
			                                                    <div class="col-6">
			                                                        <p class="text-muted mb-1">투표 완료 수</p>
			                                                        <h5 id="sumDabsAmount" class="mt-0"></h5>
			                                                    </div>
			                                                </div>
			                                                <div class="mt-4">
			                                                    <a href="" class="btn btn-primary waves-effect waves-light btn-sm">투표종료하기<i class="mdi mdi-arrow-right ms-1"></i></a>
			                                                </div>
			                                            </div>
			                                            <div class="col-sm-6">
			                                                <div class="mt-4 mt-sm-0">
			                                                    <div id="chart" style="padding: 0;"></div>
			                                                </div>
			                                            </div>
			                                        </div>
			                                    </div>
			                                </div> <!-- end card -->
										</c:forEach>
                                </c:if>
                                <c:if test="${empty disposalProperty}">
                             			<div class="card">
		                                    <div class="card-body">
		                                        <div class="row align-items-center">
		                                            <div class="col-sm-8">
		                                                    <div class="card-title" style="font-size: 16px;">매각 투표</div>
		                                                <p class="font-size-18" style="white-space: nowrap;">현재 진행중인 빌딩이 없습니다</p>
		                                                <div class="mt-4">
		                                                    <a type="button"  class="btn btn-success waves-effect waves-light" data-bs-toggle="modal" data-bs-target="#disposalModalScrollable">매각투표 등록하기</a>
		                                                </div>
		                                            </div>
		                                            <div class="col-sm-4">
		                                                <div class="mt-4 mt-sm-0">
		                                                    <img src="/finalproject1/resources/admin/images/noBuilding.png" class="img-fluid" alt="">
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div> <!-- end card-body-->
		                                </div>
                                </c:if>
                                <c:if test="${not empty completeDisposalList}">
                             			<div class="card">
		                                    <div class="card-body">
		                                        <div class="row align-items-center">
		                                            <div>
		                                                    <div class="card-title" style="font-size: 16px;">매각 완료 건물</div>
		                                                    	<c:forEach var="disposalComplete"  items="${completeDisposalList}">
				                                                    <div>
			                                                    	<div style="font-weight: 700; font-size: 18px;">${disposalComplete.BUILDING_NAME}</div>
			                                                    	<table class="table table" style="margin-left: -10px;">
																			  <tr >
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;">매각일자</td>
																			      <fmt:parseDate value="${disposalComplete.DISPOSAL_DATE}" var="dateValue" pattern="yyyy-MM-dd"/>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;"><fmt:formatDate value="${dateValue}" pattern="yy.MM.dd"/></td>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;">매각금액</td>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap; padding-right: 0; padding-left: 0;">${disposalComplete.DISPOSAL_PRICE/100000000}억원</td>
																		    </tr>
																		      <tr>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;">수익률</td>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;"><fmt:formatNumber value="${disposalComplete.EARNING_RATE*100}" pattern=".0"></fmt:formatNumber>%</td>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;">1DABS당 수익금</td>
																			      <td style="font-weight: 700px; font-size: 15px; white-space: nowrap;"><fmt:parseNumber integerOnly="true" value="${disposalComplete.EARNING_PRICE}" />원</td>
																		    </tr>
																	</table>
			                                                    </div>
		                                                    	</c:forEach>
		                                            </div>
		                                        </div>
		                                    </div> <!-- end card-body-->
		                                </div>
                                </c:if>
							

                            </div>
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">최근 거래내역</h4>

                                        <div class="table-responsive">
                                            <table class="table align-middle table-striped table-nowrap mb-0">
												<thead>
													<tr>
														<th>거래대상</th>
														<th>거래종류</th>
														<th>거래상태</th>
														<th>거래수량</th>
														<th>거래금액</th>
														<th>거래일자</th>
													</tr>
												</thead>
                                                <tbody id="orderList">
                                                </tbody>
                                            </table>
                                        </div>
                                         <div style="margin-top: 10px; display: flex; justify-content: flex-end;">
	                                        <nav aria-label="Page navigation example">
	                                               <ul class="pagination pagination-rounded mb-0">
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Previous">
	                                                           <i class="mdi mdi-chevron-left"></i>
	                                                       </a>
	                                                   </li>
		                                                  <li class="page-item"><a id="pageOne" class="page-link"  onclick="paging(this)">1</a></li>
	                                               		 <li class="page-item"><a class="page-link" onclick="paging(this)" >2</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging(this)">3</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging(this)">4</a></li>
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Next">
	                                                           <i class="mdi mdi-chevron-right"></i>
	                                                       </a>
	                                                   </li>
	                                               </ul>
	                                       </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<div class="col-xl-6" style="display: flex; flex-direction: column;">
									 <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">투표 상세 현황</h4>

                                        <div class="table-responsive">
                                            <table class="table align-middle table-striped table-nowrap mb-0">
													<thead>
													<tr>
														<th>투표대상</th>
														<th>DABS수량</th>
														<th>투표상태</th>
														<th>투표일자 </th>
													</tr>
												</thead>
                                                <tbody id="voteList">
                                                </tbody>
                                            </table>
                                             <div style="margin-top: 10px; display: flex; justify-content: flex-end;">
	                                        <nav aria-label="Page navigation example">
	                                               <ul class="pagination pagination-rounded mb-0">
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Previous">
	                                                           <i class="mdi mdi-chevron-left"></i>
	                                                       </a>
	                                                   </li>
		                                                  <li class="page-item"><a id="pageOne2" class="page-link"  onclick="paging2(this)">1</a></li>
	                                               		 <li class="page-item"><a class="page-link" onclick="paging2(this)" >2</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging2(this)">3</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging2(this)">4</a></li>
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Next">
	                                                           <i class="mdi mdi-chevron-right"></i>
	                                                       </a>
	                                                   </li>
	                                               </ul>
	                                       </nav>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            	  <div class="col-xl-12" >
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">공모/청약 상세 현황</h4>

                                        <div class="table-responsive">
                                            <table class="table align-middle table-striped table-nowrap mb-0">
													<thead>
													<tr>
														<th>공모대상</th>
														<th>DABS수량</th>
														<th>공모일자</th>
													</tr>
												</thead>
                                                <tbody id="subscriprionList">
                                                </tbody>
                                            </table>
                                             <div style="margin-top: 10px; display: flex; justify-content: flex-end;">
	                                        <nav aria-label="Page navigation example">
	                                               <ul class="pagination pagination-rounded mb-0">
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Previous">
	                                                           <i class="mdi mdi-chevron-left"></i>
	                                                       </a>
	                                                   </li>
		                                                  <li class="page-item"><a id="pageOne2" class="page-link"  onclick="paging2(this)">1</a></li>
	                                               		 <li class="page-item"><a class="page-link" onclick="paging2(this)" >2</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging2(this)">3</a></li>
		                                                <li class="page-item"><a class="page-link" onclick="paging2(this)">4</a></li>
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Next">
	                                                           <i class="mdi mdi-chevron-right"></i>
	                                                       </a>
	                                                   </li>
	                                               </ul>
	                                       </nav>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							</div>
                           
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="card-title mb-4">고객 MBTI 타입</h4>
                                        <div class="table-responsive" style="display: flex; align-items: center;">
                                            <table class="table table-hover table-borderless align-middle table-centered table-nowrap mb-0" style="width: 60%;">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>아이디</th>
                                                        <th>이름</th>
                                                        <th>MBTI TYPE</th>
                                                        <th>관리</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
													<c:forEach var="customer" items="${customerList}">
													<tr>
                                                        <td>
                                                            ${customer.CUSTOMER_ID}
                                                        </td>
                                                        <td>
                                                           ${customer.CUSTOMER_NAME}
                                                        </td>
                                                        <td>
                                                        ${customer.MBTI_TYPE}
                                                        </td>
                                                        <td>
                                                            <div class="dropdown">
                                                                <a class="text-muted dropdown-toggle font-size-16" role="button"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true">
                                                                    <i class="mdi mdi-dots-vertical"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-end">
                                                                    <a class="dropdown-item" href="#">수정</a>
                                                                    <a class="dropdown-item" href="#">탈퇴</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                   	 </tr>
													</c:forEach>
                                                </tbody>
                                            </table>
                                            <!-- end table -->
											<div id="mbtiChart" style="width: 40%;"></div>
                                        </div>
                                        <div style="margin-top: 10px; display: flex;">
	                                        <nav aria-label="Page navigation example">
	                                               <ul class="pagination pagination-rounded mb-0">
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Previous">
	                                                           <i class="mdi mdi-chevron-left"></i>
	                                                       </a>
	                                                   </li>
		                                                  <li class="page-item"><a id="pageOne3" class="page-link" >1</a></li>
	                                               		 <li class="page-item"><a class="page-link" >2</a></li>
		                                                <li class="page-item"><a class="page-link" >3</a></li>
		                                                <li class="page-item"><a class="page-link" >4</a></li>
	                                                   <li class="page-item">
	                                                       <a class="page-link" href="javascript: void(0);" aria-label="Next">
	                                                           <i class="mdi mdi-chevron-right"></i>
	                                                       </a>
	                                                   </li>
	                                               </ul>
	                                       </nav>
                                        </div>
                                        <!--end table-responsive-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->


<!--                         subscribeModal
                        <div class="modal fade modal-with-bg" id="subscribeModal" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content bg-pattern">
                                    <div class="modal-header border-bottom-0">
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="text-center mb-4">
                                            <div class="avatar-md mx-auto mb-4">
                                                <div class="avatar-title bg-light rounded-circle text-primary h1">
                                                    <i class="mdi mdi-email-open"></i>
                                                </div>
                                            </div>

                                            <div class="row justify-content-center">
                                                <div class="col-xl-10">
                                                    <h4 class="text-primary">Subscribe !</h4>
                                                    <p class="text-muted font-size-14 mb-4">Subscribe our newletter and get notification to stay update.</p>

                                                    <div class="input-group bg-light rounded">
                                                        <input type="email" class="form-control bg-transparent border-0" placeholder="Enter Email address" aria-label="Recipient's username" aria-describedby="button-addon2">
                                
                                                        <button class="btn btn-primary" type="button" id="button-addon2">
                                                            <i class="bx bxs-paper-plane"></i>
                                                        </button>
                                                    </div>
                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        end modal -->

                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Samply.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Pichforest
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                    <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="m-0" />

                <div class="p-4">
                    <h6 class="mb-3">Layout</h6>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-vertical" value="vertical">
                        <label class="form-check-label" for="layout-vertical">Vertical</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-horizontal" value="horizontal">
                        <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Mode</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-light" value="light">
                        <label class="form-check-label" for="layout-mode-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-dark" value="dark">
                        <label class="form-check-label" for="layout-mode-dark">Dark</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Width</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-fuild" value="fuild" onchange="document.body.setAttribute('data-layout-size', 'fluid')">
                        <label class="form-check-label" for="layout-width-fuild">Fluid</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Position</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')">
                        <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                        <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                    </div>

                    <h6 class="mt-4 mb-3">Topbar Color</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')">
                        <label class="form-check-label" for="topbar-color-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                        <label class="form-check-label" for="topbar-color-dark">Dark</label>
                    </div>

                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')">
                        <label class="form-check-label" for="sidebar-size-default">Default</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                        <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                        <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                    </div>

                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')">
                        <label class="form-check-label" for="sidebar-color-light">Light</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                        <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                        <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                    </div>

                    <h6 class="mt-4 mb-3">Direction</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-ltr" value="ltr">
                        <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-rtl" value="rtl">
                        <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                    </div>

                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>
        <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title mt-0" id="exampleModalScrollableTitle">빌딩 등록하기</h5>
                          <button id="insertModalClose" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                      <form  id="propertyInsertForm" enctype="multipart/form-data">
                      	<div class="mb-3 row">
                          	 <h5 class="fs-17 fw-semibold mb-3 mb-0">빌딩 정보</h5>
                          	 <hr>
                          	  <label for="staticEmail" class="col-sm-2 col-form-label">빌딩번호</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="buildingNo" name="buildingNo">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">빌딩명</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="buildingName" name="buildingName">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">규모</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="scale"  name="scale">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">연면적</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="totalFloorArea"  name="totalFloorArea">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">건폐율</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="coverageRatio"  name="coverageRatio" >
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">용적률</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="floorAreaRatio"  name="floorAreaRatio">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">주용도</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="buildingPurpose" name="buildingPurpose">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">준공년월</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="buildDate"  name="buildDate">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label" >이미지</label>
						    <div class="col-sm-10 " style="margin-bottom: 15px;">
						      <input type="file" class="form-control" id="buildingImage"  name="buildingImage" multiple="multiple">
						    </div>
						    <h5 class="fs-17 fw-semibold mb-3 mb-0">토지 정보</h5>
                          	 <hr>
                          	 <label for="staticEmail" class="col-sm-2 col-form-label">지역코드</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="locationCode" name="locationCode">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="buildingAddress" name="buildingAddress">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">용도지역</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="landPurpose" name="landPurpose">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">대지면적</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="landArea" name="landArea">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">위경도정보</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="map" name="map">
						    </div>
						    <h5 class="fs-17 fw-semibold mb-3 mb-0">매물 정보</h5>
                          	 <hr>
                          	 <label for="staticEmail" class="col-sm-2 col-form-label">매물번호</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="propertyNo" name="propertyNo">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">매물명</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="propertyName" name="propertyName">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">거래연면적</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="propertyArea" name="propertyArea">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">거래대지면적</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="propertyLandArea" name="propertyLandArea">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">DABS수량</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="dabsCount" name="dabsCount">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">배당률</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="yield" name="yield">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">배당 지급일</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="yieldDate" name="yieldDate">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">종목코드</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="fid" name="fid">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">공모기간</label>
						    <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="competitionPeriod1" name="competitionPeriod1">
						    </div>
						     <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="competitionPeriod2" name="competitionPeriod2">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">공모일</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="competitionDate" name="competitionDate">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">공모가</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="competitionPrice" name="competitionPrice">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">MBTI 타입</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="mbtiType" name=mbtiType>
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자포인트1</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointHead1" name="pointHead1">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자포인트2</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointHead2" name="pointHead2">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자포인트3</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointHead3" name="pointHead3">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자디테일1</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointDetail1" name="pointDetail1">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자디테일2</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointDetail2" name="pointDetail2">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">투자디테일3</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="pointDetail3" name="pointDetail3">
						    </div>
						    <h5 class="fs-17 fw-semibold mb-3 mb-0">임차인 정보</h5>
                          	 <hr>
                          	 <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">임차인</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="tenantName" name="tenantName">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">업종</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="business" name="business">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label" style="white-space: nowrap;">계약기간</label>
						    <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="contract1" name="contract1">
						    </div>
						   <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="contract2" name="contract2">
						    </div>
					  </div>
			</form>
                     </div>
                     <div class="modal-footer">
                         <button  class="btn btn-primary" onclick="insertProperty()">매물등록하기</button>
                    </div>
                 </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
         </div><!-- /.modal -->
         
          <div class="modal fade" id="disposalModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h5 class="modal-title mt-0" id="exampleModalScrollableTitle">매각투표 등록하기</h5>
                          <button id="disposalModalClose" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                      <form  id="disposalForm" enctype="multipart/form-data">
                      	<div class="mb-3 row">
                          	 <h5 class="fs-17 fw-semibold mb-3 mb-0">매각 정보</h5>
                          	 <hr>
                          	  <label for="staticEmail" class="col-sm-2 col-form-label">빌딩</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
							    <select name="propertyNo" class="form-select" aria-label="Default select example">
									  <option selected>빌딩을 선택해주세요</option>
									  <c:forEach var="allProperty"  items="${allPropertyList}">
										  <option value="${allProperty.PROPERTY_NO}">${allProperty.BUILDING_NAME}</option>
									  </c:forEach>
								</select>
						    </div>
						       <label for="staticEmail" class="col-sm-2 col-form-label">투표기간</label>
						    <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="disposalPeriod1" name="disposalPeriod1">
						    </div>
						     <div class="col-sm-5" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="disposalPeriod2" name="disposalPeriod2">
						    </div>
						    <label for="staticEmail" class="col-sm-2 col-form-label">매각 금액</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="text" class="form-control" id="disposalPrice" name="disposalPrice">
						    </div>
						     <label for="staticEmail" class="col-sm-2 col-form-label">매각 배당급 지급일</label>
						    <div class="col-sm-10" style="margin-bottom: 15px;">
						      <input type="date" class="form-control" id="payDate"  name="payDate">
						    </div>
						</div>
			</form>
                     </div>
                     <div class="modal-footer">
                         <button  class="btn btn-primary" onclick="updateDisposal()">투표 등록하기</button>
                    </div>
                 </div><!-- /.modal-content -->
             </div><!-- /.modal-dialog -->
         </div><!-- /.modal -->
         
         <button id="insertSucsess" type="button" class="btn btn-primary waves-effect waves-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: none;">
               Static backdrop modal
        </button>

           <!-- staticBackdrop Modal -->
           <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered" role="document">
                   <div class="modal-content">
                       <div class="modal-header">
                           <h5 class="modal-title" id="staticBackdropLabel">등록 성공</h5>
                           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                       </div>
                       <div class="modal-body">
                           <p style="font-size: 20px;">공모/청약을 성공적으로 등록하였습니다</p>
                       </div>
                       <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="window.location.reload()">닫기</button>
                       </div>
                   </div>
               </div>
           </div>
           
           <button id="disposalSucsess" type="button" class="btn btn-primary waves-effect waves-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" style="display: none;">
               Static backdrop modal
        </button>

           <!-- staticBackdrop Modal -->
           <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered" role="document">
                   <div class="modal-content">
                       <div class="modal-header">
                           <h5 class="modal-title" id="staticBackdropLabel">등록 성공</h5>
                           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                       </div>
                       <div class="modal-body">
                           <p style="font-size: 20px;">매각투표가 성공적으로 등록되었습니다</p>
                       </div>
                       <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="window.location.reload()">닫기</button>
                       </div>
                   </div>
               </div>
           </div>

   <!-- JAVASCRIPT -->
        <script src="/finalproject1/resources/admin/libs/jquery/jquery.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/metismenu/metisMenu.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/simplebar/simplebar.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/node-waves/waves.min.js"></script>


        <!-- dashboard init -->
        <script src="/finalproject1/resources/admin/js/pages/dashboard.init.js"></script>

        <!-- App js -->
        <script src="/finalproject1/resources/admin/js/app.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script type="text/javascript" src="/finalproject1/resources/js/appToken.js"></script>
        <script type="text/javascript">    
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
        
        function insertProperty(){
        			const formData = new FormData();
        			const photos = document.querySelector('input[type="file"][multiple]');
        			for (let i = 0; i < photos.files.length; i++) {
        			  formData.append('buildingImage', photos.files[i]);
        			}
        			formData.append("buildingNo",$('#buildingNo').val())
        			fetch('${pageContext.request.contextPath}/admin/insertProperty',{
        				method: 'POST',
        				headers: {
        			        'Content-Type': 'application/x-www-form-urlencoded'
        			    },
        			    body : $('#propertyInsertForm').serialize()
        			}).then(res=>res.json()).then(response=>{
        				$('#insertModalClose').trigger('click')
        				$('#insertSucsess').trigger('click')
        				fetch('${pageContext.request.contextPath}/admin/fileUpload', {
        			    method: 'POST',
        			    body: formData 
        			    })
        			})
        		}
        
        function updateDisposal(){
	
			fetch('${pageContext.request.contextPath}/admin/updateDisposal',{
				method: 'POST',
				headers: {
			        'Content-Type': 'application/x-www-form-urlencoded'
			    },
			    body : $('#disposalForm').serialize()
			}).then(res=>res.json()).then(response=>{
				$('#disposalModalClose').trigger('click')
				$('#disposalSucsess').trigger('click')
			})
		}
		        
		        function getStckPrPr(){
					    const headers = {"Content-Type":"application/json", 
					    "authorization": 'Bearer '+ACCESS_TOKEN,
					    "appKey":APP_KEY,
					    "appSecret":APP_SECRET,
					    "tr_id":"FHKST01010100",
					    }
		        	<c:forEach  var="property"  items="${propertyList}" varStatus="status">
		        	fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${property.FID}',{headers})
		        	.then(res=>res.json()).then(response=>{
		        		$('#stckPrPr${status.index}').text((response.output.stck_prpr*1).toLocaleString('ko-KR')+' 원')
		        	})
		        	</c:forEach>
		        }
		        getStckPrPr()
		         setInterval(getStckPrPr,3000)
		        
				function showVoteChart(){				
						fetch('${pageContext.request.contextPath}/disposal/getVoteProcess?propertyNo=10020000').then(
							(res) => res.json	()	
						).then(response=>{
							if(response.length != 0){
								$('#sumDabsAmount').text(numberToKorean(response[0].SUM_DABS_AMOUNT))
								$('#totalDabs').text(numberToKorean(response[0].TOTAL_DABS))
								
								$('#chart').empty()
								var options = {
								          series: [response[0].VOTE_PROCESS.toFixed(1)],
								          chart: {
								          height: 200,
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
								                  fontSize: '15px'
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
									        var chart = new ApexCharts(document.querySelector("#chart"), options);
									        chart.render();
										

							}else{
								$('#sumDabsAmount').text(0)
								$('#totalDabs').text(0)
								
								$('#chart').empty()
								var options = {
								          series: [0],
								          chart: {
								          height: 200,
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
								                  fontSize: '15px'
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
									        var chart = new ApexCharts(document.querySelector("#chart"), options);
									        chart.render();
							}
								})

					
				}	
				
				showVoteChart()
				
				
				function showVoteChart2(){
								let response = '${subscriptionProperty[0].SUBSCRIPTION_RATE}'
						
								if(response.length !=0){
									$('#chart2').empty()
									var options = {
									          series: [(response*1).toFixed(4)],
									          chart: {
									          height: 200,
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
									                  fontSize: '15px'
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
										        var chart = new ApexCharts(document.querySelector("#chart2"), options);
										        chart.render();
								}else{
									$('#chart2').empty()
									var options = {
									          series: [0],
									          chart: {
									          height: 200,
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
									                  fontSize: '15px'
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
										        var chart = new ApexCharts(document.querySelector("#chart2"), options);
										        chart.render();

								}
								
										

							}
					
				
				
				showVoteChart2()
				
				function voteState(){
					fetch('${pageContext.request.contextPath}/checkVoteState?propertyNo=10020000').then(res=>res.json()).then(response=>{
						if(response.length != 0){
							
							if(response[0].AGREE_DISAGREE_STATE == 'A'){
								$('#agreeCnt').text(numberToKorean(response[0].DABS_AMOUNT))
								$('#disagreeCnt').text(numberToKorean(response[1].DABS_AMOUNT))
							}else{
								$('#agreeCnt').text(numberToKorean(response[1].DABS_AMOUNT))
								$('#disagreeCnt').text(numberToKorean(response[0].DABS_AMOUNT))
							}
						}else{
							$('#agreeCnt').text(0)
							$('#disagreeCnt').text(0)
						}
					})
				}
				
				voteState()
				
				function getTotalChart(propertyNo){
					fetch('${pageContext.request.contextPath}/admin/getPropertyAnalystWeek?propertyNo='+(propertyNo+'')).then(res=>res.json()).then(response=>{
						$('#earningAmountWeek').text((response[0].EARNING_PRICE).toLocaleString('ko-KR'))
						$('#avlsAmountWeek').text((response[0].SUM_ORDER_PRICE).toLocaleString('ko-KR'))
						$('#avlsVolWeek').text((response[0].SUM_DABS_AMOUNT).toLocaleString('ko-KR'))
					})
					
					fetch('${pageContext.request.contextPath}/admin/getPropertyAnalyst?propertyNo='+(propertyNo+'')).then(res=>res.json()).then(response=>{
						$('#totalChart').empty()
						let  acmlVol = response.map((res)=>{
							return res.SUM_DABS_AMOUNT
						})
						let  acmlAmount = response.map((res)=>{
							return res.SUM_ORDER_PRICE
						})
						let  earningPrice = response.map((res)=>{
							return res.EARNING_PRICE
						})
						let  orderDate = response.map((res)=>{
							return res.ORDER_DATE
						})
					     var options = {
				             series: [{
				             name: '거래대금',
				             type: 'column',
				             data: acmlAmount
				           }, {
				             name: '거래량',
				             type: 'column',
				             data:  acmlVol
				           }, {
				             name: '수익금액',
				             type: 'line',
				             data:  earningPrice
				           }],
				             chart: {
				             height: 350,
				             type: 'line',
				             stacked: false,
				             toolbar:false
				           },
				           dataLabels: {
				             enabled: false
				           },
				           stroke: {
				             width: [1, 1, 4]
				           },
				           title: {
				             /* text: 'XYZ - Stock Analysis (2009 - 2016)', */
				             align: 'left',
				             offsetX: 110
				           },
				           xaxis: {
				             categories: orderDate,
				           },
				           yaxis: [
				             {
				               axisTicks: {
				                 show: true,
				               },
				               axisBorder: {
				                 show: true,
				                 color: '#008FFB'
				               },
				               labels: {
				                 style: {
				                   colors: '#008FFB',
				                 },
				                 formatter: function (value) {
				                     return value.toLocaleString('ko-KR');
				                   }
				               },
				               title: {
				                 text: "거래대금",
				                 style: {
				                   color: '#008FFB',
				                 }
				               },
				               tooltip: {
				                 enabled: true
				               }
				             },
				             {
				               seriesName: 'Income',
				               opposite: true,
				               axisTicks: {
				                 show: true,
				               },
				               axisBorder: {
				                 show: true,
				                 color: '#00E396'
				               },
				               labels: {
				                 style: {
				                   colors: '#00E396',
				                 },
				                 formatter: function (value) {
				                     return value.toLocaleString('ko-KR');
				                   }
				               },
				               title: {
				                 text: "거래량",
				                 style: {
				                   color: '#00E396',
				                 }
				               },
				             },
				             {
				               seriesName: 'Revenue',
				               opposite: true,
				               axisTicks: {
				                 show: true,
				               },
				               axisBorder: {
				                 show: true,
				                 color: '#FEB019'
				               },
				               labels: {
				                 style: {
				                   colors: '#FEB019',
				                 },
				                 formatter: function (value) {
				                     return value.toLocaleString('ko-KR');
				                   }
				               },
				               title: {
				                 text: "수익금액",
				                 style: {
				                   color: '#FEB019',
				                 }
				               }
				             },
				           ],
				           tooltip: {
				             fixed: {
				               enabled: true,
				               position: 'topLeft', // topRight, topLeft, bottomRight, bottomLeft
				               offsetY: 30,
				               offsetX: 60
				             },
				           },
				           legend: {
				             horizontalAlign: 'left',
				             offsetX: 40
				           }
				           };

				           var chart = new ApexCharts(document.querySelector("#totalChart"), options);
				           chart.render()		

					})
				}
				
				getTotalChart('10000000')
				
				   $('#pageOne').trigger('click')
		          $('#pageOne2').trigger('click')
		          $('#pageOne3').trigger('click')
				function paging(item){
		        	  $(item).css('background-color','#398175')
		        	  $(item).css('color','white')
		        	  let startNum = ($(item).text()*1-1)*8
		        	  let endNum = ($(item).text()*1)*8
		        	  fetch('${pageContext.request.contextPath}/admin/orderList?startNum='+startNum+'&endNum='+endNum).then(
		        		(res)=>res.json()		  
		        	  ).then( response=>{
		        		  if(response != null){
		        				$('#orderList').empty()
		        				for(let i=0; i < response.length; i++){
		        	  					let str =''
				        				str += '<tr><td>'+response[i].BUILDING_NAME+'</td>'
				        				if(response[i].ORDER_TYPE == '매수'){
				        					str += '<td><div style="color: red;">매수</div></td>'
				        				}else{
				        					str += '<td><div style="color: blue;">매도</div></td>'
				        				}
				        				if(response[i].ORDER_STATE == '성공'){
				        					str += '<td><i class="mdi mdi-checkbox-blank-circle text-success"></i> 성공</td>'
				        				}else{
				        					str += '<td><i class="mdi mdi-checkbox-blank-circle text-warning"></i> 대기</td>'
				        				}
				        				str += '<td>'+(response[i].DABS_AMOUNT).toLocaleString('ko-KR')+'</td>'
				        				str += '<td>'+(response[i].ORDER_PRICE).toLocaleString('ko-KR')+'</td>'
				        				str += '<td>'+response[i].ORDER_DATE+'</td></tr>'
				        				$('#orderList').append(str)
		        				}
		        		  }
		        		  
		        	  }) 
		        	  
		          }
				
				function paging2(item){
		        	  $(item).css('background-color','#398175')
		        	  $(item).css('color','white')
		        	  let startNum = ($(item).text()*1-1)*8
		        	  let endNum = ($(item).text()*1)*8
		        	  fetch('${pageContext.request.contextPath}/admin/voteList?startNum='+startNum+'&endNum='+endNum).then(
		        		(res)=>res.json()		  
		        	  ).then( response=>{
		        		  if(response != null){
		        				$('#voteList').empty()
		        				for(let i=0; i < response.length; i++){
		        	  					let str =''
				        				str += '<tr><td>'+response[i].BUILDING_NAME+'</td>'
				        				str += '<td>'+(response[i].DABS_AMOUNT).toLocaleString('ko-KR')+'</td>'
				        				if(response[i].AGREE_DISAGREE_STATE == '찬성'){
				        					str += ' <td><span class="badge rounded-pill bg-success bg-soft text-success">찬성</span></td>'
				        				}else{
				        					str += '<td><span class="badge rounded-pill bg-danger bg-soft text-danger">반대</span></td>'
				        				}
				        				str += '<td>'+response[i].VOTE_DATE+'</td></tr>'
				        				$('#voteList').append(str)
		        				}
		        		  }
		        		  
		        	  }) 
		        	  
		          }
				
				function mbtiChart(){
					fetch('${pageContext.request.contextPath}/admin/mbtiRate').then(res=>res.json()).then(response=>{
						let mbtiType = response.map(function(data){
							return data.MBTI_TYPE
						})
						let rate = response.map(function(data){
							return data.MBTI_RATE
						})
						  var options = {
			                series:rate,
			                chart: {
			                type: 'donut',
			              },
			              responsive: [{
			                breakpoint: 480,
			                options: {
			                  chart: {
			                    height:350
			                  },
			                  legend: {
			                    position: 'bottom'
			                  }
			                }
			              }],
			              labels: mbtiType,
			              };

			              var chart = new ApexCharts(document.querySelector("#mbtiChart"), options);
			              chart.render();
						
					})
			      
				}
				mbtiChart()
		          
        </script>
        
        
</body>
</html>