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
                                        <h3 class="mb-4" style="color: black">내 자산보기</h3>
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
					  <!-- START BLOG-AUTHOR -->
                    <section class="section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card blog-author-sidebar  border-0 bg-light">
                                        <div class="card-bod p-4">
                                            <div class="mb-4">
                                                <h5  class="counter blog-title mb-4" style="font-size: 20px;" >총 자산</h5>
                                                <div class="text-center">
                                                   <h6 id="allAsset" class="fs-20" style="font-size: 30px;"></h6>
                                                </div>
                                            </div>

                                            <div class="mb-2">
                                                <h5 class="blog-title mb-2" style="font-size: 20px;">투자</h5>
                                                <div class="candidate-profile-overview  card-body">
                                                
												<ul class="list-unstyled mb-0">
												<li>
													<div class="d-flex">
														<label class="text-dark">예치금</label>
														<div>
															<p class="text-muted mb-0"><fmt:formatNumber value="${account.balance}" pattern="#,###" />원</p>
														</div>
													</div>
												</li>
												<li>
													<div class="d-flex">
														<label class="text-dark">투자금액</label>
														<div>
															<p class="text-muted mb-0"><fmt:formatNumber value="${sumDabsPrice}" pattern="#,###" />원</p>
														</div>
													</div>
												</li>
												<li>
													<div class="d-flex">
														<label class="text-dark">투자수익</label>
														<div>
															<p id ="earningSum" class="text-break mb-0"  style="white-space: nowrap;">000원(+0%)</p>
														</div>
													</div>
												</li>
										</ul>
                                                </div>
                                            </div>

                                            <div>
                                                <h5 class="blog-title mb-4" style="font-size: 20px;">자산비중</h5>
												<div id="chart"></div>
                                            </div>
                                            
                                        </div>
                                    </div><!--end blog-auther-sidebar-->
                                </div><!--end col-->
                                <div class="col-lg-8">
                                    <div class="ms-lg-4 mt-4 mt-lg-0">
                                        <div class="blog-post mb-2">
                                            <div class="text-left">
                                                <a  class="primary-link"><h5 class="text-left mb-1" style="font-size: 20px;">보유빌딩</h5></a>
                                                <hr>
                                            </div>
                                   <div class="row mb-5">
                                <div class="col-lg-12">
                                    <div id="myBuildingList" class="candidate-list">
                
										<c:forEach var="sumDabsPrice1" items="${sumDabsPriceList}" varStatus="status">
											 <div class="candidate-list-box bookmark-post card mt-3 mb-5">
                                            <div class="card-body p-4">
                                                <div class="row align-items-center">
                                                    <div class="col-auto">
                                                        <div class="candidate-list-images">
                                                            <a href="javascript:void(0)"><img src="/finalproject1/resources/images/detail/${sumDabsPrice1.IMAGE_NAME1}" alt="" class="avatar-md img-thumbnail rounded-circle"></a>
                                                        </div>
                                                    </div><!--end col-->
                                                    <div class="col-lg-4 mt-3" style="margin-right: 0; margin-right: 20px;">
                                                        <div class="candidate-list-content mt-3 mt-lg-0">
                                                            <h5 class="fs-19 mb-0"></h5>
                                                            <a href="${pageContext.request.contextPath}/building/detail?propertyNo=${sumDabsPrice1.PROPERTY_NO}&buildingNo=${sumDabsPrice1.BUILDING_NO}" class="p">${sumDabsPrice1.BUILDING_NAME}</a> <span id="earningRate${status.index}" class="badge ms-1" style="font-size: 13px;"><i class="mdi mdi-star align-middle"></i></span>
                                                            <p class="text-muted mb-2">${sumDabsPrice1.COUNTDABSNO} DABS 소유</p>
                                                            <ul class="list-inline mb-0 text-muted">
                                                                <li class="list-inline-item">
                                                                	<div style="display: flex;">
	                                                                    <i class="uil uil-wallet" style="margin-right: 4px;"></i>
	                                                                    <p  id="earningPrice${status.index}"></p>
                                                                	</div>
                                                                </li>
                                                                <!-- <li class="list-inline-item">
                                                                    <i class="mdi mdi-map-marker"></i> Oakridge Lane California
                                                                </li> -->
                                                            </ul>
                                                        </div>
                                                    </div><!--end col-->
                                                    <div class="col-lg-5" style="width: 350px; margin-left: 0; padding-left: 0; margin-right: 0;">
                                                        <div class="mt-2 mt-lg-2">
                                                            	<table style="table-layout: fixed; text-align: left; width: 100%; white-space: nowrap;">
                                                            		<tbody>
                                                            			<tr>
                                                            				<td><label class="text-muted" style="margin-right: 5px;">현재가</label></td>
                                                            				<td>
                                                            					<div>
																					<p id="prPrice${status.index}" class="text-dark mb-0" style="margin-right: 10px;  text-align: right;">000원</p>
																				</div>
                                                            				</td>
                                                            					<td><label class="text-muted" style="margin-right: 5px;">매수평균가</label></td>
                                                            				<td>
                                                            					<div>
																					<p id="buyPrice${status.index}" class="text-dark mb-0" style="margin-right: 10px; text-align: right;">000원</p>
																				</div>
                                                            				</td>
                                                            			</tr>
                                                            			<tr>
                                                            				<td colspan="4"><hr></td>
                                                            			</tr>
                                                            			<tr>
                                                            				<td><label class="text-muted" style="margin-right: 5px;">평가금액</label></td>
                                                            				<td>
                                                            					<div>
																					<p id="vaPrice${status.index}" class="text-dark mb-0" style="margin-right: 10px; text-align: right;">000원</p>
																				</div>
                                                            				</td>
                                                            				<td><label class="text-muted" style="margin-right: 5px;">투자금액</label></td>
                                                            				<td>
                                                            					<div>
																					<p id="buySumPrice${status.index}" class="text-dark mb-0" style="margin-right: 10px; text-align: right;">000원</p>
																				</div>
                                                            				</td>
                                                            			</tr>
                                                            		</tbody>
                                                            	</table>
                                                        </div>
                                                    </div>
                                                </div><!--end row-->
                                            </div>
                                        </div><!--end card-->
										</c:forEach>

                                        
                                    </div><!--end candidate-list-->
                                </div><!--end col-->
                            </div><!--end row-->
                                
                                
                                </div><!--end blog-post-->
                         		
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                            <div class="blog-post mb-2 mt-4">
                                            <div class="text-left">
                                                <a  class="primary-link"><h5 class="text-left mb-1" style="font-size: 20px;">거래내역</h5></a>
                                                <hr>
                                            </div>
                                            <table class="table" style="margin-top: 10px;">
											  <thead>
											    <tr>
											      <th scope="col">일시</th>
											      <th scope="col">구분</th>
											      <th scope="col">항목</th>
											      <th scope="col" style="text-align: right;">수량</th>
											      <th scope="col" style="text-align: right;">금액</th>
											      <th scope="col" style="text-align: right;">거래 후 예치금</th>
											    </tr>
											  </thead>
											  <tbody id="orderList">
											  </tbody>
										</table>
								</div>                               
                                   
                                        <nav aria-label="Page navigation example" class="mt-5">
                                            <ul class="pagination job-pagination mb-0 justify-content-center">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="javascript:void(0)" tabindex="-1">
                                                        <i class="mdi mdi-chevron-double-left fs-15"></i>
                                                    </a>
                                                </li>
                                                <li class="page-item"><a id="pageOne" class="page-link"  onclick="paging(this)">1</a></li>
                                                <li class="page-item"><a class="page-link" onclick="paging(this)" >2</a></li>
                                                <li class="page-item"><a class="page-link" onclick="paging(this)">3</a></li>
                                                <li class="page-item"><a class="page-link" onclick="paging(this)">4</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="javascript:void(0)">
                                                        <i class="mdi mdi-chevron-double-right fs-15"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav><!--end pagination-->
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
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script type="text/javascript" src="/finalproject1/resources/js/appToken.js"></script>
		<script>
		
					
					//차트에 필요한 데이터 구하기
					function getChart(){
						let i = 0
						let data = new Array()	
						let dataLabel = new Array()
						let dataLabelJson = new Array()
						data.push(${account.balance+sumDabsPrice})
						dataLabel.push('예치금')
						<c:forEach var="sumDabsPrice1" items="${sumDabsPriceList}" varStatus="status">
							data.push(${sumDabsPrice1.SUMDABSPRICE})
							fetch('${pageContext.request.contextPath}/account/getBuildingInfo?propertyNo=${sumDabsPrice1.PROPERTY_NO}').then(
								(res)=>res.json()		
							).then(response=>{
								i += 1
								dataLabelJson.push(response[0])
								
								if(i == '${fn:length(sumDabsPriceList)}'){
									dataLabelJson.sort(function(a,b) {
										if(a.PROPERTYNO > b.PROPERTYNO) return 1;
										else if(a.PROPERTYNO < b.PROPERTYNO) return -1;
										else return 0;
									});
									for(let i = 0; i < dataLabelJson.length; i++){
										dataLabel.push(dataLabelJson[i].BUILDING_NAME)
									}
								    var options = {
							            series:data,
							            chart: {
							            width: 350,
							            type: 'pie',
							            offsetX:10
							          },
							          labels: dataLabel,
							          responsive: [{
							            breakpoint: 480,
							            options: {
							              chart: {
							                width: 200
							              },
							              legend: {
							                position: 'bottom',
							              }
							            }
							          }],
							          legend:{
							        	  offsetX : 18,
							          }
							          
							          };
						 
							          var chart = new ApexCharts(document.querySelector("#chart"), options);
							          chart.render();
			
								}
							})
						</c:forEach> 
						
						//원형차트
							          
					}
					getChart()
		          
		          //수익률 구하기
		          function getEarningRate(){
		        	  const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
					  const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="
					   let sumEarning = 0
					   let i = 0;
							    const headers = {"Content-Type":"application/json", 
							    "authorization": 'Bearer '+ACCESS_TOKEN,
							    "appKey":APP_KEY,
							    "appSecret":APP_SECRET,
							    "tr_id":"FHKST01010100",
							    }
						<c:forEach var="sumDabsPrice1" items="${sumDabsPriceList}">
							fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${sumDabsPrice1.FID}',{headers}).then(
				            (res) => res.json()
				         ).then(response=>{
				        	 i += 1
					         sumEarning += response.output.stck_prpr*${sumDabsPrice1.COUNTDABSNO}
				        	 if(i=='${fn:length(sumDabsPriceList)}'){
				        		 if((sumEarning-${sumDabsPrice}) > 0){
					        	 	$('#earningSum').text((sumEarning-${sumDabsPrice}).toLocaleString('ko-KR')+'원(+'+(((sumEarning-${sumDabsPrice})/${sumDabsPrice})*100).toFixed(3) +'%)')
				        			 $('#earningSum').css('color','red')
				        			 $('#allAsset').text((${account.balance+sumDabsPrice}+sumEarning-${sumDabsPrice}).toLocaleString('ko-KR')+' 원')
				        		 }else{
					        	 	$('#earningSum').text((sumEarning-${sumDabsPrice}).toLocaleString('ko-KR')+'원('+(((sumEarning-${sumDabsPrice})/${sumDabsPrice})*100).toFixed(3) +'%)')
				        			 $('#earningSum').css('color','blue')
				        			 $('#allAsset').text((${account.balance+sumDabsPrice}+sumEarning-${sumDabsPrice}).toLocaleString('ko-KR')+' 원')
				        		 }
				        	 }
				         })
						</c:forEach> 	
							
		          }
		        
		          getEarningRate()
		           setInterval(getEarningRate,2000)
		          
		          function myBuilding(){
		        	  const APP_KEY="PStJdMbep93x6HD8z7MDjVDD0B3yHdLfRLK9"
					 const APP_SECRET="8ueR6wI+CUd+fLJb+Unfrhj6Q/M/O11mQvApP/5ZCfQvyYX40ZgteygyVlxIusxv7wY0dU9foz4hI1T6h0BgBii/8/lxGFPJtOMDAX7dcttJpqXu/pATrXfyhZJOZaetAAC192MD/Q0I2etNWZ+ZycrM4tCTtOL6hoK2+txr4fFzTQdvNgM="
		        	  const headers = {"Content-Type":"application/json", 
							    "authorization": 'Bearer '+ACCESS_TOKEN,
							    "appKey":APP_KEY,
							    "appSecret":APP_SECRET,
							    "tr_id":"FHKST01010100",
							    }
		        	  <c:forEach var="sumDabsPrice1" items="${sumDabsPriceList}" varStatus="status">
		        		fetch('http://localhost:3001/uapi/domestic-stock/v1/quotations/inquire-price?fid_cond_mrkt_div_code=J&fid_input_iscd=${sumDabsPrice1.FID}',{headers}).then(
					            (res) => res.json()
					         ).then(response=>{
					        	 i += 1
						         valuationAmount = response.output.stck_prpr*${sumDabsPrice1.COUNTDABSNO}
					        	 
					        	 $('#vaPrice${status.index}').text(valuationAmount.toLocaleString('ko-KR')+'원')
					        	 $('#prPrice${status.index}').text((response.output.stck_prpr*1).toLocaleString('ko-KR')+'원')
					        	 $('#buyPrice${status.index}').text(((${sumDabsPrice1.SUMDABSPRICE/sumDabsPrice1.COUNTDABSNO}).toFixed(0)*1).toLocaleString('ko-KR')+'원')
					        	 $('#buySumPrice${status.index}').text((${sumDabsPrice1.SUMDABSPRICE}).toLocaleString('ko-KR')+'원')
					        	 
					        	 if((((valuationAmount-${sumDabsPrice1.SUMDABSPRICE})/${sumDabsPrice1.SUMDABSPRICE})*100) > 0){
						        	 $('#earningRate${status.index}').text('+'+(((valuationAmount-${sumDabsPrice1.SUMDABSPRICE})/${sumDabsPrice1.SUMDABSPRICE})*100).toFixed(2)+'%')
						        	 $('#earningRate${status.index}').css('background-color','#FFA7A7')
						        	 $('#earningPrice${status.index}').text('투자수익 '+(valuationAmount-${sumDabsPrice1.SUMDABSPRICE}).toLocaleString('ko-KR')+'원')
					        	 }else{
					        		 $('#earningRate${status.index}').text((((valuationAmount-${sumDabsPrice1.SUMDABSPRICE})/${sumDabsPrice1.SUMDABSPRICE})*100).toFixed(2)+'%')
						        	 $('#earningRate${status.index}').css('background-color','#B2CCFF')
						        	 $('#earningPrice${status.index}').text('투자수익 '+(valuationAmount-${sumDabsPrice1.SUMDABSPRICE}).toLocaleString('ko-KR')+'원')
					        	 }
					        	 

					        	 
					         })
		        	  </c:forEach>
		        		
		          }
		          
		          myBuilding()
		          setInterval(myBuilding,2000)
							          
		          function paging(item){
		        	  $('.page-link').css('background-color','white')
		        	  $('.page-link').css('border-radius','40px')
		        	  $('.page-link').css('color','#777A8D')
		        	  $('.page-link').css(' border','1px solid ##e2e5e8')
		        	  $(item).css('background-color','#398175')
		        	  $(item).css('color','white')
		        	  let startNum = ($(item).text()*1-1)*7+''
		        	  let endNum = ($(item).text()*1)*7+''
		        	  fetch('${pageContext.request.contextPath}/orders/paging?startNum='+startNum+'&endNum='+endNum+'&customerId=${loginVO.id}').then(
		        		(res)=>res.json()		  
		        	  ).then( response=>{
		        		  if(response != null){
		        			  $('#orderList').empty()
		        			  for(let i = 0; i < response.length; i++){
		        				  let PRESENTBALANCE = (response[i].PRESENTBALANCE*1).toLocaleString('ko-KR')
		        				  let dabsAmount
		        				  if(response[i].DABSAMOUNT==0){
		        					  dabsAmount = '-'
		        				  }else{
		        					  dabsAmount = response[i].DABSAMOUNT
		        				  }
		        				  $('#orderList').append('<tr><td scope="row">'+response[i].ORDERDATE+'</td><td>'+response[i].ORDERTYPE+'</td><td>'+response[i].BUILDING_NAME+'</td><td style="text-align: right;">'+dabsAmount+'</td><td style="text-align: right;">'+(response[i].ORDERPRICE*1).toLocaleString('ko-KR')+'원'+'</td><td style="text-align: right;">'+PRESENTBALANCE+' 원</td></tr>')
		        			  }
		        		  }
		        		  
		        	  }) 
		        	  
		          }
		          
		          $('#pageOne').trigger('click')
		          
		</script>
	</body>
</html>
