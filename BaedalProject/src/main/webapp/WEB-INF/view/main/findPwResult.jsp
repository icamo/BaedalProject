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
	<c:if test="${memEmail == null }">
		등록된 회원이 아닙니다.
	</c:if>
	<c:if test="${memEmail == 'passEmail' }">
		 입력하신 이메일주소로 임시비밀번호를 전송했습니다.	
	</c:if>
	<c:if test="${memEmail == 'errEmail' }">
		 이메일이 일치하지 않습니다.	
	</c:if>
</body>
</html>