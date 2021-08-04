<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div id="middle">
		<!-- 좌측메뉴 -->
		<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
		<!-- 좌측메뉴 -->
		
		<!-- 내용 -->
		<div id="content">
			<div>
				<div>
				사장님 공지사항 관리 페이지입니다.
				<table>
				<tr><th>글번호</th><th>등록날짜</th><th>제목</th></tr>
				</table>
				<input type="button" value="글등록" onclick="javascript:location.href='announceShopForm'"/>
				</div>
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>