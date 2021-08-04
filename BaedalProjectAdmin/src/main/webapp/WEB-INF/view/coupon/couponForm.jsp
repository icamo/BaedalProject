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
				쿠폰등록폼입니다.
				<div>
					<form>
						<table border="1">
							<colgroup>
									<col style="width:30%;"/>
									<col style="width:70%;"/>
								</colgroup>
							<tr><th width="100">쿠폰번호</th><td></td></tr>
							<tr><th>카테고리</th><td></td></tr>
							<tr><th>쿠폰이름</th><td></td></tr>
							<tr><th>발급범위</th><td></td></tr>
							<tr><th>설명</th><td></td></tr>
							<tr><th>할인금액</th><td></td></tr>
							<tr><th>유효기간</th><td></td></tr>	
							<tr><td colspan="2"><input type="submit" value="등록"/>
								<input type="button" value="취소" onclick="javascript:history.back()"/></td></tr>													
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