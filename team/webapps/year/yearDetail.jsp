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
    <title>Ticket Infomation_yearInfo</title>
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
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .content { display:none; }
    .content:target { display:block; }
    h1 {text-align: center;}
    .sub_tit {text-align: center;}
    table {font-size: 24px; font-weight: 500;}
    .notiDiv {display:block; margin: 100px; padding: 100px;background-color: rgb(239, 239, 239);}
    .tit {font-size :40px; font-weight: 700;}
    .dotTit {font-size: 28px;}
    .barList {font-size : 20px; line-height: 2.5em;}
    .buttonDiv {text-align: center; margin: 50px 0;}
    
    .roundDiv {margin-top: 40px; margin-bottom: 100px !important; padding-bottom: 100px; border-bottom: 1px dashed #e1e1e1;}
    .roundDiv li {margin-top: 10px; display: table; width: 100%;}
    .roundDiv li p {display: table-cell; vertical-align: middle; font-size: 18px; line-height: 25px; padding-left: 20px;}
    .roundDiv li p:first-child {width: 118px; padding: 10px 0; text-align: center; font-size: 18px; color: #000; border: 1px solid #e1e1e1;
    	border-radius: 25px;padding-left: 0;}
    </style>
</head>
<body>
<div class="content" id="page2">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${path2 }/">Home</a></li>
        <li class="breadcrumb-item"><a href="#">이용요금 안내</a></li>
        <li class="breadcrumb-item active" aria-current="page">연간이용권</li>
    </ol>
</nav>
    <h1>연간이용권</h1>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
	  <label class="btn btn-secondary">
	    <input value="${path1 }/charge/yearInfo.jsp#page1" type="radio" name="options" id="option1" class="sel"> 권종별 기본가격
	  </label>
	  <label class="btn btn-secondary active">
	    <input value="${path1 }/GetYearListCtrl.do" type="radio" name="options" id="option2" class="sel" checked> 할인정보
	  </label>
	  <label class="btn btn-secondary">
	    <input value="${path1 }/charge/yearInfo.jsp#page3" type="radio" name="options" id="option3" class="sel"> 특별혜택
	  </label>
	</div>
    <section class="page">
    	<div class="page_wrap">
			<div class="con_wrap">
			<h2 class="sub_tit">${dto.title }</h2>
			    <table class="table">
					<thead>
						<tr>
						    <th scope="col" colspan="2">구분</th>
						    <th scope="col">정상가</th>
						    <th scope="col">우대가</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">레드권</th>
							<td></td>
							<td>300,000원</td>
							<td>${dto.ydisA }원</td>
						</tr>
						<tr>
							<th scope="row" rowspan="4">블루권</th>
							<td>어른</td>
							<td>250,000원</td>
							<td>${dto.ydisB }원</td>
						</tr>
						<tr>
							<td>어린이</td>
							<td>180,000원</td>
							<td>${dto.ydisC }원</td>
						</tr>
						<tr>
							<td>시니어</td>
							<td>170,000원</td>
							<td>${dto.ydisD }원</td>
						</tr>
						<tr>
							<td>유아</td>
							<td>110,000원</td>
							<td>${dto.ydisE }원</td>
						</tr>
					</tbody>
				</table>
				<ul class="roundDiv">
					<li>
						<p>기간</p>
						<p>${dto.period }</p>
					</li>
					<li>
						<p>대상</p>
						<p>${dto.target }</p>
					</li>
					<li>
						<p>이용방법</p>
						<p>${dto.caution }</p>
					</li>
				</ul>
				<div class="buttons">
					<a href="${path1 }/GetYearListCtrl.do" class="button is-info">목록</a>
				  <!--	<c:if test='${sid.equals("admin") }'>	-->
				  	<a href="${path1 }/DeleteYearCtrl.do?no=${dto.no }" class="button is-danger">삭제</a>
			  		<a href="${path1 }/ModifyYearCtrl.do?no=${dto.no }" class="button is-warning">수정</a>
				  <!--	</c:if>	-->
				</div>
			</div>
		</div>
	</section>
</div>
<footer>

</footer>
</body>
</html>