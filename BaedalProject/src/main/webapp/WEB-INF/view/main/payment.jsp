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




</head>
<body class="myAddr sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/payheader.jsp"%>
		<div id="container">
			<div class="content">

						<div class="inner">
							<h2 class="tit">결제</h2>
							<form>
								<table>																
										<tr>
											<th>주문자 배송지${dto.orderAddress }</th>
											<td><input type="text" name="memAddr" value="${dto.orderAddress }" style="width:300px;"/></td>
											<td><input type="button" value="목록"/></td>
										</tr>
										<tr>
											<th>핸드폰번호 : </th>
											<td>${dto.memPhone }</td>
										</tr>
											<table align="center" border="1">
											
											<tr>
												<td>메뉴이름</td>
												<td>메뉴가격</td>
												<td>메뉴수량</td>
											</tr>
											</table>
										<c:forEach items="${basketlist }" var="dto" varStatus="cnt">
											<table align="center">
												<tr>
													<td>
														<table border="1">
															<tr>
																<td>${dto.menuName }</td>
																<td>${dto.menuPrice } 원</td>
																<td>${dto.menuCount } 개</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
													<c:set var="totalsum" value="${totalsum + dto.totalPrice }"/>
										</c:forEach>
								</table>
							</form>
							<p>주문요청사항</p>
							<input type ="text" name="usetorderRequset" value="${dto.orderRequset }" style="width:500px; height:100px;"/>
							<p>결제 방식 : 
							<select name = "paymentOp">
								<option value="cash">현금</option>
								<option value="card">카드</option>
							</select>
							
							
							<p style="float:right"/> 기본 배달료 : ${deliveryPay }원 <br/> 메뉴 금액 : ${totalsum }원	
							<p class="tit"/>
							<input type = "submit" value="${totalsum + deliveryPay}원 결제하기">
					</div>
			</div>
		</div>
	</div>
</body>
</html>