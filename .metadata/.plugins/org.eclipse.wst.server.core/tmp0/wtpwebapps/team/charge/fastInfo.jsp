<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Infomation_fastInfo</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
	* { margin: 0; padding: 0; }
	body, html { width:100%; }
	ul { list-style:none; }
	a { text-decoration: none; }
	button, input { outline:0; background-color: #333; color:#fff; }
	.wrap { width: 100%; clear:both; }
    .container {display:block; clear:both;}
    .top {text-align: center;}
    .notiDiv {display:block; margin: 100px; padding: 100px;background-color: rgb(239, 239, 239);}
    .tit {font-size :40px; font-weight: 700;}
    .dotTit {font-size: 28px;}
    .barList {font-size : 20px;}
    .buttonDiv {text-align: center; margin: 50px 0;}
    </style>
</head>
<body>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${path2 }/">Home</a></li>
        <li class="breadcrumb-item"><a href="#">이용요금 안내</a></li>
        <li class="breadcrumb-item active" aria-current="page">패스트트랙 요금</li>
    </ol>
</nav>
<div class="container">
    <div class="top">
        <h1>패스트트랙 요금</h1>
        <p>원하는 어트랙션을 누구보다 빠르게 즐기는 프리미엄 서비스!</p>
    </div>
    <table class="table table-bordered">
        <thead>
          <tr class="table-active">
            <th scope="col"><span class="tl">5회권</span><p>30,000원</p></th>
            <th scope="col"><span>10회권</span><p>50,000원</p></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td colspan="2">
            	대상 : 당일 티켓 구매 고객, 연간 이용 고객 (  ※구매 당일 한정, 1인 1매 사용 )<br>
				혜택 : 패스트트랙 전용 대기 라인으로 빠르게 탑승<br>
				판매처 : 온라인 예매<br>
				사용방법 : 패스트트랙 예매 후 패스트트랙 예약 하기에서 예약
			</td>
          </tr>
        </tbody>
    </table>
    <div class="notiDiv">
        <h4 class="tit">꼭 알아두세요!</h4>
        <p class="dotTit"><strong>[구매]</strong></p>
        <p class="barList">1. 본 상품은 '사전 예매' 방식으로 구매하실 수 있으며, 롯데월드 홈페이지에서 구매 가능합니다.<br>
            ※ 오픈 시간은 현장 상황에 따라 일부 조정될 수 있습니다.<br><br>
          2. 본 상품은 한정 수량 상품으로, 다른 손님들의 이용 기회를 보장하기 위해 1인 당 최대 4매까지 구매 가능합니다.</p>
        <p class="dotTit"><strong>[취소 및 환불]</strong></p>
        <p class="barList">1. 본 상품은 예약 후 미이용시에는 위약금 100%가 부과되며, 아래 경우를 포함하여 당일 취소 및 환불은 불가능합니다.<br>
            - 개인 사정 등으로 인한 단순 변심<br>
            - 사전 고지된 운휴 일정 외 예고 없는 손님 안전 목적의 어트랙션 점검<br>
            - 우천, 강풍 등의 기상 상황 악화로 매직아일랜드 어트랙션 운행 대기<br><br>
            2. 본 상품은 방문 예정일 전날 23시 59분까지만 취소가 가능하며, 이후에는 예약 취소 및 환불이 불가능합니다. <br>
            ※ 단, 금융사별 정산 시간에 따라 취소 가능 시간이 상이하니 금융사에 확인하시기 바랍니다.<br><br>
            3. 본 상품 구매 후 타인에게 재판매하는 행위는 다른 손님의 이용 기회를 제한하는 것으로, 당사의 영업활동 방해에 해당되어 법적 조치 대상이 될 수 있습니다.</p>
        <p class="dotTit"><strong>[기타]</strong></p>
        <p class="barList">1. 매직패스 프리미엄 티켓, 밴드 등 파손/훼손/분실 시 이용권 이용 및 재발행이 불가능합니다.<br><br>
            2. 다음과 같은 어트랙션은 매직패스 프리미엄 사용이 불가합니다.<br>
            - 유료 시설 : 툼 오브 호러, 거울미로, 문보트<br><br>
            3. 일부 어트랙션에서는 시설 구조와 상황에 따라 대기시간이 발생할 수 있습니다.</p>
        </div>
    <div class="buttonDiv">
        <a href="${path2 }/charge/tichetInfo.jsp" type="button" class="btn btn-outline-info btn-lg">티켓 요금 보기</a>
        <a href="" type="button" class="btn btn-info btn-lg">패스트트랙 예매</a>
    </div>
</div>
<footer>

</footer>
</body>
</html>