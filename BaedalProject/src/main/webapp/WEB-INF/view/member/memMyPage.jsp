<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<style>
.leftMypage {
	height: 980px;
}
</style>
</head>
<body class="myPageMain sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
				<div class="rightInfo">
					<h2 class="right_tit">마이페이지</h2>
					<div class="rightContet">
						<h3>$$$회원님의 등급은 $$$입니다.</h3>
						<div class="event_area">
							<h3 class="eventTit">현재 진행중인 이벤트</h3>
							<ul>
								<li><img
									src="/BaedalProject/resources/asset/image/member/eventImg1.png"
									alt="" /></li>
								<li><img
									src="/BaedalProject/resources/asset/image/member/eventImg2.png"
									alt="" /></li>
								<li><img
									src="/BaedalProject/resources/asset/image/member/eventImg3.jpg"
									alt="" /></li>
							</ul>
						</div>
						<div class="notice_area">123</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>