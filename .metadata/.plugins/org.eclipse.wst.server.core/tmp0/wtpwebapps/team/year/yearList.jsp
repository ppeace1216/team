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
			<h2 class="sub_tit">다양한 할인 혜택으로 더 저렴한 연간이용권을 이용해보세요!</h2>
			    <table class="table">
					<thead>
						<tr>
						    <th scope="col">번호</th>
						    <th scope="col">할인 정보</th>
						    <th scope="col">할인 기간</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="dto" varStatus="status">
						<tr>
							<th scope="row">${status.count }</th>
							<td><a href="${path1 }/GetYearCtrl.do?no=${dto.no }">${dto.title }</a></td>
							<td>${dto.period }</td>
						</tr>
					</c:forEach>
					<c:if test="${empty list }">
					    <tr>
					    	<td colspan="3">현재 할인 혜택이 없습니다.</td>
					    </tr>
					</c:if>
					</tbody>
				</table>
				<div class="buttons">
				  <!--	<c:if test='${sid.equals("admin") }'>	-->
				  	<a href="${path1 }/year/yearInsert.jsp" class="button is-success">글 등록</a>
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