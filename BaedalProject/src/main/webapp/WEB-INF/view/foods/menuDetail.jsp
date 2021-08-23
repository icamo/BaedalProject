<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	$("#menuForm").submit(function() {
		alert('버튼성공');
		
		<%-- var uid = '<%=(String)session.getAttribute("authInfo")%>';
		if(uid=="null"){ 
            alert("로그인 필요");
         }
         else{
            location.replace("main/main");
         } --%>

		});
	
	function addCart(){		
		var id = '<%=(String)session.getAttribute("userId")%>';
		if(id == 'null'){
			alert("로그인이 필요한 서비스입니다.");
			window.close();
		} else{
			alert("장바구니에 추가되었습니다.");
			window.close();
		}
	
		
	}
</script>
</head>
<body>
<form:form id="menuForm" method="post" modelAttribute="menuCommand">
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
<input type="hidden" name="comId" value="${dto.comId }">
<input type="hidden" name="menuId" value="${dto.menuId }">
<input type="hidden" name="menuPrice" value="${dto.menuPrice }">
<input type="submit" value="주문표에 추가" formaction="addCart" onclick="addCart()"><input type="submit" value="주문하기" formaction="order">
</form:form>
</body>
</html>