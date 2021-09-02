<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>

</script>
</head>
<body class="foodsReview sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="review">
				<div class="content">
					<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
					<div class="rightInfo">
						<div class="table_wrap">
							<h2 class="tit">나의 리뷰 확인</h2>
							<c:forEach items="${ReviewList }" var="ReviewList" varStatus="cnt">	
							<a onclick="window.open('myReviewDetail?orderNum=${ReviewList.orderNum }','디테일',
							'width=600, height=600')">
							<table border="1">
								<p>업체명 : ${ReviewList.comName }
								<tr>
									<td>${dto.comImg }업체사진</td>
									<td>주문번호 : ${ReviewList.orderNum }</td>
									<td>별점 : ${ReviewList.reviewStar }점</td>
								</tr>
							</table>
							<br/>
							</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>