<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<table border="1">
	<tr>
		<td>
			${dto.menuImg }[메뉴사진]
		</td>
	</tr>
	<tr>
		<td>
			${dto.menuName }
		</td>
	</tr>
	<tr>
		<td>
			${dto.menuPrice } 원
		</td>
	</tr>
</table>
<input type="submit" value="주문표에 추가" formaction="addCart"><input type="submit" value="주문하기" formaction="order">
</form>
</body>
</html>