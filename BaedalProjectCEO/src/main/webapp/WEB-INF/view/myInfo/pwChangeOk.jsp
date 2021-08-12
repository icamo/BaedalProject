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
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<div>
							<form:form action="changePw" name="frm" method="post" id = "frm" 
								modelAttribute="memberCommand">
								현재 비밀번호 : <form:password path="oldPw" />
											<form:errors path="oldPw"/><br />
								변경 비밀번호 : <input type="password" name="ceoPw" />
											<form:errors path="ceoPw"/><br />
								변경 비밀번호 확인:<input type="password" name="ceoPwCon" />
											<form:errors path="ceoPwCon"/><br />
								<input type="submit" value="비밀변호 변경" id="btn"/>
							</form:form>
						</div>
					</div>
				</div>
				<!-- //내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>