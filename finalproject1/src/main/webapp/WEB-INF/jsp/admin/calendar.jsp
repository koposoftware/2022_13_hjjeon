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
        
        <link href="/finalproject1/resources/admin/libs/@fullcalendar/core/main.min.css" rel="stylesheet" type="text/css" />
        <link href="/finalproject1/resources/admin/libs/@fullcalendar/daygrid/main.min.css" rel="stylesheet" type="text/css" />
        <link href="/finalproject1/resources/admin/libs/@fullcalendar/bootstrap/main.min.css" rel="stylesheet" type="text/css" />
        <link href="/finalproject1/resources/admin/libs/@fullcalendar/timegrid/main.min.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        	.fc-event{
        		border : none;
        		height: 30px;
        		display: flex;
        		align-items: center;
        		justify-content: center;
        	}
        </style>
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
                            <li class="menu-title" key="t-menu">Menu</li>
                
                            <li>
                                <a href="index.html" class="waves-effect">
                                    <i class='bx bxs-dashboard'></i>
                                    <span key="t-dashboard">Dashboard</span>
                                </a>
                            </li>

                            <li class="menu-title mt-3" key="t-more">More</li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class='bx bxs-grid'></i>
                                    <span key="t-apps">Apps</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="${pageContext.request.contextPath}/admin/calendar"><span key="t-calendar">Calendar</span></a></li>
                                    <li><a href="apps-chat.html"><span key="t-chat">Chat</span></a></li>
                                    <li>
                                        <a href="javascript: void(0);" class="has-arrow"><span key="t-email">Email</span></a>
                                        <ul class="sub-menu" aria-expanded="true">
                                            <li><a href="apps-email-inbox.html" key="t-inbox">Inbox</a></li>
                                            <li><a href="apps-email-read.html" key="t-read-email">Read Email</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript: void(0);" class="waves-effect">
                                    <span class="badge rounded-pill bg-success float-end">9</span>
                                    <i class='bx bx-user-circle' ></i>
                                    <span key="t-authentication">Authentication</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="auth-login.html" key="t-login">Login</a></li>
                                    <li><a href="auth-register.html" key="t-register">Register</a></li>
                                    <li><a href="auth-recoverpw.html" key="t-recover-password">Recover Password</a></li>
                                    <li><a href="auth-lock-screen.html" key="t-lock-screen">Lock Screen</a></li>
                                    <li><a href="auth-confirm-mail.html" key="t-confirm-mail">Confirm Mail</a></li>
                                    <li><a href="auth-email-verification.html" key="t-email-verification">Email Verification</a></li>
                                    <li><a href="auth-two-step-verification.html" key="t-two-step-verification">Two Step Verification</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class='bx bx-file'></i>
                                    <span key="t-pages">Pages</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="pages-starter.html" key="t-starter-page">Starter Page</a></li>
                                    <li><a href="pages-preloader.html" key="t-preloader">Preloader</a></li>
                                    <li><a href="pages-profile.html" key="t-profile">Profile</a></li>
                                    <li><a href="pages-invoice.html" key="t-invoice">Invoice</a></li>
                                    <li><a href="pages-maintenance.html" key="t-maintenance">Maintenance</a></li>
                                    <li><a href="pages-comingsoon.html" key="t-coming-soon">Coming Soon</a></li>
                                    <li><a href="pages-timeline.html" key="t-timeline">Timeline</a></li>
                                    <li><a href="pages-pricing.html" key="t-pricing">Pricing</a></li>
                                    <li><a href="pages-404.html" key="t-error-404">Error 404</a></li>
                                    <li><a href="pages-500.html" key="t-error-500">Error 500</a></li>
                                </ul>
                            </li>


                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
            <!-- Left Sidebar End -->
            <div class="main-content">

    			 <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Calendar</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Apps</a></li>
                                            <li class="breadcrumb-item active">Calendar</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">

                                <div class="row  mb-4">
                                    <div class="col-lg-3">
                                        <div class="card h-100 mb-lg-0">
                                            <div class="card-body">
                                                <button class="btn font-16 btn-primary w-100" id="btn-new-event"><i
                                                        class="mdi mdi-plus-circle-outline"></i> 새로운 일정 추가하기</button>
                                                
                                                <div id="external-events">
                                                    <br>
                                                    <p class="text-muted">드래그하여 일정을 추가하세요</p>
                                                    <div class="external-event fc-event bg-success" data-class="bg-success">
                                                        <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>배당
                                                    </div>
                                                    <div class="external-event fc-event bg-info" data-class="bg-info">
                                                        <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>청약
                                                    </div>
                                                    <div class="external-event fc-event bg-danger" data-class="bg-danger">
                                                        <i class="mdi mdi-checkbox-blank-circle font-size-11 me-2"></i>매각
                                                    </div>
                                                </div>

                                            </div><!-- end card-body-->
                                        </div><!-- end card-->
                                    </div><!-- end col-->

                                    <div class="col-lg-9">
                                        <div class="card mb-lg-0">
                                            <div class="card-body">

                                                <div id="calendar"></div>

                                            </div><!-- end card-body-->
                                        </div><!-- end card-->
                                    </div> <!-- end col -->
                                </div><!-- end row-->

                                <!-- Add New Event MODAL -->
                                <div class="modal fade" id="event-modal" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header py-3 px-4 border-bottom-0">
                                                <h5 class="modal-title" id="modal-title">일정 추가</h5>

                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-hidden="true"></button>

                                            </div><!-- end modal-header-->
                                            <div class="modal-body p-4">
                                                <form class="needs-validation" name="event-form" id="form-event" novalidate>
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="mb-3">
                                                                <label class="form-label">일정명</label>
                                                                <input class="form-control" placeholder="일정명을 입력하세요"
                                                                    type="text" name="title" id="event-title" required
                                                                    value="" />
                                                                <div class="invalid-feedback">Please provide a valid event name
                                                                </div>
                                                            </div>
                                                        </div><!-- end col-->

                                                        <div class="col-12">
                                                            <div class="mb-3">
                                                                <label class="form-label">Category</label>
                                                                <select class="form-control form-select" name="category"
                                                                    id="event-category" required>
                                                                    <option value="bg-success" selected>배당</option>
                                                                    <option value="bg-danger">매각</option>
                                                                    <option value="bg-info">청약</option>
                                                                </select>
                                                                <div class="invalid-feedback">Please select a valid event
                                                                    category</div>
                                                            </div>
                                                        </div><!-- end col-->
                                                    </div><!-- end row-->

                                                    <div class="row mt-2">
                                                        <div class="col-6">
                                                            <button type="button" class="btn btn-danger"
                                                                id="btn-delete-event">삭제</button>
                                                        </div><!-- end col-->

                                                        <div class="col-6 text-end">
                                                            <button type="button" class="btn btn-light me-1"
                                                                data-bs-dismiss="modal">닫기</button>
                                                            <button type="submit" class="btn btn-success"
                                                                id="btn-save-event">저장</button>
                                                        </div><!-- end col-->
                                                    </div><!-- end row-->
                                                </form>
                                            </div><!-- end modal-body-->
                                        </div> <!-- end modal-content-->
                                    </div> <!-- end modal dialog-->
                                </div>
                                <!-- end modal-->
                            </div>
                        </div>

                    </div><!-- container-fluid -->

                </div><!-- End Page-content -->
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
        
        <!-- plugin js -->
        <script src="/finalproject1/resources/admin/libs/moment/min/moment.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/jquery-ui-dist/jquery-ui.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/@fullcalendar/core/main.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/@fullcalendar/bootstrap/main.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/@fullcalendar/daygrid/main.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/@fullcalendar/timegrid/main.min.js"></script>
        <script src="/finalproject1/resources/admin/libs/@fullcalendar/interaction/main.min.js"></script>

        <!-- Calendar init -->
        <script src="/finalproject1/resources/admin/js/pages/calendar.init.js"></script>

        
        
</body>
</html>