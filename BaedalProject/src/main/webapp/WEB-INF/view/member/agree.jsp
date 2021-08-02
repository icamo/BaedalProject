<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<!-- js -->
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
<style>
	
</style>
</head>
<body class="agree">
<div id="wrap">
	<div class="wrap_inner">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="container_inner">
				<div class="content">
					<div class="inner">
						<h2 class="tit">회원가입</h2>
						<form action="memRegist" method="post">
							<label for="agr">
								<input type="checkbox" required="required" id="agr" name="agree" class="chkbox"/>동의 <br />
								<input type="submit" value="다음" />
							</label>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>