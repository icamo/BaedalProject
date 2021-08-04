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
			<div>
				이벤트입력폼입니다.
				<div>
					<form>
						<table>
							<tr><th>이벤트 이름</th><td></td></tr>
							<tr><th>이미지첨부</th><td></td></tr>
							<tr><td colspan="2"><input type="submit" value="등록" />
							<input type="button" value="취소" onclick="javascript:history.back()"></td></tr>
						</table>
					</form>
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