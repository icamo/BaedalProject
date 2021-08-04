<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/common.css" />
<style>
	table{border:1px solid #000;}
</style>
</head>
<body>
	<table style="width:800px">
		<thead>
			<tr>
				<th>주문일(결제번호)</th>
				<th>상품명/주문번호</th>
				<th>판매자</th>
				<th>주문상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.purchaseDate} / ${dto.paymentApprNum}</td>
					<td rowspan="2">
						<img style="width:50px;" src="goods/upload/${dto.prodImage.split(',')[0] }" />${dto.prodName } / ${dto.purchaseNum }
					</td>
					<td rowspan="2">${dto.prodSupplyer}</td>
					<td rowspan="2">
						<c:if test="${dto.paymentApprNum == null}">
							<a href="">결제하기</a>
						</c:if>
					   <c:if test="${dto.paymentApprNum != null}">
					   	      결제완료<br />
						   <c:if test="${dto.reviewContent == null }">
						   		<a href="">리뷰작성</a>
						   </c:if>		
						   <c:if test="${dto.reviewContent != null }">
						   		<a href="">리뷰수정</a>
						   </c:if>				  
					   </c:if>
					</td>
				</tr>	
				<tr>
					<td>결제금액 : ${dto.purchaseTotPrice}</td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
</body>
</html>