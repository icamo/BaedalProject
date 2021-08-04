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

		
		<!-- 내용 -->
		<div id="content">
			<div class="inner-content">
				추천업체 리스트입니다.
				<table border="1">
					<tr><td>신청일</td><td>업체명</td><td>처리상태</td><td>상세보기</td></tr>
				</table>
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>		
	</div>
</body>
</body>
</html>