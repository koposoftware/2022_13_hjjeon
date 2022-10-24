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
				.			
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

         		      <section id="titleSection" class="page-title-box" style="background-color: white; padding: 170px; padding-bottom: 0px;">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-md-6">
                                    <div class="text-center text-white">
                                        <h3 class="mb-4" style="color: black">카드 사용내역  연동하기</h3>
                                    </div>
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                        </div>
                        <!--end container-->
                      <hr style="color: black; height: 2px;">
                    </section>
					
					<section id="cardSection" class="section" style="margin-top: 50px;" >
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 500px;">
                            <div id="mainBox"  class="row justify-content-center" style="border: 2px solid #BDBDBD; width: 500px; border-radius: 10px;">
                            	<div  id="testBox" class="row justify-content-center" style="padding-bottom: 20px; padding-top: 20px;">
									<div style="width: 300px;">
										<img src="/finalproject1/resources/images/card/card.png" style="width: 100%;">
									</div>
									<div style="text-align: center; margin-top: 20px;">
										<h3>카드사용내역 연동하기</h3>
									</div>
									<div style="text-align: center; margin-top: 10px;">
										<p class="text-muted" style="font-weight: 600;">최근 3개월간 카드사용 내역을 연동하여</p>
										<p class="text-muted" style="font-weight: 600;">우리가 사는 도시의 빌딩에 대한 주권을 갖고 소유해 보아요</p>
									</div>
									  <div class="text-center">
	                                        <button id="startTest" name="submit" class="btn btn" style="background-color: #398175; color: white;" onclick="startCard()">연동하기<i class="uil uil-message ms-1"></i></button>
	                                   </div>
                            	</div>
                            </div>
                        </div>
                    </section>
					
					
					
					
                    <section class="section" id="signForm" style="display: none;">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-10">
                                    <ul class="faq-menu nav nav-fill nav-pills justify-content-center" id="pills-tab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="general-tab" data-bs-toggle="pill"
                                                data-bs-target="#generalTab" type="button" role="tab" aria-controls="generalTab"
                                                aria-selected="true"><i  id="checkIcon1" class="fa-solid fa-circle-check" style="margin-right: 3px; color: red;"></i>전자금융거래 이용 약관</button>
                                                
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="buying-tab" data-bs-toggle="pill"
                                                data-bs-target="#buyingTab" type="button" role="tab" aria-controls="buying"
                                                aria-selected="false"><i id="checkIcon2" class="fa-solid fa-circle-check" style="margin-right: 3px; color: red;"></i>온라인 서비스 이용 약관</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="payment-tab" data-bs-toggle="pill"
                                                data-bs-target="#paymentTab" type="button" role="tab" aria-controls="payment"
                                                aria-selected="false"><i id="checkIcon3"  class="fa-solid fa-circle-check" style="margin-right: 3px; color: red;"></i>카드 조회 서비스 이용 약관</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="support-tab" data-bs-toggle="pill"
                                                data-bs-target="#supportTab" type="button" role="tab" aria-controls="support"
                                                aria-selected="false"><i id="checkIcon4" class="fa-solid fa-circle-check" style="margin-right: 3px; color: red;"></i>개인정보 수집 및 이용 동의</button>
                                        </li>
                                    </ul>
                                </div>
                                <!--end col-->
                            </div>
                            <!--end row-->
                            <div class="row align-items-center mt-5">
                                <div class="col-lg-12">
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="generalTab" role="tabpanel" aria-labelledby="general-tab">
                                            <div class="row">
													<textarea class="form-control" readonly="readonly" style="height: 400px;">
본 약관은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
제 1 조(목적)
이 약관은 하나랜드 주식회사(이하 “회사”라 한다)가 제공하는 전자금융거래에 대한 기본적인 사항을 정함으로써 전자금융거래를 이용하고자 하는 고객과 회사간의 권리,의무 관계를 명확하게 정함을 목적으로 한다.

제 2 조(정의)
① 이 약관에서 사용하는 용어의 정의는 다음과 같다.
 1. “전자금융거래”란 회사가 전자적 장치를 통하여 금융상품 및 서비스를 제공하고 고객이 회사와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를 이용하는 거래를 말한다.
 2. “고객”이란 전자금융거래를 위하여 회사와 체결한 계약(이하 “전자금융거래계약“ 이라 한다)에 따라 전자금융거래를 이용하는 자를 말한다.
 3. “전자지급거래”란 자금을 주는 자(이하 “지급인”이라 한다)가 회사로 하여금 전자지급수단을 이용하여 자금을 받는 자(이하 “수취인”이라 한다)에게 자금을 이동하게 하는 전자금융거래를 말한다.

4. “전자적 장치”라 함은 전자금융 거래정보를 전자적 방법으로 전송하거나 처리하는데 이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적 방법으로 정보를 전송하거나 처리하는 장치를 말한다.
5. “전자문서”라 함은 「전자문서 및 전자거래기본법」 제2조 제1호에 따라 작성, 송신, 수신 또는 저장된 정보를 말한다.
6. “접근매체”라 함은 전자금융거래에 있어서 고객이 거래지시를 하거나 또는 고객 및 거래내용의 진실성과 정확성을 확보하기 위하여 사용되는 다음 각 목의 어느 하나에 해당하는 수단 또는 정보를 말한다.
 가. 전자식 카드 및 이에 준하는 전자적 정보
 나. 전자서명법 제2조 제3호의 전자서명생성정보 및 같은 조 제6호의 인증서
 다. 회사에 등록된 고객번호
 라. 고객의 생체정보
 마. 가목 또는 나목의 수단이나 정보를 사용하는데 필요한 비밀번호
7. “전자지급수단”이란 전자자금이체, 직불전자지급수단, 선불전자지급수단, 전자화폐, 신용카드, 전자채권 그 밖의 전자적 방법에 따른 지급수단을 말한다.
8. “전자자금이체”란 지급인과 수취인 사이에 자금을 지급할 목적으로 회사에 개설된 계좌에서 다른 계좌로 전자적 장치에 의하여 다음 각 목의 어느 하나에 해당하는 방법으로 자금을 이체하는 것을 말한다.
 가. 회사에 대한 지급인의 지급지시
 나. 회사에 대한 수취인의 추심지시(이하 “추심이체”라 한다)
9. “거래지시”란 고객이 전자금융거래계약에 따라 회사에 전자금융거래의 처리를 지시하는 것을 말한다.
 10. “오류”란 고객의 고의 또는 과실 없이 전자금융거래가 전자금융거래계약 또는 고객의 거래지시에 따라 이행되지 아니한 경우를 말한다.
 11. “개별약관”이란 이 약관과 함께 전자금융거래에 적용되는 약관으로서 회사가 별도로 작성한 약관을 말한다.
② 이 약관에서 별도로 정하지 아니한 용어의 정의는 전자금융거래법 및 전자금융거래법 시행령, 금융위원회의 전자금융감독규정 및 전자금융감독규정 시행세칙에서 정하는 바에 따른다.

제 3 조(전자금융거래계약의 체결 및 해지)
① 전자금융거래를 이용하고자 하는 고객은 개별약관에서 정하는 방법에 따라 회사와 전자금융거래계약을 체결하여야 한다.
② 회사는 제1항에 따른 전자금융거래계약을 체결함에 있어 고객에게 약관의 내용을 분명하게 밝혀야 하며, 고객의 요청이 있는 경우 다음 각 호의 어느 하나에 해당하는 방법으로 고객에게 약관을 내주어야 한다.
  1. 직접교부
  2. 전자문서의 전송(전자우편을 이용한 전송을 포함한다)
  3. 팩스(Fax)
  4. 우편
③ 회사는 제1항에 따른 전자금융거래계약을 체결함에 있어 고객이 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나에 해당하는 방법으로 고객에게 약관의 중요내용을 설명하여야 한다.
  1. 약관의 중요내용을 고객에게 직접 설명
  2. 약관의 중요내용에 대한 설명을 전자적 장치를 통하여 고객이 알기 쉽게 표시하고

고객으로부터 해당 내용을 충분히 알았다는 의사표시를 전자적 장치를 통하여 받음
④ 고객은 개별약관에서 정하는 방법에 따라 전자금융거래계약을 해지할 수 있다.

제 4 조(이용시간 등)
① 고객은 <별첨>에서 정하는 이용시간 이내에서 전자금융거래를 이용할 수 있다.
② 회사는 제1항에 따른 이용시간을 영업점과 전자적 장치에 게시하며, 이를 변경하고자 하는 경우 고객이 확인할 수 있도록 변경 예정일 14일 전부터 1개월 이상 영업점에 마련해두고 전자적 장치를 통해 게시한다. 다만, 시스템 장애복구, 프로그램의 긴급한 보수, 외부요인 등으로 인하여 이용시간이 변경된 경우에는 이를 미리 영업점에 마련해 두거나 전자적 장치를 통해 게시하지 아니할 수 있다.
③ 전산시스템 유지 및 보수로 인하여 전자금융거래 이용이 불가능할 경우 회사는 해당 사실을 7일전에 영업점과 전자적장치에 게시한다.

제 5 조(수수료)
① 회사는 전자금융거래와 관련하여 <별첨>에서 정하는 수수료를 고객으로부터 받을 수 있다.
② 회사는 제1항에 따른 수수료의 기준을 고객에게 안내한다.

제 6 조(거래내용의 확인)
① 회사는 고객이 전자금융거래에 사용하는 전자적 장치(회사와 고객 사이에 미리 약정한 전자적 장치가 있는 경우에는 그 전자적 장치를 포함한다)를 통하여 거래내용을 확인할 수 있도록 한다. 이 경우 전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 확인하게 할 수 없는 때에는 회사는 인터넷 등을 이용하여 즉시 그 사유를 알리고, 그 사유가 종료된 때부터 고객이 거래내용을 확인할 수 있도록 한다.
② 고객은 거래지시와 제1항에 따른 거래내용이 일치하는지 여부를 확인하여야 한다.
③ 고객은 거래내용을 서면(전자문서를 제외한다. 이하 이조에서 같다.)으로 제공하여 줄 것을 회사에 요청할 수 있으며, 회사는 그 요청을 받은 날로부터 2주 이내에 거래내용에 관한 서면을 내준다. 이 경우 거래내용의 서면 제공과 관련한 요청방법. 절차, 접수창구의 주소(전자우편주소를 포함한다) 및 전화번호 등은 개별약관에서 정한 바에 따른다.
④ 회사는 제3항에 따라 고객으로부터 거래내용을 서면으로 제공할 것을 요청받은 경우 전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 제공할 수 없는 때에는 그 고객에게 즉시 이를 알린다. 이 경우 거래내용에 관한 서면의 교부기간을 산정함에 있어서 전자적 장치의 운영장애, 그 밖의 사유로 거래내용을 제공할 수 없는 기간은 이를 포함하지 아니한다.
⑤ 회사가 제1항 및 제3항에 따라 제공하는 거래내용의 종류(조회거래는 제외한다. 이하 이 조에서 같다.), 범위 및 대상기간은 다음 각 호와 같다.
  1. 전자금융거래가 계좌를 통하여 이루어지는 경우 거래계좌의 명칭 또는 번호 : 5년
  2. 전자금융거래의 종류 및 금액, 전자금융거래의 상대방에 관한 정보 : 5년
  3. 전자금융거래의 거래일시, 전자적 장치의 종류 및 전자적 장치를 식별할 수 있는 정보 : 5년
  4. 회사가 전자금융거래의 대가로 받은 수수료 : 5년
  5. 추심이체시 지급인의 출금동의에 관한 사항 : 5년
  6. 오류정정 요구사실 및 처리결과에 관한 사항 : 1년
  7. 전자금융거래 신청, 조건변경에 관한 내용 : 5년

제 7 조(오류의 정정)
① 고객은 전자금융거래에 오류가 있음을 안 때에는 회사에게 이에 대한 정정을 요구할 수 있다.
② 회사는 제1항의 규정에 의한 오류의 정정요구를 받은 때에는 이를 즉시 조사하여 처리하며 정정요구를 받은 날부터 2주 이내에 오류의 원인과 처리 결과를 문서, 전화 또는 전자우편으로 고객에게 알려야 한다. 다만, 고객이 문서로 알려줄 것을 요청하는 경우에는 문서로 알려야 한다.
③ 회사가 전자금융거래에 오류가 있음을 안 때에는 이를 즉시 조사하여 처리하며, 오류가 있음을 안 날로부터 2주 이내에 오류의 원인과 처리 결과를 문서, 전화 또는 전자우편으로 고객에게 알려야 한다. 다만 고객이 문서로 알려줄 것을 요청하는 경우에는 문서로 알려야 한다.

제 8조(회사의 책임)
① 회사는 다음 각 호의 어느 하나에 해당하는 사고로 인하여 고객에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 진다.

1. 접근매체의 위조나 변조로 발생한 사고

2. 계약체결 또는 거래지시의 전자적 전송이나 처리 과정에서 발생한 사고

3. 전자금융거래를 위한 전자적 장치 또는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」제2조제1항제1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로 획득한 접근매체의 이용으로 발생한 사고

② 제1항에 불구하고 다음 각 호의 어느 하나에 해당하는 사유로 인하여 고객에게 발생한 손해에 대하여는 고객이 그 책임의 전부 또는 일부를 부담하게 할 수 있다.
  1. 고객이 접근매체를 제3자에게 대여하거나 사용을 위임하거나 양도 또는 담보 목적으로 제공한 경우
  2. 제3자가 권한 없이 고객의 접근매체를 이용하여 전자금융거래를 할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 고객이 자신의 접근매체를 누설 또는 노출하거나 방치한 경우
  3. 법인(중소기업기본법 제2조 제2항에 의한 소기업을 제외한다)인 고객에게 손해가 발생한 경우로 회사가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등 합리적으로 요구되는 주의의무를 다한 경우

4. 회사가 전자금융거래법 제6조제1항에 따른 확인 외에 보안강화를 위하여 전자금융거래 시 요구하는 추가적인 보안조치를 고객이 정당한 사유 없이 거부하여 전자금융거래법 제9조1항제3호의 사고가 발생한 경우

5. 고객이 제4호에 따른 추가적인 보안조치에 사용되는 매체·수단 또는 정보에 대하여 다음 각목의 어느 하나에 해당하는 행위를 하여 법 제9조제1항제3호에 따른 사고가 발생한 경우

가. 누설·노출 또는 방치한 행위

나. 제3자에게 대여하거나 그 사용을 위임한 행위 또는 양도나 담보의 목적으로 제공한 행위
③ 회사는 고객으로부터 접근매체의 분실이나 도난 등의 통지를 받은 때에는 그 때부터 제3자가 그 접근매체를 사용하여 고객에게 발생한 손해를 배상한다.
④ 회사는 제1항부터 제3항에 불구하고 다른 법령에 고객에게 유리하게 적용될 수 있는 규정이 있는 경우 그 법령을 우선 적용한다.

제 9조(전자금융거래 장애시의 처리)
① 회사는 천재지변, 정전, 화재, 건물훼손, 전산장애 등의 사유로 고객의 거래지시를 처리할 수 없거나 처리가 지연될 경우 해당 사실과 사유, 대체주문방법 등을 고객에게 지체없이 통보하며, 정상적인 전자금융거래가 이루어질 수 있도록 신속하게 조치한다.
② 제1항에 따른 대체주문방법은 개별약관에서 정한 바에 따른다.

제 10조(전자지급거래의 효력발생시기 등)
① 전자지급수단을 이용하여 자금을 지급하는 경우 지급의 효력은 다음 각 호에서 정한 때에 발생한다.
  1. 전자자금이체의 경우 : 거래지시된 금액의 정보에 대하여 수취인의 계좌가 개설되어 있는 금융기관 계좌의 원장에 입금기록이 끝난 때
  2. 전자적장치로부터 직접 현금을 출금하는 경우 : 수취인이 현금을 받은 때
  3. 선불전자지급수단 및 전자화폐로 지급하는 경우 : 거래지시된 금액의 정보가 수취인이 지정한 전자적 장치에 도달한 때
  4. 그 밖의 전자지급수단으로 지급하는 경우 : 거래지시된 금액의 정보가 수취인의 계좌가 개설되어 있는 금융기관의 전자적 장치에 입력이 끝난 때
② 고객은 거래지시를 하는 때부터 회사가 안내한 시간 후에 전자자금이체 지급 효력이 발생(이하 “지연이체”라 한다)하도록 할 수 있다.

③ 지연이체를 원하는 고객은 컴퓨터, 전화기, 그 밖의 전자적 장치를 이용하여 제2항의 지연이체 거래지시를 할 수 있다

④ 고객은 제1항 각 호에 따라 지급의 효력이 발생하기 전까지 거래지시를 철회할 수 있다.
⑤ 제4항에 불구하고 회사는 대량으로 처리하는 거래 또는 예약에 따른 거래 등의 경우에는 개별약관에서 정한 바에 따라 거래지시의 철회시기를 달리 정할 수 있다.
⑥ 제4항 및 5항에 따른 거래지시의 철회방법과 절차는 개별약관에서 정하는 바에 따른다.
 
													</textarea>
													<div style="display: flex; justify-content: center; margin-top: 10px;">
														 <div class="form-check mb-2 justify-content-center">
				                                                <input class="form-check-input" type="checkbox" value="" id="check1" />
				                                                <label class="form-check-label ms-2" for="education">전자금융거래 이용약관에 대하여 동의합니다.</label>
	                                                	</div>
													</div>
                                            </div><!--end row-->
                                        </div><!--end general-tab-->
                                        
                                        <div class="tab-pane fade" id="buyingTab" role="tabpanel" aria-labelledby="buying-tab">
                                            <div class="row">
												<textarea class="form-control" readonly="readonly" style="height: 400px;">
본 약관은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
 
제 1 조(목적)
이 약관은 온라인서비스(이하 "서비스"라 한다)를 제공하는 하나랜드주식회사(이하 "회사"라 한다)와 서비스를 이용하는 고객간의 서비스 이용에 관한 제반사항과 '전자금융거래이용에 관한 기본약관'(이하 '기본약관'이라 한다)의 개별약관으로서 그 세부사항을 정함을 목적으로 한다.

 

제 2 조(용어의 정의)
이 약관에서 사용하는 용어의 정의는 다음 각 호와 같다.

① "서비스"라 함은 회사가 정한 시스템에 의하여 고객이 전자적 장치를 이용하여 매매주문, 청약거래, 대출거래, 은행이체, 계좌대체, 잔고조회, 투자정보조회, 투자권유 등을 이용할 수 있는 전자금융거래를 말한다.

② "통신ID" 라 함은 회사가 고객임을 확인하기 위한 숫자, 영문자 또는 숫자와 영문자의 혼합을 말하며, 고객이 최초 접속시 스스로 설정하여야 한다.

③ "통신비밀번호"라 함은 회사가 고객을 보호하기 위하여 고객이 최초접속시 스스로 설정한 숫자와 영문자의 혼합을 말한다.

④ "은행이체"라 함은 고객이 회사의 서비스를 이용하여 증권계좌에서 타금융기관계좌로 입출금을 하는 행위를 말한다.

⑤ "계좌대체"라 함은 고객이 회사의 전자적 장치를 이용하여 회사의 증권거래계좌간 자금 및 증권을 대체 처리하는 행위를 말한다.

⑥ "연계기관"이라 함은 회사가 증권거래계좌의 개설대행 등을 위하여 업무제휴 계약을 맺은 제휴은행을 말한다.

⑦ "인증서"라 함은 공인인증기관이 발급하는 공인인증서 또는 금융회사간 공동인증시스템을 통해 발급하는 공동인증서로 전자서명 생성정보가 가입자에게 유일하게 속한다는 사실 등을 확인하고 이를 증명하는 전자정보를 말한다.

⑧ "전자서명 비밀번호"라 함은 공인인증서를 통한 인증시 사용되는 비밀번호를 말한다.

⑨ "해외서비스"라 함은 회사 또는 회사와 제휴관계가 있는 외국증권회사에서 제공하는 전자적 장치를 통하여 외화증권의 매매거래 등을 이용할 수 있는 전자금융거래를 말한다.

⑩ "OTP생성기"라 함은 고객이 서비스 이용시 보안을 위해 사용하는 일회용 비밀번호 생성기기를 말한다.

⑪ "OTP생성기비밀번호(PIN)"라 함은 고객이 OTP생성기 수령시 회사에 등록하는 OTP용 개인비밀번호를 말한다.

⑫ "일회용 비밀번호"라 함은 고객이 공인인증서 발급 및 온라인서비스 등에서 제공하는 특정한 종류의 업무시 보안을 위해 적용하는 일회용 비밀번호를 말한다.(보안카드의 비밀번호를 포함한다.)

 

제 3 조(서비스의 종류 및 내용)
① 회사가 제공하는 전자적 장치에 따른 서비스의 종류는 다음 각호와 같다.

     1. 홈트레이딩 : 컴퓨터를 통한 매매주문, 청약거래, 대출거래, 은행이체, 계좌대체, 잔고조회, 투자정보 조회, 투자권유 등

     2. ARS(자동음성응답서비스) : 매매주문, 은행이체, 청약거래, 잔고조회, 체결조회, 팩스수신 등

     3. 모바일 : 매매주문, 투자정보 , 은행이체 등

② 회사는 전자적 장치의 매체특성에 따라 서비스 내용을 다르게 제공할 수 있다.

 

제 4 조(서비스의 신청 및 해지)
① 서비스 이용계약 체결 및 해지 방법은 다음 각 호와 같다.

     1. 고객이 제3조 제1항의 서비스를 이용하기 위해서는 증권거래계좌를 개설한 후, 회사의 전자적 장치를 통하여 회원 가입(고객이 통신ID, 통신비밀번호 직접 입력)을 하여야 한다.

     2. 고객이 제3조 제1항의 서비스를 해지하고자 할 때에는 영업점 또는 연계기관을 방문하여 증권거래계좌 폐쇄 (해지)를 신청하여야 한다. 단, 연계기관에서 처리가 불가한 경우 회사의 키움금융센터 및 전자적 장치로 해지신청 할 수 있다.

     3. ARS 및 모바일 서비스는 키움금융센터 및 전자적 장치를 이용하여 신청 및 해지한다.

     4. 증권방송 등을 통한 투자권유서비스를 이용하고자 하는 경우에는 투자자정보확인서 작성 등 회사가 정한 별도의 절차에 따른 이용 신청을 하여야 한다.

② 회사는 전산설비가 여유가 없거나, 통신장애 등 기술상에 지장이 있는 경우 서비스 신청 승낙을 유보할 수 있으며, 이 경우 유보사실 및 기간을 연계기관 또는 전자적 장치를 통하여 공지한다.

 

제 5 조(서비스 제공형태 및 이용시간)
① 고객에게 제공되는 서비스는 일반전화망, 정보서비스공급업자가 제공하는 통신망, 전용회선망, 무선호출망 등 여러가지 형태로 제공할 수 있다.

② 서비스 이용시간에 대한 조항은 ‘전자금융거래 이용에 관한 기본약관’을 따른다.

 

제 6 조(공인인증서의 발급신청 및 이용)
① 공인인증서 발급 및 관리방법은 다음 각호와 같다.

     1. 인증서 발급: 본인인증 및 약관 동의 후 저장할 매체에 공인인증서를 저장함으로써 발급이 완료된다.

     2. 인증서 폐지: 고객이 공인인증서 폐지의사 결정 후 폐지절차를 거침으로써 인증서 사용이 중지된다.

     3. 인증서 백업: 발급된 공인인증서를 플로피 디스켓 등 별도의 저장매체에 저장하여 기존 인증서의 손상에 대비하는 절차이다.

     4. 인증서 백업복구: 공인인증서 손상시 백업한 공인인증서를 다시 사용 가능하도록 하는 절차이다.

     5. 전자서명 비밀번호 변경: 고객의 필요에 따라 전자서명 비밀번호의 변경이 가능하며 이전 전자서명 비밀번호 확인 후 새로운 비밀번호로 변경한다.

     6. 인증서 내용보기: 저장한 인증서의 이상유무를 판단할 수 있다.

     7. 인증서 저장매체 변경: 다양한 저장매체를 통하여 인증서를 변경 저장하여 이용할 수 있다.

     8. 인증서 갱신: 유효기간 만료전, 인증서의 기간을 연장하여 계속 사용이 가능토록 하는 절차이다.

② 회사는 고객정보 변경 및 매매주문 기타 회사가 정한 서비스 제공시 공인인증서 사용을 의무화할 수 있다.

 

제6조2(OTP의 이용)
① OTP생성기는 고객에게 회사가 정하는 방법으로 본인확인 후 발급한다. OTP생성기 발급시 고객은 회사내 금융거래시 이용할 수 있는 고유기기와 전 금융기관에서 사용할 수 있는 범용 기기중에서 선택할 수 있으며, 다른 금융기관에서 발급된 OTP생성기는 회사에서 요구하는 등록절차를 거친 후, 사용할 수 있다.

② 고객이 OTP생성기를 이용시, 기 발급된 보안카드는 자동으로 폐기된다.

 

제 7조(고객 확인방법)
회사는 고객이 등록한 통신ID, 통신비밀번호, 증권거래계좌 번호, 계좌비밀번호, 공인인증서, 전자서명 비밀번호, OTP생성기비밀번호(PIN) 등이 회사에 등록된 것과 일치할 경우에는 고객을 계좌의 명의인으로 본다.

 

제 8조(매매주문)
① 고객이 이용할 수 있는 매매주문의 내용은 다음 각 호와 같다.

     1.직접주문 가능시간은 한국거래소(외화증권의 경우, 해당 국가 거래소)의 호가접수시간 및 매매거래시간에 따른다. 단, 매매주문체결시스템의 장애 등 부득이한 경우 시간을 변경할 수 있다.

     2.예약주문은 <별첨>에서 정한 시간내에 가능하며, 예약주문 접수가 완료되는 영업일의 시가 결정에 참여하는 호가로 일괄 주문처리한다. 단, 주문의 폭주, 기타 부득이한 사유로 시가결정에 참여하는 호가에 처리하지 못한 예약주문은 주문접수 순서에 따라 정규시장에서 처리한다.

     3.예약주문에 대한 주문취소는 예약주문 가능시간에 한한다. (직접주문으로 전환이 된 경우에는 직접주문에 의한 절차와 동일하다.)

② 매매주문 처리시 증거금부족, 잔고부족, 가격제한폭 초과 등의 수탁거부 사유에 해당되는 경우 주문의 효력이 자동으로 상실된다.

③ 전산 및 회선장애 등으로 인하여 매매주문 처리결과 보고가 지연될 수 있으므로 이중주문 등이 발생하지 않도록 주문입력 후 처리완료까지의 결과확인은 고객이 직접 해야 한다.

 

제 9 조(은행이체)
① 고객은 은행이체출금시 OTP응답번호를 입력하여야 한다. 단, 증권계좌와 연계기관계좌간의 이체 및 영업점을 방문하여 약정신청한 타금융기관 계좌간의 이체에 대해서는 OTP응답번호 없이 이체출금이 가능하다.

② 은행이체 입금 및 출금은 고객이 전자적 장치를 통하여 스스로 처리하며 1회 인출가능금액의 제한은 회사 및 연계기관에서 별도로 정하는 기준에 의한다.

③ 고객은 은행이체를 실행한 경우 반드시 입금 및 출금의 정상이행 여부를 회사 및 연계기관에 확인하여야 한다.

④ 고객이 직접 연계기관에서 증권계좌로 입금한 경우에는 반드시 입금처리 정상여부를 회사에 확인하여야 한다.

⑤ 은행이체 거래방법은 다음 각호와 같다.

     1.은행이체 가능시간은 회사가 정하여 영업점 또는 전자적 장치 등을 통하여 게시하며, 변경시 영업점 또는 전자적 장치 등을 통하여 공지한다.

     2.연계기관계좌와 증권거래계좌간의 이체시 발생하는 수수료는 회사가 부담한다. 단, 회사가 일정한 기준을 정하여 고객에게 이체수수료를 부담하게 하는 경우 회사는 이와 관련된 이체수수료 징수기준을 시행일 1개월 전부터 1개월 이상 영업점에 게시하거나 전자적 장치 등을 통하여 공지한다.단, 변경내용이 고객에게 불리한 것일 때에는 이를 서면 등 고객과 사전에 합의한 방법으로 통지하여야 한다. 회사는 통지를 할 경우 ‘고객은 변경에 동의하지 아니하는 경우 계약을 해지할 수 있으며, 통지를 받은 날로부터 변경되는 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다”라는 취지의 내용을 통지하여야 한다. 또한 고객이 통지를 받은 날로부터 변경되는 시행일 전의 영업일까지 계약해지의 의사표시를 하지 아니하는 경우에는 변경에 동의한 것으로 본다.

     3.은행이체 가능시간 내에서의 이체거래시 출금계좌의 인출가능금액 부족 등의 사유로 이체가 실행되지 아니한 경우 이체거래신청의 효력이 자동으로 상실되며, 금융결제원 전산망 장애등의 사정으로 이체가 불가능할 경우에는 장애복구 후 입출금 처리된다.

⑥ 고객은 다음 각호의 경우 은행이체를 이용할 수 없다.

     1.증권거래계좌가 통합 또는 폐쇄된 경우

     2.출금계좌에 대하여 사고신고의 접수 또는 법적 지급제한의 사유가 발생한 경우

     3.기타 사고발생 등의 사유로 출금이체를 제한할 필요가 있다고 회사가 인정하는 경우

 

제 10 조(청약거래 등)
① 고객은 공모주식, 전환사채, 신주인수권부사채, 뮤추얼펀드 등의 청약을 할 수 있으며, 별도의 영업점 방문없이 전자적 장치를 이용하는 방법으로 청약이 가능하다.

② 청약대상계좌는 영업점 또는 연계기관에서 정상적으로 등록이 완료된 위탁증권거래계좌에 한한다.

③ 청약금액은 출금계좌의 인출가능 현금의 범위 내에서 고객이 지정한 금액으로 한다.

 

제 11 조(청약방법)
회사에서 청약할 수 있는 방법은 다음과 같다.

① 전자적 장치를 통한 청약

② 회사의 키움금융센터에 전화 청약

③ 영업점을 방문하여 신청(기관투자자 해당)

 
제 12 조(청약자 확인방법 등)
① 청약시 증권거래계좌번호, 계좌명, 계좌비밀번호 등이 회사에 등록된 것과 일치할 경우에는 청약자를 계좌의 명의인으로 간주한다.

② 제1항에도 불구하고 본인의 확인절차가 필요하다고 판단할 경우 회사는 회사가 정한 절차에 따라 본인 여부를 확인할 수 있다.

③ 전화를 이용한 청약과 관련하여 회사는 필요시 서면기록, 전화녹음 등을 할 수 있다.
												</textarea>
												<div style="display: flex; justify-content: center; margin-top: 10px;">
														 <div class="form-check mb-2 justify-content-center">
				                                                <input class="form-check-input" type="checkbox" value="" id="check2" />
				                                                <label class="form-check-label ms-2" for="education">온라인 서비스 이용약관에 대하여 동의합니다.</label>
	                                                	</div>
													</div>
                                            </div><!--end row-->
                                        </div><!--end buying-tab-->
                                        <div class="tab-pane fade" id="paymentTab" role="tabpanel" aria-labelledby="payment-tab">
                                            <div class="row">
                        							<textarea class="form-control" readonly="readonly" style="height: 400px;">
본 약관은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.
 
제 1 조(목적)
이 약관은 하나랜드주식회사(이하 "회사"라 한다)와 고객 간에 하나의 계좌(이하 "종합계좌"라 한다)로 위탁자거래, 파생상품거래, 수익자거래, 저축자거래 및 기타의 거래를 함에 있어 필요한 권리·의무관계 등의 기본사항을 정함을 목적으로 한다.

 
제 2 조(종합계좌의 개설)
① 종합계좌는 고객이 종합계좌설정약관에 동의하고 계좌개설신청서를 작성한 후 거래인감 날인 또는 서명하여 회사에 제출한 후 카드 또는 통장을
    교부 받음으로써 개설이 완료된다. 단 회사와 실명확인대행약정을 맺은 금융기관(이하 "연계기관"이라 한다)에서 종합계좌를 개설하는 경우에는
    연계기관이 실명확인을 한 후 고객의 실명정보를 회사에 전송하면 회사가 이를 근거로 종합계좌를 개설하여 완료된다.

② 고객은 종합계좌개설 시 종합매매계좌, 위탁계좌, 파생상품계좌, 수익증권계좌, 저축계좌 및 기타의 계좌(이하 '개별상품계좌'라 한다) 중 한 개
    이상의 계좌를 동시에 개설하여야 한다. 단, 연계기관에서 종합계좌를 개설할 때에는 종합매매계좌를 제외한 종합계좌 당 한 개의 개별상품계좌
    만 개설할 수 있다.

③ 종합매매계좌는 계좌개설 이후 별도의 약정 없이 하나의 계좌로 위탁매매, 수익증권매매, 외화증권매매를 동시에 할 수 있다.

 
제 3 조 (개별상품계좌의 추가)
고객은 종합계좌에 개별상품계좌를 추가할 수 있다. 단, 동일한 금융투자상품의 거래가 가능한 개별상품 계좌는 추가 할 수 없다.

 

제4조(종합매매계좌로의 전환)
① 종합계좌의 개별상품계좌 중 위탁계좌, 수익증권 계좌, 외화증권계좌는 종합매매계좌로 전환할 수 있다. 단, 연계기관에서 개설한 종합계좌의 경
    우 실명확인대행 약정에 따라 전환 가능한 개별상품이 제한될 수 있다.

② 종합매매계좌로의 전환은 신청서를 작성한 다음 거래인감을 날인하여 회사에 제출하거나 당사 전자통신매체를 통하여 약관을 교부 받고 종합매
    매계좌로의 전환신청을 하여야 한다.

 
제 5 조(종합계좌 내 개별상품계좌 간의 대체)
종합계좌 내의 개별상품계좌 간에는 별도의 약정 절차 없이 전화, 컴퓨터 기타 이와 유사한전자통신의 방법 (이하 "전자통신 등의 방법"이라 한다)으로 자금을 대체할 수 있다.

 
제 6 조(기본거래계좌의 지정)
① 고객은 종합계좌 개설 시 개별상품계좌 중 한 개를 기본거래계좌로 지정하여야 한다. 단 고객이 별도로 지정하지 않는 경우에는 가장 먼저 개설
    된 개별상품계좌가 기본거래 계좌로 자동 지정된다.

② 고객은 기본거래계좌의 자금을 전자통신 등의 방법으로 타금융기관계좌로 이체할 수 있으며, 기본거래계좌가 아닌 개별상품계좌의 자금은 기본
    거래계좌로 대체한 후 이체 하여야 한다.

③ 고객은 기본거래계좌를 변경할 수 있다. 단, 온라인에서 개설한 계좌를 기본거래계좌로 지정할 수 없다.

 
제 7 조(개별상품계좌별 예탁자산 관리)
① 예수금, 증권 등 고객의 예탁자산은 종합계좌 내의 개별상품계좌별로 관리한다.

② 개별상품계좌의 예수금, 증권 등 예탁자산은 다른 개별상품계좌에서 발생한 미수금, 추가증거금 등에 자동으로 충당되지 아니한다.

③ 회사가 고객에게 금전의 융자 또는 증권의 대여를 한 경우 담보비율은 해당 개별상품 계좌의 예탁자산만으로 계산하며, 다른 개별상품계좌의
    고객예탁자산은 담보비율 계산에 포함하지 않는다.

 
제 8 조(서면통보)
① 고객은 종합계좌개설신청서에 서면통보지를 지정하여야 하며, 서면통보지는 종합계좌 내의 모든 개별상품계좌에 동일하게 적용된다.

② 회사가 고객에게 서면통보할 내용과 범위는 개별상품별 약관에서 정한 바에 따른다.

 
제 9 조(종합계좌개설신청서 기재내용 변동의 통지)
① 종합계좌개설신청서에 기재된 주소, 전화번호, 비밀번호, 기타 신고사항은 모든 개별상품 계좌에도 동일하게 적용된다.

② 고객은 주소, 전화번호, 대리권의 범위 기타 종합계좌개설신청서상에 기재된 내용에 변경이 있는 때에는 지체 없이 그 변경내용을 회사에 서면,
    전화 또는 전자통신 등의 방법으로 통지한다.

 
제 10 조(면책)
회사는 회사의 귀책사유가 없는 경우로서 다음 각 호의 어느 하나에 해당하는 사유로 인하여 고객에게 발생하는 손해에 대하여 책임을 지지 아니한다.

     1. 천재지변, 전시·사변 또는 이에 준하는 불가항력이라고 인정되는 사유에 의한 업무(거래의 집행, 거래대금의 수수 및 예탁, 보관 및 반환
        등)의 지연 또는 불능

     2. 고객의 귀책사유

 
제 11 조(종합매매계좌의 결제불이행 등에 대한 처리)
① 고객이 결제시한까지 매수대금 또는 매도증권을 납부하지 아니한 때에는 회사는 그 다음영업일(해외에서의 매수의 경우에는 다음다음 영업일)
    에 현금 또는 동일 내용의 증권으로 결제정리하고, 부족액이 있는 경우에는 해당 미수발생 매수증권 또는 매도대금, 기타 고객을 위하여 점유한
    현금 및 증권의 순으로 필요한 수량을 처분하여 임의 충당할 수 있다. 이 경우 회사가 임의처분할 수 있는 증권의 수량은 매도예정 증권의 처분
    당일 하한가를 기준으로 거래단위 수량을 감안하여 산정하며, 고객을 위하여 점유하고 있는 기타 증권의 처분은 <별첨>에서 정하는 순서에 의
    한다.

② 제1항에 따라 증권을 처분하는 경우 매도호가는 다음 각 호에 따른다.
     1. 유가증권시장 : 유가증권시장에서 시가결정에 참여하는 호가
     2. 코스닥시장 : 코스닥시장에서 시가결정에 참여하는 호가
     3. 호가중개시스템 : 호가중개개시 후 30분 이내의 호가(당일 기준가격의 100분의 70이상의 가격)
     4. 외화증권 : 해당 해외증권 시장의 가격산정 방법

③ 고객은 매수대금을 납부하지 아니하는 등 미수를 발생시킨 때에는 그 연체기간에 대하여 <별첨>에서 정하는 요율에 상당하는 연체료를 부담한
    다. 또한 회사가 연체료율을 변경하고자 하는 경우에는 그 변경내용을 영업점과 인터넷홈페이지, 온라인증권거래를 위한 컴퓨터 화면 기타 이와
    유사한 전자통신매체에 변경일 전에 비치 또는 게시한다.

④ 제3항의 연체료율이 고객에게 불리한 것일 때에는 이를 서면 등 고객과 사전에 합의한 방법으로 통지하여야 한다. 다만, 기존 고객에게 변경 전
    연체료율이 그대로 적용되는 경우 또는 고객이 변경내용에 대한 통지를 받지 아니하겠다는 의사를 명시적으로 표시한 경우에는 그러하지 아니
    하다.

 
제 12 조(양도 및 질권설정 금지)
고객은 회사의 동의를 얻어 현금 및 금융투자상품 등 예탁자산을 양도하거나 질권설정할 수 있다.

 
제 13 조(종합계좌약관의 변경 등)
① 회사는 이 약관 및 약관의 중요사항을 변경할 수 있으며, 이를 변경하고자 하는 경우 그 변경내용을 회사의 영업점과 인터넷 홈페이지, 온라인
    증권거래를 위한 컴퓨터 화면 기타 이와 유사한 전자통신매체에 변경예정일 전부터 1개월 이상 비치 또는 게시한다.

② 종합매매계좌에 대해 이 약관에서 정하지 아니한 사항은 별도의 약정이 없는 한 각 개별상품계좌 약관에 따른다.

③ 회사는 제 2항의 통지를 할 경우 "고객이 변경에 동의하지 아니한 경우 계약을 해지할 수 있으며, 통지를 받은 날로부터 변경예정일 전일까지
    계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다"라는 취지의 내용을 통지하여야 한다.

④ 고객이 제 3항의 통지를 받은 날로부터 변경예정일 전일까지 계약해지의 의사를 표시하지 아니하는 경우에는 변경에 동의한 것으로 본다.

⑤ 회사는 약관을 영업점 및 전자통신 등의 방법을 통한 매체에 비치 또는 게시하여 언제든지 열람 또는 교부할 수 있도록 한다.
                        							</textarea>
                        								<div style="display: flex; justify-content: center; margin-top: 10px;">
														 <div class="form-check mb-2 justify-content-center">
				                                                <input class="form-check-input" type="checkbox" value="" id="check3"/>
				                                                <label class="form-check-label ms-2" for="education">종합계좌 설정 약관에 대하여 동의합니다.</label>
	                                                	</div>
													</div>
                                            </div><!--end row-->
                                        </div><!--end payment-tab-->
                                        <div class="tab-pane fade" id="supportTab" role="tabpanel" aria-labelledby="support-tab">
                                            <div class="row">
													<textarea class="form-control" readonly="readonly" style="height: 400px;">
본 약관은 법령 및 내부통제기준에 따른 절차를 거쳐 제공됩니다.

 

제1조(저축의 목적)

수익증권저축(이하 “저축”이라 한다)은 판매회사 하나랜드주식회사(이하 “회사”라 한다)가 이 저축의 가입자(이하 “저축자”라 한다)로부터 저축금을 받아 그 자금으로 수익증권을 매입하고 보관·관리함으로써 저축자의 편익을 도모함을 목적으로 한다.

 

제2조(용어정의 등)

이 약관에서 사용하는 용어의 정의는 다음 각 호와 같다.

1.『저축재산』이라 함은 저축자가 저축한 금액과 저축기간 중 발생한 이익금을 합한 금액을 말한다.

2.『수익금』이라 함은 수익증권의 좌수(원본액)에 기준가격 상승액을 곱한 금액을 말하며, 수익증권의 기준가격 계산방법은 해당 집합투자규약에 의한다.

3.『이익분배금』이라 함은 투자신탁회계기간의 종료 및 해지 등에 따라 같은 기간 중 발생한 투자신탁의 수익금 중 저축자에게 지급되는 금액을 말한다.

4.『상환금』이라 함은 신탁계약기간의 종료 및 해지 등에 따라 저축자에게 지급할 원본액에 이익분배금등을 합한 금액을 말한다.

5.『환매수수료』라 함은 저축자가 저축한 수익증권의 환매를 청구할 때 회사가 받는 집합투자규약에서 정한 수수료를 말한다.

 

제3조(실명거래)

① 저축자는 실명으로 거래해야 한다.

② 회사는 저축자의 실명확인을 위하여 주민등록증·사업자등록증 등 실명확인증표 또는 그 밖에 필요한 서류의 제시나 제출을 요구할 수 있고, 저축자는 이에 따라야 한다.

 

제4조(저축계약의 성립)

① 저축계약은 회사가 저축자로부터 저축가입 신청과 저축금을 받음으로써 성립한다.

② 회사는 계약이 성립된 가입자에게 수익증권저축통장(수익증권저축증서 및 거래용 카드를 포함한다. 이하 “저축통장”이라 한다)을 교부한다. 다만, 무통장 거래 등의 경우에는 이를 교부하지 아니할 수 있다.

③ 저축자는 저축가입 신청시 저축의 종목과 종류 등을 정하여야 한다.

④ 저축기간은 수익증권의 최초 매수일부터 시작한다.

 

제5조(저축의 종목 및 종류)

① 이 저축의 대상종목은 운용을 담당하는 금융투자회사가 금융감독원장에게 증권신고서를 제출하고 그 효력이 발생한 투자신탁의 수익증권으로 한다. 다만, 사모 수익증권의 경우 등록이 완료된 수익증권으로 한다.

② 저축의 종류는 다음 각 호와 같다.

1.임의식：저축금 인출요건, 저축기간, 저축금액 및 저축목표금액을 정하지 아니하고 임의로 저축하는 방식

2.목적식：저축금 인출요건, 저축기간, 저축금액 또는 저축목표금액을 정하여 저축하는 방식

③ 제2항제2호의 목적식저축의 내용은 다음 각 호와 같다.

1.거치식

가. 수익금 인출식 : 일정금액을 일정기간 이상 저축하면서 저축기간 중 수익금 범위내에서 저축재산을 인출할 수 있는 방식

나. 일정금액 인출식 : 일정금액을 일정기간 이상 저축하면서 저축기간 중 사전에  정한 일정금액(수익금이 발생한 경우 우선하여 인출한다)의 저축재산을 매월 인출할 수 있는 방식

2.적립식

가.정액적립식：저축기간을 일정기간 이상으로 정하고(예:3년 이상, 5년 이상) 저축기간 동안 일정금액 또는 좌수를 정하여 매월 저축하는 방식

나.자유적립식：저축기간을 일정기간 이상으로 정하고(예:3년 이상, 5년이상) 저축기간 동안 금액에 제한없이 수시로 저축하는 방

3.목표식：저축목표금액을 정하여 일정기간 이상 수시로 저축하는 방식

4. 저축기간, 저축금액 또는 저축목표금액의 조정  : 회사는 저축자의 요청에 따라 기존에 정한 저축기간의 종료 또는 저축목표금액의 도달과 관계없이 저축기간을 연장하거나 저축금액 또는 저축 목표금액을 감액 또는 증액할 수 있다. 다만, 조세 특례제한법 등의  법령에서 특별히 저축기간, 저축금액 또는 저축목표금액에 관하여 정한 사항이 있는  경우 그에 따른다.

④ 제1항부터 제3항과 관련된 세부사항은 회사와 저축자가 합의하여 정한다.

 

제6조(저축금의 납입)

① 저축자는 현금이나 즉시 받을 수 있는 수표,어음 등으로 저축금을 납입(계좌송금 및 계좌대체를 포함한다)할 수 있다.

② 저축금으로 납입한 수표·어음 등이 지급거절된 경우에는 저축금의 납입을 취소하며, 회사는 증권의 권리보전 절차를 밟지 아니하고 저축자 또는 계좌송금의뢰인에게 지급거절된 수표·어음 등을 반환한다.

③ 판매회사는 저축자로부터 납입받은 저축금을 수익증권 매입 전까지 관리함에 있어 선량한 관리자의 주의의무를 다 하여야 하며, 해당 저축금을 양도하거나 담보로 제공할 수 없다.

④ 회사는 전항의 저축금에 대해 저축자에게 고지한 지급기준에 따른 저축금 이용료를 지급하여야 한다.

⑤ 저축자는 회사로부터 지급받는 저축금 이용료의 지급기준을 영업점, 인터넷 홈페이지 (키움증권  ≫증권업무 안내  ≫ 수수료 및 증거금  ≫예탁금이용료), 온라인 거래를 위한 컴퓨터 화면, 그 밖에 이와 유사한 전자통신매체를 통하여 확인할 수 있다.

⑥ 회사는 운용수익, 예금자 보험료, 감독분담금 등을 감안하여 저축금 이용료를 합리적으로 산정하고, 투자자예치금 이용료 산정에 영향을 미치는 요인의 변동상황을 주기적으로 점검하여 이를 반영한다.

⑦ 저축자는 제6항에 따라 저축금 이용료의 지급기준이 변경되는 경우 제5항의 방법을 통하여 확인할 수 있다. 다만, 저축자에게 불리한 예탁금이용료 지급기준 변경에 대하여 저축자가 그 내용을 예탁금이용료 변경 전에 자신이 지정한 전자우편 또는 휴대폰 문자서비스(SMS, MMS 등) 등의 방법으로 통하여 안내받기를 원하는 경우 회사는 그 방법으로 사전에 알려준다.

⑧ 회사는 저축금 이용료의 지급기준이 변경되는 경우 제9조제1항 제2호에 따라 매매거래 등을 통지할 때 그 변경내용을 함께 저축자에게 알려준다.

 

제7조(권한의 위임)

저축자는 저축재산의 관리에 필요한 모든 사항을 회사에 위임한다.

 

제8조(수익증권의 매입 등)

① 회사는 저축자가 납입한 저축금으로 저축자가 지정한 종목 및 종류에 따라 수익증권을 매입하여 저축한다.

② 회사는 저축자에 대하여 수익증권을 1좌 단위로 매각 또는 환매할 수 있다.

③ 회사는 1매의 수익증권을 별도로 분할하지 않고 2이상의 저축자에게 수익증권의 단위범위 이내에서 매각할 수 있다.

 

제9조(매매거래 등의 통지)

① 회사는 수익증권의 매매가 체결된 경우 다음 각 호에서 정하는 방법에 따라 그 명세를 저축자에게 통지하여야 한다.

1. 매매가 체결된 후 지체 없이 매매의 유형, 종목ㆍ품목, 수량, 가격, 수수료 등 모든 비용, 그 밖의 거래내용을 통지할 것

2. 집합투자증권의 매매가 체결된 경우, 매월 마지막 날까지 집합투자기구에서 발생한 모든 비용을 반영한 실질 투자 수익률, 투자원금 및 환매예상 금액, 총 보수와 판매 수수료 각각의 요율을 통지할 것

3. 다음 각 목의 어느 하나에 해당하는 방법 중 회사와 저축자간에 미리 합의된 방법(계좌부 등에 의하여 관리ㆍ기록되지 아니하는 매매거래에 대하여는 가목만 해당한다)으로 통지할 것. 다만, 저축자가 보유한 집합투자증권이 『자본시장과 금융투자업에 관한 법률』 제 234조에 따른 상장지수집합투자기구, 단기금융집합투자기구, 사모집합투자지구의 잡합투자증권이거나 평가기준일의 평가금액이 10만원 이하인 경우(집합투자증권의 매매가 체결된 경우에 한정한다) 또는 통지를 받기를 원하지 아니하는 경우에는 영업점에 저축자가 확인할 수 있도록 마련해 두거나 인터넷 홈페이지에 접속하여 수시로 확인이 가능하게 함으로써 통지를 대신할 수 있다.

나. 전화, 전신 또는 모사전송

라. 한국예탁결제원의 기관결제참가자인 고객에 대하여 한국예탁결제원의 전산망을 통하여 매매확인서를 교부하는 방법

바. 회사가 모바일시스템을 통해 문자메시지 또는 이와 비슷한 방법으로 통지하는 방법

② 회사는 저축자가 거래를 시작하기 전에 저축자가 원하는 매매성립내용의 통지방법을 확인하여 이를 기록ㆍ유지하여야 한다.
													</textarea>
													<div style="display: flex; justify-content: center; margin-top: 10px;">
														 <div class="form-check mb-2 justify-content-center">
				                                                <input class="form-check-input" type="checkbox" value="" id="check4" />
				                                                <label class="form-check-label ms-2" for="education">수익증권 저축 약관에 대하여 동의합니다.</label>
	                                                	</div>
													</div>
                                            </div><!--end row-->
                                        </div><!--end support-tab-->
                                    </div>
                                </div><!--end col-->
                                <div class="col-lg-12">
                                    <div class="text-center mt-5">
                                        <button id="next" disabled="disabled"  type="button" class="btn btn-hover mt-2 ms-md-2" style="background-color: #008485; color: white;" ><i class="fa-solid fa-angles-right" style="margin-right: 5px;"></i> 다음으로 이동</button>
                                    </div>   
                                </div>
                            </div><!--end row-->
                        </div><!--end container-->
                    </section>
                    
                    <div id="loading" style="display: flex;  height: 500px; flex-direction: column; align-items: center; margin-top: 100px; display: none; text-align: center;">
                    	<h2 style="margin-bottom: 20px;">고객님의 카드 목록을 가져오고 있어요</h2>
		                <img  src="/finalproject1/resources/images/loading.gif" style="width: 200px; height: 200px;">
                    </div>
                    
                    <div id="cardList" style="display: flex; height: 400px; flex-direction: column; align-items: center; margin-top: 100px; display:none;  text-align: center;">
                    	<h2 style="margin-bottom: 50px;">연동할 카드를 선택해주세요<span style="font-size: 16px;">(최대 2개 선택가능)</span></h2>
                    	<div id="cardListBox"  style="display: flex; justify-content: center;">
                    	<!-- <div  class="selectCard" style="display:flex; flex-direction:column; margin-top: 20px; margin-right: 40px; cursor: pointer; margin-bottom: 50px; align-items: center;">
                    			<i class="fa-regular fa-circle-check" style="font-size: 50px; margin-bottom: -40px; z-index: 3; color: green; align-self: flex-start; display: none;"></i>
					            <img  src="/finalproject1/resources/images/card/card1.png" style="width: 300px; height: 200px;">
				                <h3 style="margin-top: 10px; width: 300px;">모두의 일상 체크카드</h3>
	                    </div>
	                    		                    	<div  class="selectCard" style="display:flex; flex-direction:column; margin-top: 20px; margin-right: 40px; cursor: pointer; margin-bottom: 50px;">
	                    		<i class="fa-regular fa-circle-check" style="font-size: 50px; margin-bottom: -40px; z-index: 3; color: green;"></i>
				                <img  src="/finalproject1/resources/images/card/card2.png" style="width: 300px; height: 200px;">
				                <h3 style="margin-top: 10px;">하나멤버스 1Q(원큐) 카드 Business</h3>
	                    	</div>
	                    	<div  class="selectCard" style="display:flex; flex-direction:column; margin-top: 20px; margin-right: 40px; cursor: pointer; margin-bottom: 50px; align-items: center;">
	                    		<i class="fa-regular fa-circle-check" style="font-size: 50px; margin-bottom: -40px; z-index: 3; color: green; align-self: flex-start; display: none;"></i>
				                <img  src="/finalproject1/resources/images/card/card2.png" style="width: 300px; height: 200px;">
				                <h3 style="margin-top: 10px; width: 300px;">하나멤버스 1Q(원큐) 카드 Business</h3>
	                    	</div> -->
                    	</div>
                    </div>
                    <div id="applyCard" class="text-center" style="height: 200px; display: none">
                           <button  type="button" class="btn btn-hover" style="background-color: #008485; color: white; margin-right: 20px;" ><i class="fa-solid fa-angles-right" style="margin-right: 5px;"></i> 연동하기</button>
                   </div>
                   <div id="scan" style="display: flex; height: 500px; flex-direction: column; align-items: center; margin-top: 100px; display:none; text-align: center;">
                   		<h2>고객님의 카드 내역을 분석중이에요</h2>
	                   <div class="lottie-container" style="display: flex; justify-content: center;">
						    <lottie-player  style="width:300px; margin-top:30px;" src="/finalproject1/resources/json/cardScan.json" background="transparent" speed="1" loop autoplay></lottie-player>
						</div>
                   </div>
                   
                   <section id="resultSection" class="section" style="margin-top: 50px; display:none; padding-top: 0;" >
                    	<div class="container" style="display: flex; flex-direction:column; align-items:center;  height: 2000px;">
                    		<div id="resultBox" class="row">
                    			<h2>결제 횟수별 분석</h2>
                            </div>
                            <div id="resultBox2" class="row" style="margin-top: 100px;">
                    			<h2>결제 금액별 분석</h2>
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
	<script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
	<script>
		$(document).ready(function(){
			let ck1 = '0'
			let ck2 = '0'
			let ck3 = '0'
			let ck4= '0'
			$('#check1').on('click',function(){
				if ( $(this).prop('checked') ) {
					$("#checkIcon1").css("color","green");
					ck1 = '1'
					$('#buying-tab').trigger('click')
				} else {
					$("#checkIcon1").css("color","red");
					ck1 = '0'
			      }
			})
				$('#check2').on('click',function(){
				if ( $(this).prop('checked') ) {
					$("#checkIcon2").css("color","green");
					ck2 = '1'
					$('#payment-tab').trigger('click')
				} else {
					$("#checkIcon2").css("color","red");
					ck2 = '0'
			      }
			})
				$('#check3').on('click',function(){
				if ( $(this).prop('checked') ) {
					$("#checkIcon3").css("color","green");
					ck3 = '1'
					$('#support-tab').trigger('click')
				} else {
					$("#checkIcon3").css("color","red");
					ck3 = '0'
			      }
			})
				$('#check4').on('click',function(){
				if ( $(this).prop('checked') ) {
					$("#checkIcon4").css("color","green");
					ck4='1'
					$('#a').attr('id','hireNow')
					$('#next').removeAttr("disabled");
				} else {
					$("#checkIcon4").css("color","red");
					ck4='0'
			      }
			})
					
			$('#sign').on('click',function(){
				if(ck1 == '0'){
					alert('전자금융거래 이용 약관에 동의해주세요')
					return false;
				}
				if(ck2 == '0'){
					alert('온라인 서비스 이용 약관에 동의해주세요')
					return false;
				}
				if(ck3 == '0'){
					alert('종합계좌 설정 약관에 동의해주세요')
					return false;
				}
				if(ck4 == '0'){
					alert('수익증권 저축 약관에 동의해주세요')
					return false;
				}
			})
			
		})
		function startCard(){
			$('#cardSection').fadeOut(500,function(){
				$('#signForm').fadeIn(500)
			})
		}
		
		let cardNoArray = new Array();
		$('#next').on('click',function(){
			fetch('${pageContext.request.contextPath}/card/getCardList?customerId=${loginVO.id}').then(res=>res.json()).then(response=>{
				if(response != null){
					$('#cardListBox').empty()
					for(let i = 0; i < response.length; i++){
						let checkState = 0;
						let str  = ''
						str += '<div  class="selectCard" style="display:flex; flex-direction:column; margin-top: 20px; margin-right: 40px; cursor: pointer; margin-bottom: 50px; align-items: center;">'
						str += '<i class="fa-regular fa-circle-check" style="font-size: 50px; margin-bottom: -40px; z-index: 3; color: green; align-self: flex-start; display: none;"></i>'	
            			str += '<img  src="/finalproject1/resources/images/card/'+response[i].CARD_IMG+'" style="width: 300px; height: 200px;">'
			            str += '<input type="hidden" value="'+response[i].CARD_NO+'">'
            			str += '<h3 style="margin-top: 10px; width: 300px;">'+response[i].CARD_NAME+'</h3></div>'
        				$('#cardListBox').append(str).ready(function(){
        					$('.selectCard').hover(function(){
        						$(this).animate({
        							marginTop : "-3px"
        						},500)
        					},function(){
        						$(this).animate({
        							marginTop : "20px"
        						},500)
        					})
        					$('.selectCard').on('click',function(){
        						if(checkState == 0){
        							checkState = 1
	        						$(this).children('i').fadeIn(500)
	        						cardNoArray.push($(this).children('input').val())
        						}else if(checkState == 1){
        							checkState = 0
        							$(this).children('i').fadeOut(500)
        						}
        					})
        				})
					}
				}
			})
			$('#signForm').fadeOut(500,function(){
				$('#loading').show()
			})
			setTimeout(function() {
				$('#loading').fadeOut(300,function(){
					$('#cardList').fadeIn(300)
					$('#applyCard').fadeIn(300)
				})
			},2000)
		})
		$('#applyCard').on('click',function(){
			let newCardNoArray = [...new Set(cardNoArray)]
			if(newCardNoArray.length == 1){
				newCardNoArray[1] = newCardNoArray[0]
			}
			cardNo1 = newCardNoArray[0]+''
			cardNo2 = newCardNoArray[1]+''
			let cardInfo1 = new Object()
			let cardInfo2 = new Object()
			fetch('${pageContext.request.contextPath}/card/applyCard',{
				method:"POST",
				headers:{"Content-Type" : "application/json"},
				body: JSON.stringify({
						cardNo1 : cardNo1,
						cardNo2 : cardNo2,
						customerId : '${loginVO.id}'
				})
			}).then(res=>res.json()).then(response=>{
				let res1 = 0;
				for(let i = 0; i < response.length-1; i++){
					for(let j = i+1; j < response.length; j++){
						if(response[i].PAYMENT_CNT < response[j].PAYMENT_CNT){
							res1 = response[i]
							cardInfo1[i] = response[j]
							cardInfo1[j] = res1
						}
					}
				}
				let res2 = 0;
				for(let i = 0; i < response.length-1; i++){
					for(let j = i+1; j < response.length; j++){
						if(response[i].SUM_PAYMENT_AMOUNT < response[j].SUM_PAYMENT_AMOUNT){
							res2 = response[i]
							cardInfo2[i] = response[j]
							cardInfo2[j] = res2
						}else{
							cardInfo2[i] = response[i]
						}
					}
				}
 				$('#applyCard').fadeOut(300)
				$('#cardList').fadeOut(300,function(){
					$('#scan').fadeIn(300)
				})
				setTimeout(function() {
				$('#scan').fadeOut(300,function(){
					$('#resultSection').fadeIn(300)
				})
			},3000)
			let medals = ['goldMedal.png','silverMedal.png','bronzeMedal.png'] 
			for(let i = 0; i < 3; i++){
					
					getPrStck(cardInfo1[i].FID+'').then(
						res => {
							$('#prStck'+i).text('현재가 : '+res+' 원')
						}		
					)
					if(cardInfo1[i].BUILDING_NAME){
						 let str = ''
							 str += '<div class="col-lg-4 col-md-6 mt-4">'
							 str += '<div style="display: flex; align-items: center; margin-bottom: 20px;">'
							 str += '<img  src="/finalproject1/resources/images/card/'+medals[i]+'" style="width: 80px;">'
							 str += '<div style="display: flex; flex-direction: column; justify-content: center;">'
			                 str += '<h3>'+cardInfo1[i].LOCATION_NAME+'</h3>'	
			                 str += '<div>결제 횟수 : '+cardInfo1[i].PAYMENT_CNT+'회('+cardInfo1[i].PAYMENT_CNT_PER+'%)</div><a  class="p" style="cursor:pointer" onclick="plusBuilding1('+cardInfo1[i].LOCATION_CODE+','+i+')">빌딩 더보기<a>'   	
			                 str += '</div>'  	
			                 str += '</div>'  	
			                 str += '<div  id="cardInfo1'+i+'"'+' >'  	
			                 str += '<div class="card job-grid-box" style="height:580px;">'
			                 str += '<div class="card-body p-4">'  
			                 str += '<div>'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo1[i].PROPERTY_NO+'&buildingNo='+cardInfo1[i].BUILDING_NO+'"><img src="/finalproject1/resources/images/detail/'+cardInfo1[i].IMAGE_NAME1+'"  style="width: 350px; height: 250px;" alt="" class="img-fluid rounded-3"></a>'  
			                 str += ' </div>'  
			                 str += '<div class="mt-4">'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo1[i].PROPERTY_NO+'&buildingNo='+cardInfo1[i].BUILDING_NO+'" class="primary-link"><h5 class="fs-17 mb-1">'+cardInfo1[i].BUILDING_NAME+'</h5></a>'  
			                 str += ' <p class="text-muted"><i class="fa-solid fa-location-dot"></i> '+' '+cardInfo1[i].BUILDING_LOCATION+'</p>'  
			                 str += '</div>'  
			                 str += '<div class="job-grid-content mt-3">'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-train-subway"></i>'+' '+cardInfo1[i].POINT_HEAD1+'</div>'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-arrow-trend-up"></i>'+' '+cardInfo1[i].POINT_HEAD2+'</div>'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-user-shield"></i>'+' '+cardInfo1[i].POINT_HEAD3+'</div>'  
			                 str += '<div class="d-flex align-items-center justify-content-between border-top pt-3">' 
			                 str += '<p class="text-muted float-start mb-0" id="prStck'+i+'">2 min ago</p>'  
			                 str += '<div class="text-end">'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo1[i].PROPERTY_NO+'&buildingNo='+cardInfo1[i].BUILDING_NO+'" class="btn btn-sm btn-primary">빌딩 사러가기 <i class="uil uil-angle-right-b"></i></a>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>' 
		                	 $('#resultBox').append(str)
					}else if(!cardInfo1[i].BUILDING_NAME){
							 let str = ''
							 str += '<div class="col-lg-4 col-md-6 mt-4">'
							 str += '<div style="display: flex; align-items: center; margin-bottom: 20px;">'
							 str += '<img  src="/finalproject1/resources/images/card/'+medals[i]+'" style="width: 80px;">'
							 str += '<div style="display: flex; flex-direction: column; justify-content: center;">'
			                 str += '<h3>'+cardInfo1[i].LOCATION_NAME+'</h3>'	
			                 str += '<div>결제 금액 : '+cardInfo1[i].SUM_PAYMENT_AMOUNT.toLocaleString('ko-KR')+'원('+cardInfo1[i].PAYMENT_AMOUNT_PER+'%)</div>'   	
			                 str += '</div>'  	
			                 str += '</div>'  	
			                 str += '<div class="card job-grid-box"  style="height:580px;">'
			                 str += '<div class="card-body p-4">'  
			                 str += '<div style="width: 350px; height: 250px; display:flex; justify-content:center; align-items:center;>'  
			                 str += '<a href="company-details.html"><img src="/finalproject1/resources/images/card/prepare.png"  style="width: 150px; height: 150px;" alt="" class="img-fluid rounded-3"></a>'  
			                 str += ' </div>'  
			                 str += '<div class="mt-4">'  
			                 str += '</div>'  
			                 str += '<div class="job-grid-content mt-3">'  
			                 str += '<div class="border-top pt-3" style="display: flex; flex-direction:column; align-items:center; justify-content:center;">'  
			                 str += '<h3 style="text-align:center; margin-top:80px;">해당 지역의 빌딩은</h3>'
			                 str += '<h3 style="text-align:center;">아직 준비중이에요</h3>'
			                 str += '<div class="text-end">'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>' 
		                	 $('#resultBox').append(str)
					}

					
					getPrStck(cardInfo2[i].FID+'').then(
							res => {
								$('#prStck_1'+i).text('현재가 : '+res+' 원')
							}		
						)
					
					if(cardInfo2[i].BUILDING_NAME){
						 let str = ''
							 str += '<div class="col-lg-4 col-md-6 mt-4">'
							 str += '<div style="display: flex; align-items: center; margin-bottom: 20px;">'
							 str += '<img  src="/finalproject1/resources/images/card/'+medals[i]+'" style="width: 80px;">'
							 str += '<div style="display: flex; flex-direction: column; justify-content: center;">'
			                 str += '<h3>'+cardInfo2[i].LOCATION_NAME+'</h3>'	
			                 str += '<div>결제 금액 : '+cardInfo2[i].SUM_PAYMENT_AMOUNT.toLocaleString('ko-KR')+'원('+cardInfo2[i].PAYMENT_AMOUNT_PER+'%)</div><a  class="p" style="cursor:pointer" onclick="plusBuilding2('+cardInfo2[i].LOCATION_CODE+','+i+')">빌딩 더보기<a>'
			                 str += '</div>'  	
			                 str += '</div>'
			                 str += '<div  id="cardInfo2'+i+'"'+' >' 
			                 str += '<div class="card job-grid-box"  style="height:580px;">'
			                 str += '<div class="card-body p-4">'  
			                 str += '<div>'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo1[i].PROPERTY_NO+'&buildingNo='+cardInfo1[i].BUILDING_NO+'"><img src="/finalproject1/resources/images/detail/'+cardInfo2[i].IMAGE_NAME1+'"  style="width: 350px; height: 250px;" alt="" class="img-fluid rounded-3"></a>'  
			                 str += ' </div>'  
			                 str += '<div class="mt-4">'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo1[i].PROPERTY_NO+'&buildingNo='+cardInfo1[i].BUILDING_NO+'" class="primary-link"><h5 class="fs-17 mb-1">'+cardInfo2[i].BUILDING_NAME+'</h5></a>'  
			                 str += ' <p class="text-muted"><i class="fa-solid fa-location-dot"></i> '+' '+cardInfo2[i].BUILDING_LOCATION+'</p>'  
			                 str += '</div>'  
			                 str += '<div class="job-grid-content mt-3">'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-train-subway"></i>'+' '+cardInfo2[i].POINT_HEAD1+'</div>'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-arrow-trend-up"></i>'+' '+cardInfo2[i].POINT_HEAD2+'</div>'  
			                 str += '<div class="text" style="height:50px; font-weight:600; white-space: nowrap;"><i class="fa-solid fa-user-shield"></i>'+' '+cardInfo2[i].POINT_HEAD3+'</div>'  
			                 str += '<div class="d-flex align-items-center justify-content-between border-top pt-3">'  
			               	str += '<p class="text-muted float-start mb-0" id="prStck_1'+i+'">2 min ago</p>'
			                 str += '<div class="text-end">'  
			                 str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+cardInfo2[i].PROPERTY_NO+'&buildingNo='+cardInfo2[i].BUILDING_NO+'" class="btn btn-sm btn-primary">빌딩 사러가기 <i class="uil uil-angle-right-b"></i></a>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>' 
			                 str += '</div>' 
		                	 $('#resultBox2').append(str)
					} else if(!cardInfo2[i].BUILDING_NAME){
							 let str = ''
							 str += '<div class="col-lg-4 col-md-6 mt-4">'
							 str += '<div style="display: flex; align-items: center; margin-bottom: 20px;">'
							 str += '<img  src="/finalproject1/resources/images/card/'+medals[i]+'" style="width: 80px;">'
							 str += '<div style="display: flex; flex-direction: column; justify-content: center;">'
			                 str += '<h3>'+cardInfo2[i].LOCATION_NAME+'</h3>'	
			                 str += '<div>결제 금액 : '+cardInfo2[i].SUM_PAYMENT_AMOUNT.toLocaleString('ko-KR')+'원('+cardInfo2[i].PAYMENT_AMOUNT_PER+'%)</div>'   	
			                 str += '</div>'  	
			                 str += '</div>'  	
			                 str += '<div class="card job-grid-box"  style="height:580px;">'
			                 str += '<div class="card-body p-4">'  
			                 str += '<div style="width: 350px; height: 250px; display:flex; justify-content:center; align-items:center;>'  
			                 str += '<a href="company-details.html"><img src="/finalproject1/resources/images/card/prepare.png"  style="width: 150px; height: 150px;" alt="" class="img-fluid rounded-3"></a>'  
			                 str += ' </div>'  
			                 str += '<div class="mt-4">'  
			                 str += '</div>'  
			                 str += '<div class="job-grid-content mt-3">'  
			                 str += '<div class="border-top pt-3" style="display: flex; flex-direction:column; align-items:center; justify-content:center;">'  
			                 str += '<h3 style="text-align:center; margin-top:80px;">해당 지역의 빌딩은</h3>'
			                 str += '<h3 style="text-align:center;">아직 준비중이에요</h3>'
			                 str += '<div class="text-end">'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>'  
			                 str += '</div>' 
		                	 $('#resultBox2').append(str)
					}
					
					
			}
			
			})
		})
		 async function getPrStck(fid){
				let prStck 
			  

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
		
		function plusBuilding1(locationCode,index){
			fetch('${pageContext.request.contextPath}/card/getBuildingPlus?locationCode='+locationCode).then(res=>res.json()).then(response=>{
				$('#cardInfo1'+index).empty()
				for(let i = 0; i < response.length; i++){
					let str = ''
					str += 	'<div class="candidate-list-box bookmark-post card mt-3 mb-5">'
					str += '<div class="card-body p-4">'
					str += '<div class="row align-items-center">'
					str += '<div class="col-auto">'
					str += '<div class="candidate-list-images">'
					str += '<a href="javascript:void(0)"><img src="/finalproject1/resources/images/detail/'+response[i].IMAGE_NAME1+'" alt="" class="avatar-md img-thumbnail rounded-circle"></a>'
					str += '</div>'
					str += '</div>'
					str += '<div class="col-lg-4">'
					str += '<div class="candidate-list-content mt-3 mt-lg-0">'
					str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+response[i].PROPERTY_NO+'&buildingNo='+response[i].BUILDING_NO+'" class="p" style="white-space:nowrap; font-size:20px;">'+response[i].BUILDING_NAME+'</a> '
					str += '</div>'
					str += '</div>'
					str += '</div>'
					str += '</div>'
					str += '</div>'
					$('#cardInfo1'+index).append(str)
			}
			})
		}
		function plusBuilding2(locationCode,index){
			fetch('${pageContext.request.contextPath}/card/getBuildingPlus?locationCode='+locationCode).then(res=>res.json()).then(response=>{
				$('#cardInfo2'+index).empty()
				for(let i = 0; i < response.length; i++){
					let str = ''
					str += 	'<div class="candidate-list-box bookmark-post card mt-3 mb-5">'
					str += '<div class="card-body p-4">'
					str += '<div class="row align-items-center">'
					str += '<div class="col-auto">'
					str += '<div class="candidate-list-images">'
					str += '<a href="javascript:void(0)"><img src="/finalproject1/resources/images/detail/'+response[i].IMAGE_NAME1+'" alt="" class="avatar-md img-thumbnail rounded-circle"></a>'
					str += '</div>'
					str += '</div>'
					str += '<div class="col-lg-4">'
					str += '<div class="candidate-list-content mt-3 mt-lg-0">'
					str += '<a href="${pageContext.request.contextPath}/building/detail?propertyNo='+response[i].PROPERTY_NO+'&buildingNo='+response[i].BUILDING_NO+'" class="p" style="white-space:nowrap; font-size:20px;">'+response[i].BUILDING_NAME+'</a> '
					str += '</div>'
					str += '</div>'
					str += '</div>'
					str += '</div>'
					str += '</div>'
					$('#cardInfo2'+index).append(str)
			}
			})
		}
		
		</script>
		</body>
</html>
