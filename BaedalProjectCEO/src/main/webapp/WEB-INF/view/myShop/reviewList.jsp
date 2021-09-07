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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
</head>
<body>
	<div id="wrap">
		<!-- 헤더  -->
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
		<!-- 좌측메뉴 -->
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<form action="reviewDateList">
							<input type="date" name = "startDate"> ~ <input type="date" name = "endDate"><br/>
							<input type="submit" value="기간별 조회">
							<input type="button" value="미답변 조회" onclick="javascript:location.href='noReplies'"/>
						</form>
						<c:forEach items="${lists }" var="dto">
						<a href="#" onclick="window.open('reviewDetail?orderNum=${dto.orderNum }','디테일', 'width=850, height=600')">
							<table>
								<tr>
									<th>주문번호</th>
									<td>${dto.orderNum }</td>
								</tr>
								<tr>
									<th>리뷰일자</th>
									<td>
										<fmt:formatDate value="${dto.reviewDate }" type="date" pattern="MM월dd일 hh시mm분" />
									</td>
								</tr>
								<tr>
									<th>별점</th>
									<td>
										<div class="star_rating">
										<c:choose>
										<c:when test="${dto.reviewStar eq 1}"><span class="on">★☆☆☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 2}"><span class="on">★★☆☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 3}"><span class="on">★★★☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 4}"><span class="on">★★★★☆</span></c:when>
										<c:when test="${dto.reviewStar eq 5}"><span class="on">★★★★★</span></c:when>
										</c:choose>
										</div>
									</td>
								</tr>
								<tr>
									<th>답변여부</th>
									<td>
										<c:if test="${dto.ceoreplies eq null }">미답변</c:if>
										<c:if test="${dto.ceoreplies ne null }">답변완료</c:if>
									</td>
								</tr>
							</table>
							</a>
							<br/>
						</c:forEach>
					</div>
				</div>
			</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>