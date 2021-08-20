<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<c:forEach items="${menu }" var="menu">
	<tr>
		<td onclick="menuChoice('${menu.menuId}')">${menu.menuName }</td>
		<td rowspan="2"><img src="../../../BaedalProjectCEO/WEB-INF/view/resources/menuImg/${menu.menuImg }">[메뉴사진]</td>
	</tr>
	<tr onclick="menuChoice('${menu.menuId}')">
		<td colspan="2">${menu.menuPrice } 원</td>
	</tr>
	<tr>
		<td colspan="2" height="5px"></td>
	</tr>
</c:forEach>
</table>
</body>
</html>