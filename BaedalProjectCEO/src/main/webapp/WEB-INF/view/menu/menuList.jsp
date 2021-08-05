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
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
		<!-- 좌측메뉴 -->
		<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
		
		
		<!-- 내용 -->
		<div id="content">
			<div class="inner-content">
				<div>
					메뉴리스트입니다.
					<table border="1">
					<tr>
						<th>메뉴이름</th>
						<th>메뉴가격</th>
						<th>메뉴사진</th>
						<th>판매중</th>
						<th>상세보기</th>
					</tr>
					</table>
					<input type="button" value="새로등록" onclick="#"/>
									
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