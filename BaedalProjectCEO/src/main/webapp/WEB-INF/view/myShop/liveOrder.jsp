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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
									<th colspan="5">조리전</th>
								</tr>
							</thead>
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문일시</th>
									<th>금액</th>
									<th>접수상태</th>
									<th>주문조회</th>
									<th>접수상태변경</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto"  varStatus="status">
									<tr>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">${dto.orderNum }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">
												<fmt:formatDate value="${dto.orderDate }" type="date" pattern="MM월dd일 hh시mm분" />
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">${dto.totalPrice }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">
												<select name="orderState" id="orderState${dto.orderNum }">
													<option>주문완료</option>
													<option>조리중</option>
												</select>
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">
												<a href="orderDetail?orderNum=${dto.orderNum }">주문보기(클릭)</a>
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '주문완료'}">
											<button type="button" onclick="updateState('orderState${dto.orderNum }','${dto.orderNum }')">상태변경</button>
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
									<th>접수상태변경</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">${dto.orderNum }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">
												<fmt:formatDate value="${dto.orderDate }" type="date" pattern="MM월dd일 hh시mm분" />
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">${dto.totalPrice }</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">
												<select name="orderState" id="orderState${dto.orderNum }">
													<option>주문완료</option>
													<option>조리중</option>
													<option>배달완료</option>
												</select>	
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">
											<a href="orderDetail?orderNum=${dto.orderNum }">주문보기(클릭)</a>
											</c:if>
										</td>
										<td>
											<c:if test="${dto.orderState eq '조리중'}">
											<button type="button" onclick="updateState('orderState${dto.orderNum }','${dto.orderNum }')">상태변경</button>
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
	<!-- 
	1. 내가 값을 바꿔주기 위한 주문번호, 상태값을 넘겨줘야한다.
	2. 고유번호가 필요한데, 이건 주문번호로 대체를할수있음
	 -->
	<script>
	function updateState(selectId, orderNum) {
		$.ajax({ㄴㄴ
			url: "liveOverStateUpdate",
			type: "post",
			dataType: "json",
			data: {
				"orderState" : $("#"+selectId).val(), // 셀렉트안에 값을 가져오는 제이쿼리
				"oderNum" : orderNum // 함수에서 넘겨준 주문번호
			},
			success: function(data){

				 location.reload(true);
				 
			},
			error: function (request, status, error){
				
			}
		});
	}
	</script>
</body>
</html>