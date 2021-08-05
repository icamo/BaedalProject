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
<body>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div class="container">
			<div class="review">
				<div class="inner">
					<div class="content">
						<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp" %>
						<div class="rightInfo">
							<div class="table_wrap">
								<div class="inner">
									<h2 class="tit">등록한 리뷰 자세히보기</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>