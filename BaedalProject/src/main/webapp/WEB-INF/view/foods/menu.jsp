<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
	<c:forEach items="${menu }" var="menu">
		<tr>
			<td onclick="menuChoice('${menu.menuId}')">${menu.menuName }</td>
			<td rowspan="2">				
				<img src="<%=request.getContextPath() %>/../BaedalProjectCEO/myShop/menuImg/${menu.menuImg }" />
			</td>
		</tr>
		<tr onclick="menuChoice('${menu.menuId}')">
			<td>${menu.menuPrice } 원</td>
		</tr>
	</c:forEach>
</table>