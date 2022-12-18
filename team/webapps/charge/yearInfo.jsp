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
    
    .thumb_lst { width:100%; float:left; margin-bottom: -10px; }
    .thumb_lst li { clear:both; border:3px solid #ececec; height: 350px;}
    .thumb_lst li:first-child { border-top:3px solid #ececec; }
    .thumb_lst li a { display:block; }
    .thumb_lst li .img_fr { width: 300px; height: 400px; overflow:hidden; float:left; }
    .thumb_lst li .img_fr img { display:block; width: 100%; height:auto; margin-top:25px; }
    .thumb_lst li .com_fr { padding-left: 30px; float:left; color:#333; margin-top:50px; }
    .thumb_tit { font-weight: 700; font-size: 20px ;line-height: 2.4; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_com { font-weight: 500; line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .thumb_price { line-height: 1.8; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    
    .bene_lst { width:50%; float:left; margin-bottom: 50px; }
    .bene_lst li { clear:both; border:3px solid #ececec; height: 150px;}
    .bene_lst li:first-child { border-top:3px solid #ececec; }
    .bene_lst li a { display:block; }
    .bene_lst li .img_fr { width: 150px; height: 150px; overflow:hidden; float:left; }
    .bene_lst li .img_fr img { display:block; width: 100%; height:auto; 
    margin-top:-28px; }
    .bene_lst li .com_fr { padding-left: 30px; float:left; color:#333; }
    .bene_tit { line-height: 2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .bene_com { line-height:2; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    .bene_price { line-height: 1; text-overflow: ellipsis; overflow: hidden; white-space:nowrap; }
    </style>
</head>
<body>
<div class="content" id="page1">
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${path2 }/">Home</a></li>
        <li class="breadcrumb-item"><a href="#">이용요금 안내</a></li>
        <li class="breadcrumb-item active" aria-current="page">연간이용권</li>
    </ol>
</nav>
    <h1>연간이용권</h1>
    <div class="btn-group btn-group-toggle" data-toggle="buttons">
	  <label class="btn btn-secondary active">
	    <input value="yearInfo.jsp#page1" type="radio" name="options" id="option1" class="sel" checked> 권종별 기본가격
	  </label>
	  <label class="btn btn-secondary">
	    <input value="${path2 }/GetYearListCtrl.do" type="radio" name="options" id="option2" class="sel"> 할인정보
	  </label>
	  <label class="btn btn-secondary">
	    <input value="yearInfo.jsp#page3" type="radio" name="options" id="option3" class="sel"> 특별혜택
	  </label>
	</div>
	<section class="page">
    	<div class="page_wrap">
			<div class="con_wrap">
			<h2 class="sub_tit">연간이용권을 가입해 유효기간 동안 자유롭게 이용하며 특별한 혜택을 누려보세요!</h2>
			    <ul class="thumb_lst">
					<li>
						<div class="img_fr"><img src="${path2 }/data/yearRed.png" alt="레드권 이미지"></div>
						<div class="com_fr">
							<h3 class="thumb_tit">레드권</h3>
							<p class="thumb_com"><strong>전대상 --------- 300,000원</strong></p>
							<p class="thumb_price">- 무료주차 12회/년<br>
								(12회 모두 차감 시 1,000원/시간, 최대 8,000원/일, 주차 키오스크에서 연간이용권 바코드 인식 후 정산 가능)
							</p>
						</div>
					</li>
					<li>
						<div class="img_fr"><img src="${path2 }/data/yearBlue.png" alt="블루권 이미지"></div>
						<div class="com_fr">
							<h3 class="thumb_tit">블루권</h3>
							<p class="thumb_com">
								<strong>어른/청소년(만 13세이상)250,000원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								어린이(48개월 이상 ~ 만 12세 이하)180,000원<br>
								시니어(만 65세 이상)170,000원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								유아(12개월 이상 ~ 만 48개월 미만)110,000원</strong>
							</p>
							<p class="thumb_price">
							- 주차할인 (1,000원/시간, 최대 8,000원/일, 주차 키오스크에서 연간이용권 바코드 인식 후 정산 가능)<br>
							- 재가입 할인 (월별 프로모션에 따라 다름)<br>
							- 유아권 유모차 대여 (6회/년, 손님상담실에서 이용가능)<br>
							- 시니어, 어린이, 유아는 가입 시 증빙 서류를 지참해 주세요.
							</p>
						</div>
					</li>
				</ul>
				<p><strong>
				· 구매처 : 연간이용센터(02-411-4865)<br>
				· 위 치 : 어드벤처 B1F 정문 좌측 50m
				</strong></p>
			</div>
		</div>
	</section>
</div>
<div class="content" id="page3">
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
	    <input value="yearInfo.jsp#page1" type="radio" name="options" id="option1" class="sel"> 권종별 기본가격
	  </label>
	  <label class="btn btn-secondary">
	    <input value="${path2 }/GetYearListCtrl.do" type="radio" name="options" id="option2" class="sel"> 할인정보
	  </label>
	  <label class="btn btn-secondary active">
	    <input value="yearInfo.jsp#page3" type="radio" name="options" id="option3" class="sel" checked> 특별혜택
	  </label>
	</div>
    <section class="page">
    	<div class="page_wrap">
			<div class="con_wrap">
			<h2 class="sub_tit">연간이용고객을 위한 '22년 특별혜택</h2>
				<ul class="bene_lst">
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic1.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명1</h3>
				                <p class="bene_com">제품설명1</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic2.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명2</h3>
				                <p class="bene_com">제품설명2</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic3.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명3</h3>
				                <p class="bene_com">제품설명3</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic4.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명4</h3>
				                <p class="bene_com">제품설명4</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				</ul>
				<ul class="bene_lst">
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic1.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명1</h3>
				                <p class="bene_com">제품설명1</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic9.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명9</h3>
				                <p class="bene_com">제품설명9</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				    <li>
				        <a href="">
				            <div class="img_fr"><img src="./img/pic10.jpg" alt=""></div>
				            <div class="com_fr">
				                <h3 class="bene_tit">제품명10</h3>
				                <p class="bene_com">제품설명10</p>
				                <p class="bene_price">가격 : 30000</p>
				            </div>
				        </a>
				    </li>
				</ul>
			</div>
		</div>
	</section>
</div>
<script>
var sel = document.getElementsByClassName("sel");
for(var i=0;i<sel.length;i++){
    sel[i].addEventListener("change", function(){
        location.href = this.value;
    });
}
</script>
<footer>

</footer>
</body>
</html>