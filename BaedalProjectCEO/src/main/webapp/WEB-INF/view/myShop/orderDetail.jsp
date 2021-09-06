<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="myShopInfo">
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
						<h2 class="tit">주문내역</h2>
							<table>
								<caption>주문 접수</caption>
								<colgroup>
									<col style="width:50%"/>
									<col style="width:50%"/>
								</colgroup>
								<tbody>
								<tr>
									<td>주문번호</td>
									<td>${dto.orderNum }</td>
								</tr> 
								<tr>
									<td>주문일시</td>
									<td><fmt:formatDate value="${dto.orderDate }" type="date" pattern="MM/dd hh시mm분" /></td>
								</tr> 
								<tr>	
									<td>결제방법</td>
									<td>
										<c:if test="${dto.methodsPayment eq 'cash' }">현금</c:if> 
										<c:if test="${dto.methodsPayment eq 'card' }">카드</c:if> 
									</td>
								</tr> 
								<tr>
									<td>주문처리상태</td>
									<td>${dto.orderResult }</td>
								</tr>
								<tr>
									<td>예상소요시간</td>
									<td>${dto.orderSituation }</td>									
								</tr>  
								<tr>
									<td>주문주소</td>
									<td>${dto.orderAddress }</td>
								</tr> 
								<tr>
									<td>요청사항</td>
									<td>${dto.orderRequest }</td>
								</tr>  
								<tr>
									<td>주문메뉴</td>
									<td>
										<c:forEach items="${menuLists }" var="menuList" >
										${menuList.menuName }, ${menuList.menuPrice }원, ${menuList.menuCount } 개 </br>
										</c:forEach>
									</td>
								</tr>
								<c:if test="${dto.methodsPayment eq 'card' }">
								<tr>
									<td>할부개월</td>
									<td>
										<c:if test="${dto.instalment eq 0 }">일시불</c:if>
										<c:if test="${dto.instalment ne 0 }">${dto.instalment } 개월</c:if>
									</td>
								</tr> 
								</c:if>  
								<tr>
									<td>쿠폰</td>
									<td>${dto.coupon }</td>
								</tr> 
								<tr>
									<td>주문상태</td>
									<td>${dto.orderState }</td>
								</tr> 
								<tr>
									<td>회원아이디</td>
									<td>${dto.memId }</td>
								</tr>  
								<tr>
									<td>총가격</td>
									<td>${dto.totalPrice }</td>
								</tr>		
							</tbody>
						</table>
						<button value="이전으로" onclick="javascript:history.back();"></button>
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