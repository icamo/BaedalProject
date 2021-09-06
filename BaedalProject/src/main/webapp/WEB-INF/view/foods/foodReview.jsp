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
<style>
	.star_rating {font-size:0; letter-spacing:-4px;}
	.star_rating span {
	    font-size:22px;
	    letter-spacing:0;
	    display:inline-block;
	    margin-left:5px;
	    color:#ccc;
	    text-decoration:none;
	}
	.star_rating span:first-child {margin-left:0;}
	.star_rating span.on {color:#777;}
</style>
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
								<a href="#" onclick="window.open('myReviewDetail?orderNum=${ReviewList.orderNum }','디테일', 'width=850, height=600')">
									<table>
										<tr>
											<th>업체명</th>
											<td>${ReviewList.comName }</td>
										</tr>
										<tr>
											<th>${dto.comImg }업체사진</th>
											<td>1</td>
										</tr>
										<tr>
											<th>주문일자</th>
											<td>${ReviewList.reviewDate }</td>
										</tr>
										<tr>
											<th>별점</th>
											<td>
												<div class="star_rating">
												<c:forEach begin="1" end="${ReviewList.reviewStar }">
												<span class="on">★</span>
												</c:forEach>	
												<c:forEach begin="1" end="${5 - ReviewList.reviewStar }">
												<span class="on">☆</span>
												</c:forEach>
												</div>
											</td>
										</tr>										
									</table>
								</a>
								<br/>
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