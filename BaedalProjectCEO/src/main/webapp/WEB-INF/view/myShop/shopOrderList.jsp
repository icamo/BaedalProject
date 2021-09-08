<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					가게 주문내역 페이지입니다.<br/>
						<form action="orderDateList">
							<input type="date" name = "startDate"> ~ <input type="date" name = "endDate">
							<input type="submit" value="기간별 조회"><br>
							<input type="button" value="완료내역 조회" onclick="javascript:location.href='orderDone'"/>
							<input type="button" value="거절내역 조회" onclick="javascript:location.href='orderReject'"/>
						</form>
						<table>
							<caption>주문내역</caption>
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
												${dto.orderNum }
										</td>
										<td>
											
												<fmt:formatDate value="${dto.orderDate }" type="date" pattern="MM/dd hh시mm분" />

										</td>
										<td>
											
												${dto.totalPrice }
										</td>
										<td>
											
												${dto.orderState }
										</td>
										<td>
											
												<a href="orderDetail?orderNum=${dto.orderNum }">주문보기(클릭)</a>
											
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<tr><td colspan="8">
								<%@ include file="/WEB-INF/view/resources/include/includePage.jsp" %>
						</td></tr>
					</div>
				</div>
				<!-- //내용  -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>