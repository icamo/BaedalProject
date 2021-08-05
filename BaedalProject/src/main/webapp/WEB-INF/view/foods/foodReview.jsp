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
<body class="foodsReview">
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div class="container">
			<div class="review">
				<div class="inner">
					<div class="content">
						<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp" %>
						<div class="rightInfo">
							<div class="table_wrap">
								<h2 class="tit">나의 리뷰 확인</h2>
								<!-- todo: 리뷰 작업은 아래에 해주시면 됩니다  -->
								<a href="myReviewDetail">리뷰 자세히(임시용, 작업시 삭제)</a>
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