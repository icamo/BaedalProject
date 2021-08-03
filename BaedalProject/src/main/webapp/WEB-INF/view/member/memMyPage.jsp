<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<!-- js -->
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</head>
<body class="memMypage">
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div class="container">
			<div class="content">
				<div class="leftMypage">
					<h2 class="left_tit">마이페이지</h2>
					<ul>
						<li>
							<a href="#" >내정보 관리</a>
						</li>
						<li>
							<a href="#">나의 리뷰</a>
						</li>
						<li>
							<a href="/BaedalProject/cart/goodsCartList">주문 내역</a>
						</li>
						<li>
							<a href="OrderProcessList">찜한 매장</a>
						</li>
						<li>
							<a href="#">내주소 관리</a>	
						</li>
						<li>
							<a href="#">고객센터</a>	
						</li>
					</ul>  
				</div>
				<div class="rightInfo">
					<h2 class="right_tit">마이페이지</h2>
					<div class="rightContet">
						<h3>$$$회원님의 등급은 $$$입니다.</h3>
						<div class="event_area">
							<ul>
								<li>
									<img src="../image/member/eventImg1.png" alt="" />
								</li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>