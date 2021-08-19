<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr><td colspan="2">사장님알림</td></tr>
	<tr>
		<td colspan="2">${dto.comNotice }</td>	
	</tr>
	<tr><td colspan="2">업체정보</td></tr>
	<tr>
		<td>영업시간</td><td>${dto.businessTime }</td>		
	</tr>
	<tr>
		<td>전화번호</td><td>${dto.comPhone }</td>
	</tr>
	<tr>
		<td>주소</td><td>${dto.comAddress }</td>
	</tr>
	<tr><td colspan="2">결제정보</td></tr>
	<tr>
		<td>최소주문금액</td><td>${dto.minPrice }</td>
	</tr>
	<tr>
		<td>결제수단</td><td>	신용카드 , 현금 , 요기서결제</td>
	</tr>
	<tr><td colspan="2">사업자정보</td></tr>
	<tr>
		<td>상호명</td><td>${dto.comName }</td>
	</tr>
	<tr>
		<td>사업자등록번호</td><td>${dto.comNum }</td>
	</tr>
	<tr><td colspan="2">원산지정보</td></tr>
	<tr>
		<td>${dto.origin }</td>	
	</tr>
</table>
</body>
</html>