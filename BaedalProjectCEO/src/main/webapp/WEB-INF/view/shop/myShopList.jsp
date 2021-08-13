<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						내가게 리스트입니다.
						<table>
						<tr>
							<th scope="col">업체명</th>
							<th scope="col">주소</th>
							<th scope="col">업체카테고리</th>
						</tr>
						<c:forEach items="${lists }" var="dto">
						<tr>
							<td><a href="myShop/shopInfo?ceoId=${dto.comId }">${dto.comName }</a></td>
							<td>${dto.comAddress }</td>
							<td>${dto.menuCategory }</td>
						</tr>
						</c:forEach>
						</table>
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