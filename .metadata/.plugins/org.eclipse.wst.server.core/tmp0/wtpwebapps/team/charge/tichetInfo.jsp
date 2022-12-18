<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket Infomation_tichetInfo</title>
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
    h1 {text-align: center;}
    table {font-size: 24px; font-weight: 500;}
    .notiDiv {display:block; margin: 100px; padding: 100px;background-color: rgb(239, 239, 239);}
    .tit {font-size :40px; font-weight: 700;}
    .dotTit {font-size: 28px;}
    .barList {font-size : 20px; line-height: 2.5em;}
    .buttonDiv {text-align: center; margin: 50px 0;}
    </style>
</head>
<body>
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${path2 }/">Home</a></li>
        <li class="breadcrumb-item"><a href="#">이용요금 안내</a></li>
        <li class="breadcrumb-item active" aria-current="page">티켓요금</li>
    </ol>
</nav>
<div class="container">
    <h1>티켓요금</h1>
    <table class="table table-bordered">
        <thead>
          <tr class="table-active">
            <th scope="col">어른</th>
            <th scope="col">청소년</th>
            <th scope="col">어린이</th>
            <th scope="col">유아</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>59,000원</td>
            <td>54,000원</td>
            <td>45,000원</td>
            <td>15,000원</td>
          </tr>
        </tbody>
    </table>
    <div class="notiDiv">
        <h4 class="tit">꼭 알아두세요!</h4>
        <p class="dotTit"><strong>※ 연령에 따른 요금 적용 안내</strong></p>
        <p><strong>- 나이 확인이 가능한 신분증 또는 서류를 제시하시기 바랍니다.</strong></p>
        <p class="barList">1) 0~12개월 미만 : 파크 입장 무료<br>

            2) 12개월 이상 48개월 미만 : 유아 요금 적용<br>
            
            3) 48개월 이상 ~ 만 12세 : 어린이 요금 적용<br>
            
            4) 만 13세 이상 ~ 만 18세 : 청소년 요금 적용<br>
            
            5) 만 65세 이상 : 어린이 요금 적용</p>
    </div>
    <div class="buttonDiv">
        <a href="${path2 }/charge/fastInfo.jsp" type="button" class="btn btn-outline-info btn-lg">패스트트랙 요금 보기</a>
        <a href="" type="button" class="btn btn-info btn-lg">티켓 예매</a>
    </div>
</div>
<footer>

</footer>
</body>
</html>