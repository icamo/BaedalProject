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
			
				쿠폰리스트 페이지입니다.
				<div>
					<table>
						<tr><th>발급날짜</th><th>발급번호</th><th>쿠폰명</th><th>유효기간</th>
						<th>상세보기</th></tr>
					</table>
					<input type="button" value="쿠폰 등록" onclick="javascript:location.href='couponForm'"/>
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