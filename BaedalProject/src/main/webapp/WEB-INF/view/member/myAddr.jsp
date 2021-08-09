<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />

</head>
<body class="myAddr sub">
<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp" %>
<div id="wrap">
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div id="container">
		<div class="content">
			<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp" %>
			<div class="rightInfo">
				<div class="table_wrap">
					<div class="inner">
						<h2 class="tit">나의 주소관리</h2>
						테이블 작성공간
					</div>
				</div>
			</div>	
		</div>
	</div>
	<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
</div>
</body>
</html>