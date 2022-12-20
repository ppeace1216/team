<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
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
<div class="content">
    <div class="container">
      <h1 class="title">글 수정하기</h1>
      	<form action="${path1 }/ModifyYearProCtrl.do" method="post">
			<table class="table">
			   <tbody>
			   	<tr>
			      <th><label for="no">번호</label></th>
			      <td><input type="text" name="no" id="no" value="${dto.no }" readonly /></td>
			    </tr>
			    <tr>
			      <th><label for="title">제목</label></th>
			      <td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" value="${dto.title }" required /></td>
			    </tr>
			    <tr>
			      <th><label for="ydisA">할인가:레드권</label></th>
			      <td><input type="text" class="input" maxlength="120" name="ydisA" id="ydisA" value="${dto.ydisA }" required /></td>
			    </tr>	
			    <tr>
			      <th><label for="ydisB">할인가:블루권/어른</label></th>
			      <td><input type="text" class="input" maxlength="120" name="ydisB" id="ydisB" value="${dto.ydisB }" required /></td>
			    </tr>	
			    <tr>
			      <th><label for="ydisC">할인가:블루권/어린이</label></th>
			      <td><input type="text" class="input" maxlength="120" name="ydisC" id="ydisC" value="${dto.ydisC }" required /></td>
			    </tr>	
			    <tr>
			      <th><label for="ydisD">할인가:블루권/시니어</label></th>
			      <td><input type="text" class="input" maxlength="120" name="ydisD" id="ydisD" value="${dto.ydisD }" required /></td>
			    </tr>
			    <tr>
			      <th><label for="ydisE">할인가:블루권/유아</label></th>
			      <td><input type="text" class="input" maxlength="120" name="ydisE" id="ydisE" value="${dto.ydisE }" required /></td>
			    </tr>
			    <tr>
			      <th><label for="period">기간</label></th>
			      <td><input type="text" class="input" maxlength="120" name="period" id="period" value="${dto.period }" required /></td>
			    </tr>
			    <tr>
			      <th><label for="target">대상</label></th>
			      <td><input type="text" class="input" maxlength="120" name="target" id="target" value="${dto.target }" required /></td>
			    </tr>
			    <tr>
			      <th><label for="caution">유의사항</label></th>
			      <td><input type="text" class="input" maxlength="120" name="caution" id="caution" value="${dto.caution }" required /></td>
			    </tr>
			  </tbody>
			</table>
			<div class="buttons">
			  <button type="submit" class="button is-success">수정</button>
			  <button type="reset" class="button is-warning">취소</button>
			  <a href="${path1 }/GetYearListCtrl.do" class="button is-info">목록</a>
			</div>
		</form>
    </div>
</div>
<footer>

</footer>
</body>
</html>