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
		<link href="/finalproject1/resources/signature-pad-main//assets/jquery.signaturepad.css" rel="stylesheet">
		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
		<style type="text/css">
			.answer1, .answer2, .answer3,.answer4,.answer5,.answer6,.answer7{
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

         		      <section class="page-title-box" style="background-color: white; padding: 170px; padding-bottom: 0px;">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-6">
                                    <div class="text-center text-white">
                                        <h3 class="mb-4" style="color: black">투자성향 진단하기</h3>
                                    </div>
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                        </div>
                        <!--end container-->
                      <hr style="color: black; height: 2px;">
                    </section>
                    <section id="mbtiSection" class="section" style="margin-top: 50px;" >
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 500px;">
                            <div id="mainBox"  class="row justify-content-center" style="border: 2px solid #BDBDBD; width: 500px; border-radius: 10px;">
                            	<div  id="testBox" class="row justify-content-center" style="padding-bottom: 20px; padding-top: 20px;">
									<div style="width: 300px;">
										<img src="/finalproject1/resources/images/mbti/mbti_main.png" style="width: 100%;">
									</div>
									<div style="text-align: center; margin-top: 20px;">
										<h3>투자성향 MBTI 테스트</h3>
									</div>
									<div style="text-align: center; margin-top: 10px;">
										<p class="text-muted" style="font-weight: 600;">하나랜드에서 제공하는 투자성향 MBTI를 통해</p>
										<p class="text-muted" style="font-weight: 600;">나만의 투자 유형을 확인해 보세요!</p>
									</div>
									  <div class="text-center">
	                                        <button id="startTest" name="submit" class="btn btn" style="background-color: #398175; color: white;" onclick="startTest()">테스트 시작하기<i class="uil uil-message ms-1"></i></button>
	                                   </div>
                            	</div>
                            </div>
                            <div id="questionBox" style="display: flex; align-items: center; height: 200px;">
                            
                            	<div id="leftBtn" style="margin-right: 80px; margin-top: 60px;"><i class="fa-solid fa-arrow-left" style="font-size: 50px;"></i></div>
	                     		<div style="width: 850px;">
		                             <div id="question1" style="display: flex; flex-direction: column; margin-left: 100px;">
		                            	<h3>1/7</h3>
		                            	<h2 style="margin-bottom: 30px;">고객님의 가장 선호하는 투자 방식은 무엇인가요? </h2>
		                            	<p class="text answer1" style="font-size: 20px;">1. 위험관리도 필요하다 주식, 채권 혼합형</p>
		                            	<p class="text answer1" style="font-size: 20px;">2. 스트레스가 덜한 펀드</p>
		                            	<p class="text answer1" style="font-size: 20px;">3. 남한테는 못 맡긴다, 직접 투자족</p>
		                            	<p class="text answer1" style="font-size: 20px;">4. 레버리지도 OK 돈 되는건 다한다</p>
		                            </div>
		                             <div id="question2" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>2/7</h3>
		                            	<h2 style="margin-bottom: 30px;">고객님의 추구하는 주식 투자 기간은 어느정도 인가요? </h2>
		                            	<p class="text answer2" style="font-size: 20px;">1. 분기, 연간 실적은 보고 판단한다</p>
		                            	<p class="text answer2" style="font-size: 20px;">2. 한 달만 보면 답이 나온다</p>
		                            	<p class="text answer2" style="font-size: 20px;">3. 1주일은 지켜본다</p>
		                            	<p class="text answer2" style="font-size: 20px;">4. 단타</p>
		                            </div>
		                             <div id="question3" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>3/7</h3>
		                            	<h2 style="margin-bottom: 30px; ">고객님의  전체 금융자산 중 주식 투자 비중은 어느정도 인가요?</h2>
		                            	<p class="text answer3" style="font-size: 20px;">1. 0 ~ 30</p>
		                            	<p class="text answer3" style="font-size: 20px;">2. 30 ~ 50</p>
		                            	<p class="text answer3" style="font-size: 20px;">3. 50 ~ 80</p>
		                            	<p class="text answer3" style="font-size: 20px;">4. 80 ~ 100</p>
		                            </div>
		                            <div id="question4" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>4/7</h3>
		                            	<h2 style="margin-bottom: 30px; ">고객님이 가장 많이 보유하고 있는 주식은 어떤건가요?</h2>
		                            	<p class="text answer4" style="font-size: 20px;">1. 믿고 기다리는 가치주</p>
		                            	<p class="text answer4" style="font-size: 20px;">2. 망할일 없는 대형주</p>
		                            	<p class="text answer4" style="font-size: 20px;">3. 혁신 테마주</p>
		                            	<p class="text answer4" style="font-size: 20px;">4. 바이오</p>
		                            </div>
		                             <div id="question5" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>5/7</h3>
		                            	<h2 style="margin-bottom: 30px; ">고객님의 1년 목표 수익률은 어느정도 인가요?</h2>
		                            	<p class="text answer5" style="font-size: 20px;">1. 예금 금리 수준</p>
		                            	<p class="text answer5" style="font-size: 20px;">2. 1년에 10%</p>
		                            	<p class="text answer5" style="font-size: 20px;">3. 위험을 감수하고 50%</p>
		                            	<p class="text answer5" style="font-size: 20px;">4. 100% 고수익</p>
		                            </div>
		                            <div id="question6" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>6/7</h3>
		                            	<h2 style="margin-bottom: 30px; ">고객님의 주식투자의 가장 중요한 덕목은 무엇인가요?</h2>
		                            	<p class="text answer6" style="font-size: 20px;">1. 돈을 잃지 않는 것</p>
		                            	<p class="text answer6" style="font-size: 20px;">2. 기다림의 미덕</p>
		                            	<p class="text answer6" style="font-size: 20px;">3. 트렌드를 읽어내는 인사이트</p>
		                            	<p class="text answer6" style="font-size: 20px;">4. 수익의 기회를 맡는 동물적인 감각</p>
		                            </div>
		                            <div id="question7" style="display: flex; flex-direction: column; margin-left: 10px; display: none; margin-left: 100px;">
		                            	<h3>7/7</h3>
		                            	<h2 style="margin-bottom: 30px; ">고객님이 믿고 산 종목이 하락하고 있습니다. 어떻게 하실 건가요?</h2>
		                            	<p class="text answer7" style="font-size: 20px;">1. 끝까지 기다린다</p>
		                            	<p class="text answer7" style="font-size: 20px;">2. 1년은 기다린다</p>
		                            	<p class="tex answer7" style="font-size: 20px;">3. 20%이상 조정 받지 않는다면 반년은 기다린다</p>
		                            	<p class="text answer7" style="font-size: 20px;">4. 당일이라도 매도한다</p>
		                            </div>
	                     		</div>
	                            <div id="rightBtn" style="margin-left: 50px; margin-top: 60px;"><i class="fa-solid fa-arrow-right" style="font-size: 50px;"></i></div>
                           		
                            </div>
                             <div id="submitBtn" style="text-align: center; display:none; margin-top: 170px;">
		                            	<button  name="submit" class="btn btn" style=" background-color: #398175; color: white;">테스트 결과보기<i class="uil uil-message ms-1"></i></button>
		                      </div>
                        </div>
                        
                    </section>
                    <div id="loading" style="display: flex; height: 500px; flex-direction: column; align-items: center; margin-top: 100px; display: none; text-align: center;">
                    	<h2 style="margin-bottom: 20px;">고객님의 투자 MBTI	 성향을 파악하고 있어요</h2>
		                <img  src="/finalproject1/resources/images/loading.gif" style="width: 200px; height: 200px;">
                    </div>
                       <section id="resultSectionL" class="section" style="margin-top: 50px; display: none;" >
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 700px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center;">
                            		<h2 style="margin-right: 20px;">${loginVO.name}님의 투자 MBTI 유형은</h2>
                            		<h1 style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">열심히 일하는 개미! 안전추구형입니다.</h1>
                            </div>
                            <div style="display: flex; align-items: center; margin-top: 40px;">
                            	<img  src="/finalproject1/resources/images/mbti/mbtiTypeL.gif" style="width: 400px; height: 500px;">
                            	<div style="display: flex; flex-direction: column; margin-left: 30px; margin-top: 20px;">
                            		    	<div class="candidate-education-content  d-flex">
		                            			<h2>시장의 큰 흐름을 읽고 트렌드에 따라 투자한다!</h2>
		                            			<div class="circle flex-shrink-0 bg-soft" style="margin-bottom: 0; background-color: #7DC8B7;">
															<i class="fa-solid fa-arrow-trend-up" style=" --fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-sack-dollar" style=" color:#E5D85C; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#터무니없는_적금금리</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">터무니없는 적금 수익률에 지쳐 우량주 위주로 투자계 입문</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    	<div style="display: flex; align-items: center;">
                            		    		<i class="fa-solid fa-shield" style=" color:#B2CCFF; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#안전이_최고</h5>
                            		    	</div>
                            		    		<p class="text-muted" style="font-size: 18px;">노후를 위한 적립식의 성격이 강해 무리한 투자는 잘 피해 다님</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-user-tie" style=" color:#CEF279; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#전문가_무한신뢰</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">전문가의 말은 언제나 믿을 만하다는 귀가 얇은 특징</p>
                            		    	</div>
                                </div>
                            </div>
                            <img  src="/finalproject1/resources/images/mbti/underArrow.gif" style="width: 170px; height: 170px; margin-top: -50px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center; margin-top: 20px; margin-bottom: 40px;">
                            		<h2><span style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">안전추구형</span> 고객님에게 추천드리는 빌딩입니다</h2>
                            </div>
                       	</div>
                       	</section>
                       	
                       	  <section id="resultSectionM" class="section" style="margin-top: 50px; display: none;">
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 700px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center;">
                            		<h2 style="margin-right: 20px;">${loginVO.name}님의 투자 MBTI 유형은</h2>
                            		<h1 style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">안전한 듯 스릴 있게 위험중립형입니다</h1>
                            </div>
                            <div style="display: flex; align-items: center; margin-top: 40px;">
                            	<img  src="/finalproject1/resources/images/mbti/mbtiTypeM.gif" style="width: 400px; height: 500px;">
                            	<div style="display: flex; flex-direction: column; margin-left: 30px; margin-top: 20px;">
                            		    	<div class="candidate-education-content  d-flex">
		                            			<h2>부지런한 시장 분석과 실행력까지 겸비한 투자모범생!</h2>
		                            			<div class="circle flex-shrink-0 bg-soft" style="margin-bottom: 0; background-color: #7DC8B7;">
															<i class="fa-solid fa-arrow-trend-up" style=" --fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-book-open-reader" style=" color:#E5D85C; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#공부는_배신하지_않는다</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">경제뉴스,증권사 보고서 필독! 꾸준한 공부로 다져진 투자 지식</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    	<div style="display: flex; align-items: center;">
                            		    		<i class="fa-solid  fa-jet-fighter" style=" color:#B2CCFF; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#날썐_종목찾기</h5>
                            		    	</div>
                            		    		<p class="text-muted" style="font-size: 18px;">때론 천천히 움직이는 주가는 답답, 가끔은 스릴있는 공격적인 투자처를 찾음</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-user-ninja" style=" color:#CEF279; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#강한_경쟁심</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">강한 경쟁심으로 남들보다 더 열심히 공부하지만 때론 예민하게 반응해 어이없게 손실을 보기도</p>
                            		    	</div>
                                </div>
                            </div>
                            <img  src="/finalproject1/resources/images/mbti/underArrow.gif" style="width: 170px; height: 170px; margin-top: -50px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center; margin-top: 20px; margin-bottom: 40px;">
                            		<h2><span style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">위험중립형</span> 고객님에게 추천드리는 빌딩입니다</h2>
                            </div>
                       	</div>
                       	</section>

                       	  <section id="resultSectionH" class="section" style="margin-top: 50px; display: none;">
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 700px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center;">
                            		<h2 style="margin-right: 20px;">${loginVO.name}님의 투자 MBTI 유형은</h2>
                            		<h1 style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">한방이 필요한 주식! 마이웨이형</h1>
                            </div>
                            <div style="display: flex; align-items: center; margin-top: 40px;">
                            	<img  src="/finalproject1/resources/images/mbti/mbtiTypeH.gif" style="width: 400px; height: 500px;">
                            	<div style="display: flex; flex-direction: column; margin-left: 30px; margin-top: 20px;">
                            		    	<div class="candidate-education-content  d-flex">
		                            			<h2>투자는 몰빵이 제맛!</h2>
		                            			<div class="circle flex-shrink-0 bg-soft" style="margin-bottom: 0; background-color: #7DC8B7;">
															<i class="fa-solid fa-arrow-trend-up" style=" --fa-beat-fade-opacity: 0.1; --fa-beat-fade-scale: 1.25;"></i>
												</div>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-dice" style=" color:#E5D85C; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#이_구역_베팅왕</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">고수익을 낼 수 있다면 거침없는 질주, 위험하지만 대범한 투자스타일</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    	<div style="display: flex; align-items: center;">
                            		    		<i class="fa-brands fa-searchengin" style=" color:#B2CCFF; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#내촉이_곧_답이다</h5>
                            		    	</div>
                            		    		<p class="text-muted" style="font-size: 18px;">급등할 주식을 잘 찍어 골라내는 나만의 촉</p>
                            		    	</div>
                            		    	<div class="candidate-education-content  d-flex" style="display: flex; flex-direction: column; margin-top: 20px;" >
                            		    		<div style="display: flex; align-items: center;">
	                            		    		<i class="fa-solid fa-meteor" style=" color:#F15F5F; font-size: 30px; margin-right: 10px; margin-bottom: 3px;"></i>
	                            		    		<h5 style="background-color: #BDBDBD; color: #F6F6F6; border-radius: 10px; padding: 7px; width: fit-content;">#하이리스크_하이리턴_적극공감</h5>
                            		    		</div>
                            		    		<p class="text-muted" style="font-size: 18px;">수익률을 높이기 위해 레버리지, 빚투도 마다히자 않음,큰 배팅을 위해 물타기에 나서기도</p>
                            		    	</div>
                                </div>
                            </div>
                            <img  src="/finalproject1/resources/images/mbti/underArrow.gif" style="width: 170px; height: 170px; margin-top: -50px;">
                            <div  class="justify-content-center" style="display: flex; align-items: center; margin-top: 20px; margin-bottom: 40px;">
                            		<h2><span style="background:linear-gradient(to top, #FFE400 30%, transparent 30%);">마이웨이형</span> 고객님에게 추천드리는 빌딩입니다</h2>
                            </div>
                       	</div>
                       	</section>                       	
                       	
                       	
                       	<section id="buildingSection" class="section" style="padding-top: 30px; display: none;">
                        <div class="container">
                            <div class="row align-items-center" style="border: 2px solid #BDBDBD; border-radius: 10px; padding: 0; padding-right: 20px; height: 400px;">
                                <div class="col-lg-5" style="width: 30%; height:100%; margin: 0; padding: 0;">
                                    <div style="display: flex; align-items: center; height: 100%;">
                                    	<img id="buildingImage" src="" style="height: 100%; width: 100%; border-top-left-radius: 7px; border-bottom-left-radius: 7px; margin-right: 30px;">
                                    </div>
                                </div><!--end col-->
								  
								
								 <div class="col-lg-5" style="width: 70%;">
                                    <div class="section-title mb-3 mb-lg-0">
                                    <div>
	                                    <div style="display: flex; align-items: center; margin-top: 20px;">
	                                        <h4 id="buildingName" class="title"></h4>
	                                        <button type="button"  data-bs-toggle="tooltip" data-bs-placement="right" title="Tooltip on right" style="background-color: white; border: none;">
												  <i class="fa-solid fa-circle-question" style="font-size: 20px;"></i>
											</button>
	                                    </div>
	                                    <div style="display: flex; align-items: center;">
		                                    	<i class="fa-solid fa-location-dot"></i><p id="buildingLocation" class="text_muted" style="font-size:16px; margin-bottom: 0;"></p>
	                                    </div>
	                                    <hr style="height: 3px; margin-bottom: 0;">
                                    </div>
                                    		<div style="display: flex; justify-content: space-between;">
												<div style="display: flex; flex-direction: column; width: 100%; margin-right: 40px;">
													<div style="display: flex;  padding-bottom: 0; margin-bottom: 20px; align-items: center; margin-top: 20px;">
														<div class="candidate-education-content d-flex"
																style="margin-bottom: 0">
																<div class="circle flex-shrink-0 bg-soft" style="margin-bottom: 0; background-color: #D9E5FF;">
																	<i class="fa-solid fa-train-subway" style="color: #6799FF;"></i>
																</div>
														</div>
														<p id="buildingPoint1" style="font-weight: 700; margin-bottom: 0; margin-left: 10px;"></p>
													</div>
														 <hr style="margin-top: 0;">										
													<div style="display: flex; padding-bottom: 0; margin-bottom: 20px; align-items: center;">
					                                      <div class="candidate-education-content d-flex">
																<div class="circle flex-shrink-0 bg-soft-primary">
																<i class="fa-solid fa-arrow-trend-up" ></i>
														</div>
												</div>
														<p id="buildingPoint2" style="font-weight: 700; margin-bottom: 0; margin-left: 10px;"></p>										
													</div>
														 <hr style="margin-top: 0;">
														 <div style="display: flex;  padding-bottom: 0; margin-bottom: 20px; align-items: center;">
															<div class="candidate-education-content d-flex">
																<div class="circle flex-shrink-0 bg-soft" style="background-color: #FFD9EC;">
																	<i class="fa-solid fa-user-shield" style="color: #F361A6;"></i>
																</div>
															</div>
															<p id="buildingPoint3" style="font-weight: 700; margin-bottom: 0; margin-left: 10px;"></p>										
														</div>
														<div style="display: flex; justify-content: space-between; align-items: center;">
															<div class="text-muted" id="prStck" style="font-size: 18px; font-weight: 600;">현재가 : 얼마</div>	
															<a  id="getBuildingDetail" href=""  class="form-text" style="color: #089995; text-align: right; margin-bottom: 10px; font-size: 20px; margin-right: -40px;">빌딩 사러 가기 <i class="mdi mdi-chevron-right align-middle"></i></a>	
														</div>
												</div>
                                    		</div>
                                    </div>
                                </div><!--end col-->
                           
                            </div><!--end row-->
                        </div><!--end container-->
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

                <!--start back-to-top-->
                <button onclick="topFunction()" id="back-to-top">
                    <i class="mdi mdi-arrow-up"></i>
                </button>
                <!--end back-to-top-->
            </div>
            <!-- end main content-->

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
	<script src="/finalproject1/resources/js/appToken.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script type="text/javascript">
		$('#startTest').hover(function(){
			$('#mainBox').animate({
				marginTop: '-10px',
				marginBottom : '10px'
			},500)
			$('#mainBox').css('border','3px solid #398175')
		},function(){
			$('#mainBox').animate({
				marginTop : '3px',
				marginBottom : '-10px'
			},500)
			$('#mainBox').css('border','2px solid #BDBDBD')
		})
		$('#questionBox').hide()
		$('.your-class').hide()
		function startTest(){
			$('#mainBox').hide(500,function(){
				$('#questionBox').show(500)
				$('.your-class').fadeIn(500)
			})
		}
		
		let page = 1
		$('#rightBtn').on('click',function(){
			if(page == 1){
				page = 2
				$('#question1').fadeOut(500,function(){
					$('#question2').fadeIn(500)
				})
			}else if(page == 2){
				page = 3
				$('#question2').fadeOut(500,function(){
					$('#question3').fadeIn(500)
				})
			}else if(page == 3){
				page = 4
				$('#question3').fadeOut(500,function(){
					$('#question4').fadeIn(500)
				})
			}else if(page ==  4){
				page = 5
				$('#question4').fadeOut(500,function(){
					$('#question5').fadeIn(500)
				})
			}else if(page == 5){
				page = 6
				$('#question5').fadeOut(500,function(){
					$('#question6').fadeIn(500)
				})
			}else if(page == 6){
				page = 7
				$('#question6').fadeOut(500,function(){
					$('#question7').fadeIn(500)
				})
			}
		})
		$('#leftBtn').on('click',function(){
			if(page == 2){
				page = 1
				$('#question2').fadeOut(500,function(){
					$('#question1').fadeIn(500)
				})
			}else if(page == 3){
				page = 2
				$('#question3').fadeOut(500,function(){
					$('#question2').fadeIn(500)
				})
			}else if(page == 4){
				page = 3
				$('#question4').fadeOut(500,function(){
					$('#question3').fadeIn(500)
				})
			}else if(page == 5){
				page = 4
				$('#question5').fadeOut(500,function(){
					$('#question4').fadeIn(500)
				})
			}else if(page == 6){
				page = 5
				$('#question6').fadeOut(500,function(){
					$('#question5').fadeIn(500)
				})
			}else if(page ==7){
				page = 6
				$('#question7').fadeOut(500,function(){
					$('#question6').fadeIn(500)
				})
			}
		})
		let questionPoint1 = 0
		let questionPoint2 = 0
		let questionPoint3 = 0
		let questionPoint4 = 0
		let questionPoint5 = 0
		let questionPoint6 = 0
		let questionPoint7 = 0
		let totalPoint = 0
		$('.answer1').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer1').css('font-size','20px')
			$(this).siblings('.answer1').css('color','black')
			questionPoint1 = $(this).text().substr(0,1)*1
		})
			$('.answer2').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer2').css('font-size','20px')
			$(this).siblings('.answer2').css('color','black')
			questionPoint2 = $(this).text().substr(0,1)*1
		})
			$('.answer3').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer3').css('font-size','20px')
			$(this).siblings('.answer3').css('color','black')
			questionPoint3 = $(this).text().substr(0,1)*1
		})
			$('.answer4').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer4').css('font-size','20px')
			$(this).siblings('.answer4').css('color','black')
			questionPoint4 = $(this).text().substr(0,1)*1
		})
			$('.answer5').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer5').css('font-size','20px')
			$(this).siblings('.answer5').css('color','black')
			questionPoint5 = $(this).text().substr(0,1)*1
		})
			$('.answer6').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer6').css('font-size','20px')
			$(this).siblings('.answer6').css('color','black')
			questionPoint6 = $(this).text().substr(0,1)*1
		})
			$('.answer7').on('click',function(){
			$(this).css('color','#398175')
			$(this).css('font-size','25px')
			$(this).siblings('.answer7').css('font-size','20px')
			$(this).siblings('.answer7').css('color','black')
			questionPoint7 = $(this).text().substr(0,1)*1
			$('#submitBtn').show()
		})
		let mbtiType = ''
		$('#submitBtn').on('click',function(){
			totalPoint = questionPoint1+questionPoint2+questionPoint3+questionPoint4+questionPoint5+questionPoint6+questionPoint7
			if(totalPoint >= 7 && totalPoint <=13){
				mbtiType = 'L'
			}else if(totalPoint >= 14 && totalPoint <=21){
				mbtiType = 'M'
			}else{
				mbtiType = 'H'
			}
			fetch('${pageContext.request.contextPath}/insertMbti',{
				method : 'POST'	,
				headers:{"Content-Type" : "application/json"},
				body : JSON.stringify({
    				mbtiPoint : totalPoint+'',
    				mbtiType : mbtiType,
    				customerId : '${loginVO.id}'
            	})
			}).then(res=>res.json()).then(response=>{
				$('#mbtiSection').hide()
				$('#loading').show()
				getCustomerMbtiType()
				setTimeout(function() {
						$('#loading').hide()
						if(mbtiType == 'L'){
							$('#resultSectionL').show()
						}else if(mbtiType == 'M'){
							$('#resultSectionM').show()
						}else{
							$('#resultSectionH').show()
						}
						$('#buildingSection').show()
				}, 3000);
					
				
				
			})
		})
		async function getCustomerMbtiType(){
			let obj = {}
			await fetch('${pageContext.request.contextPath}/getCustomerMbtiType?customerId=${loginVO.id}').then(res=>res.json()).then(response=>{
				if(response != null){
					getPrStck(response[0].FID+'').then(
							res => {
								$('#prStck').text('현재가 : '+res+' 원')
							}		
						)
					$('#buildingName').text(response[0].BUILDING_NAME)
					$('#buildingLocation').text(response[0].LOCATION)
					$('#buildingPoint1').text(response[0].POINT_HEAD1)
					$('#buildingPoint2').text(response[0].POINT_HEAD2)
					$('#buildingPoint3').text(response[0].POINT_HEAD3)
					$('#buildingImage').attr('src','/finalproject1/resources/images/detail/'+response[0].IMAGE_NAME1)
					$('#getBuildingDetail').attr('href','${pageContext.request.contextPath}/building/detail?propertyNo='+response[0].PROPERTY_NO+'&buildingNo='+response[0].BUILDING_NO)
					obj = response[0]
				}
			})
			return obj;
		}
		 async function getPrStck(fid){
				let prStck 
			  const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
			    const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="

				    const headers = {"Content-Type":"application/json", 
				    "authorization": 'Bearer '+ACCESS_TOKEN,
				    "appKey":APP_KEY,
				    "appSecret":APP_SECRET,
				    "tr_id":"FHKST01010100",
				    }
			  try {
			       await fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd='+fid,{headers}).then(
		            (res) => res.json()
		         ).then(response=>{
						prStck = (response.output.stck_prpr*1).toLocaleString('ko-KR')
		          	})
		         }catch (error) {
			        console.log('error')        
			    }
		         return prStck
		}
		
		
	</script>
	
		
		</body>
</html>
