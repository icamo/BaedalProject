<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
</head>
<body>
<div id="skipNavi">
	<a href="#header">헤더 바로가기</a>
	<a href="#container">컨텐츠 바로가기</a>
</div>
<div id="wrap">
	<!-- 헤더 -->
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div id="container">
		<!-- 로그인-->	
		 <!-- //로그인 -->	
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- 우측내용  -->
				<div class="right_cont">
					<p>
						좌측 메뉴를 클릭하면 페이지 이동이 가능합니다.
					</p>
				</div>
			</div>
		</div>
		<!-- 내용 -->
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>