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
	<c:if test="${memId == null }">
		입력된 정보와 일치하는 아이디가 없습니다.
	</c:if>
	<c:if test="${memId != null }">
		 회원님의 아이디는 [${memId }]입니다.	
	</c:if>
</body>
</html>