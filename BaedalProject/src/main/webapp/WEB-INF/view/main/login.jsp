<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- css  -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<style>
.tit {
	padding-top: 0;
}

.login_form .inner {
	padding: 200px 0;
}

.login_form .table_wrap {
	margin-bottom: 100px;
}
</style>
</head>
<body class="login_main">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="login_form">
				<div class="inner">
					<div class="table_wrap">
						<h2 class="tit">로그인해주세요.</h2>
						<!-- 로그인 테이블 -->
						<form:form action="logIn1" method="post" name="frm" modelAttribute="logInCommand">
							<table>
								<caption>로그인해주세요.</caption>
								<colgroup>
									<col style="width: 50%" />
									<col style="width: auto" />
								</colgroup>
								<tbody>
									<tr>
										<th>아이디</th>
										<td><form:input path="userId"/>
										<form:errors path="userId"/></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><form:password path="userPw"/>
										<form:errors path="userPw"/></td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<div class="checkbox">
												<ul>
													<li><a href="#">아이디</a></li>
													<li><a href="#">비밀번호 찾기</a></li>
												</ul>
											</div>
											<div class="rightLogin">
												<input type="submit" value="로그인" class="r_login" />
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>