<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	.content{margin-bottom:0;}
</style>
</head>
<body class="wishStore sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp" %>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div class="container">
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp" %>
				<div class="rightInfo">
					<div class="table_wrap">
						<h2 class="tit">찜한매장</h2>
						123123
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>