<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="orderConfirm" method="post">
		<table>
		<caption>실시간 주문</caption>
			<tr>
				<td>주문번호 </td>
				<td>
					<input type="text" value="${dto.orderNum }" name="orderNum" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td>주문일시</td>
				<td>
					<fmt:formatDate value="${dto.orderDate }" type="date" pattern="MM/dd hh시mm분" />
				</td>
			</tr>
			<tr>
				<td>결제방법</td>
				<td>${dto.methodsPayment }</td>
			</tr>
			<tr>
				<td>추문접수여부</td>
				<td>
					<input type="radio" name="orderResult" value="주문접수" />주문접수
					<input type="radio" name="orderResult" value="주문거절" />주문거절
				</td>
			</tr>
			<tr>
				<td>예상소요시간</td>
				<td>
					<select name="orderSituation">
						<optgroup label="예상 소요시간을 선택해주세요">
							<option>주문거절</option>
							<option>약 10분 이내 도착예정입니다.</option>
							<option>약 20분 이내 도착예정입니다.</option>
							<option>약 30분 이내 도착예정입니다.</option>
							<option>약 40분 이내 도착예정입니다.</option>
							<option>약 50분 이내 도착예정입니다.</option>
							<option>약 1시간 이내 도착예정입니다.</option>
							<option>약 1시간 30분 이내 도착예정입니다.</option>
							<option>약 2시간 이내 도착예정입니다.</option>
					</select> 
				</td>
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
				<td>메뉴명</td>
				<td>${dto.menuName }</td>
			</tr>
			<tr>
				<td>수량</td>
				<td>${dto.menuCount }</td>
			</tr>
			<tr>
				<td>선택메뉴</td>
				<td>${dto.menuChoice }</td>
			</tr>
			<tr>
				<td>주문상태</td>
				<td>${dto.orderState }</td>
			</tr>
			<tr>
				<td>총가격</td>
				<td>${dto.totalPrice }</td>
			</tr>
		</table>
		<input type="submit" value="접수확인"/>
	</form>
</body>
</html>