<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<style>
	td{text-align:center;}
</style>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">실시간 주문 확인하기</h2>
						<table>
							<caption>실시간 주문 현황</caption>
							<thead>
								<tr>
									<th colspan="5">주문접수전</th>
								</tr>
							</thead>
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문일시</th>
									<th>금액</th>
									<th>접수상태</th>
									<th>주문조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td>
											<c:if test="${dto.orderResult eq '주문완료'}">${dto.orderNum }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '주문완료'}">
												<fmt:formatDate value="${dto.orderDate }" type="date" pattern="mm/dd hh시mm분" />
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '주문완료'}">${dto.totalPrice }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '주문완료'}">${dto.orderResult }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '주문완료'}">
												<a href="orderDetail?orderNum=${dto.orderNum }">주문보기(클릭)</a>
											</c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<table>
							<caption>실시간 주문 현황</caption>
							<thead>
								<tr>
									<th colspan="5">조리중</th>
								</tr>
							</thead>
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문일시</th>
									<th>금액</th>
									<th>접수상태</th>
									<th>주문조회</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td>
											<c:if test="${dto.orderResult eq '조리중'}">${dto.orderNum }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '조리중'}">
												<fmt:formatDate value="${dto.orderDate }" type="date" pattern="mm/dd hh시mm분" />
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '조리중'}">${dto.totalPrice }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '조리중'}">${dto.orderResult }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderResult eq '조리중'}">
											<a href="orderDetail?orderNum=${dto.orderNum }">주문보기(클릭)</a>
											</c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>