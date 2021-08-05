<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	
</script>
</head>
<body class="goodsCartList">
<div id="skipNavi">
	<a href="#header">헤더 바로가기</a>
	<a href="#container">컨텐츠 바로가기</a>
</div>
<div id="wrap">
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div id="container">
		<div class="content">
			<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp" %>
			<div class="rightInfo">
				<div class="table_wrap">
					<div class="inner">
						<h2 class="tit">주문내역</h2>
						
					</div>
				</div>
			</div>	
		</div>
	</div>
	<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
</div>
</body>
</html>