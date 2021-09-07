<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>
function onClick(){
	
			alert('주문완료되었습니다.');

	}
		
</script>



</head>
<body class="myAddr sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
						<div class="inner">
							<h2 class="tit">결제</h2>
							<form action= "orderInsert" name="orderInsert" method="post">
							<input type="hidden" name="orderNum" id="orderNum" value="${orderNum }">
								<table>		
									<tbody>
										<tr>
											<th>주문 배송지</th>
											<td><input type="text" list= "orderAddress" name="orderAddress">
												<datalist id="orderAddress">
												<c:forEach items="${addrList }" var="dto" >
													<option value="${dto.orderAddress } ">
												</c:forEach>
												</datalist>
											</td>
										</tr>
										<tr>
											<th>핸드폰번호</th>
											<td><input type="text" name="memPhone" value="${Mdto.memPhone}" readonly="readonly"></td>
										</tr>
											<table>
											
											<tr>
												<td>메뉴이름</td>
												<td>메뉴가격</td>
												<td>메뉴수량</td>
											</tr>
											</table>
										<c:forEach items="${cartList }" var="cartList" varStatus="cnt">
											<table align="center">
												<tr>
													<td>
														<table border="1">
															<tr>
																<td><input type="text" name="menuName" value="${cartList.menuName }" readonly="readonly"></td>
																<td><input type="text" name="menuPrice" value="${cartList.menuPrice }" readonly="readonly">원</td>
																<td><input type="text" name="menuCount" value="${cartList.menuCount }" readonly="readonly">개</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
													<c:set var="totalsum" value="${totalsum + cartList.totalPrice }"/>
													<c:set var="menuIds" value="${menuIds += cartList.menuId += ','}"/>
													<c:set var="memId" value="${cartList.memId }"/>
													<c:set var="menuCounts" value="${menuCounts += cartList.menuCount += ',' }"/>
													
										</c:forEach>
									</tbody>													
								</table>
							<p>주문요청사항</p>
							<input type ="text" name="orderRequest" style="width:450px; height:100px;"/>
							<p>결제 방식 : 
							<select name = "methodsPayment">
								<option value="cash">현금</option>
								<option value="card">카드</option>
							</select>
							
							<p style="float:right"/> 기본 배달료 : ${dto.deliveryPay }원 <br/> 메뉴 금액 : ${totalsum }원	
							<p class="tit"/>
							<%Date now = new Date(); %>
							<%SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
							String orderDate = sf.format(now);%>
							<input type="hidden" name="orderDate" id="orderDate" value=<%=orderDate %>>
							<input type="hidden" name="orderResult" id="orderResult" value="주문완료">
							<input type="hidden" name="orderState" id="orderState" value="주문완료">
							<input type="hidden" name="menuIds" id="menuIds" value="${menuIds }">
							<input type="hidden" name="comId" id="comId" value="${dto.comId }">
							<input type="hidden" name="memId" id="memId" value="${memId }">
							<input type="hidden" name="mPrices" id="mPrices" value="${menuPrices }">
							<input type="hidden" name="mCounts" id="mCounts" value="${menuCounts }">
							<input type="hidden" name="totalPrice" id="totalPrice" value="${totalsum + dto.deliveryPay} ">
							<input type = "submit" value="${totalsum + dto.deliveryPay}원 결제하기" onclick="onClick()"/>
							</form>
					</div>
			</div>
		</div>
	</div>
</body>
</html>