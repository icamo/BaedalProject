<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body>
<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
	<table>
		<caption>실시간 주문</caption>
		<tr>
			<td>주문번호</td>
			<td>${dto.orderNum }</td>
		</tr>
		<tr>
			<td>주문일시</td>
			<td><fmt:formatDate value="${dto.orderDate }" type="date"
					pattern="MM/dd hh시mm분" /></td>
		</tr>
		<tr>
			<td>결제방법</td>
			<td><c:if test="${dto.methodsPayment eq 'cash' }">현금</c:if> <c:if
					test="${dto.methodsPayment eq 'card' }">카드</c:if></td>
		</tr>
		<tr>
			<td>추문접수여부</td>
			<td><select id="orderResult">
					<option>주문접수</option>
					<option>주문거절</option>
			</select></td>
		</tr>
		<tr>
			<td>예상소요시간</td>
			<td><select id="orderSituation">
					<optgroup label="예상 소요시간을 선택해주세요">
						<option>약 10분 이내 도착예정입니다.</option>
						<option>약 20분 이내 도착예정입니다.</option>
						<option>약 30분 이내 도착예정입니다.</option>
						<option>약 40분 이내 도착예정입니다.</option>
						<option>약 50분 이내 도착예정입니다.</option>
						<option>약 1시간 이내 도착예정입니다.</option>
						<option>약 1시간 30분 이내 도착예정입니다.</option>
						<option>약 2시간 이내 도착예정입니다.</option>
			</select></td>
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
			<td><c:forEach items="${menuLists }" var="menuList">
					${menuList.menuName }, ${menuList.menuPrice }원, ${menuList.menuCount } 개 </br>
				</c:forEach></td>
		</tr>
		<c:if test="${dto.methodsPayment eq 'card' }">
			<tr>
				<td>할부개월</td>
				<td><c:if test="${dto.instalment eq 0 }">일시불</c:if> <c:if
					test="${dto.instalment ne 0 }">${dto.instalment } 개월</c:if></td>
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
	</table>
	<button type="button" onclick="orderConfirm('orderResult','orderSituation','${dto.orderNum }')">접수상태변경</button>
</body>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>

function orderConfirm(orderResult, orderSituation, orderNum) {
	$.ajax({
		url: "orderConfirm",
		type: "get",
		dataType: "html",
		data: {
			"orderResult" : $("#orderResult").val(),
			"orderSituation" : $("#orderSituation").val(),
			"orderNum" : orderNum 
		},
		success: function(result){
			alert('상태가변경되었습니다.');
			opener.location.reload();
			window.close();
		},
		error: function(){
			alert("접수여부를 선택하세요.")
		}
	});
}

</script>
</html>