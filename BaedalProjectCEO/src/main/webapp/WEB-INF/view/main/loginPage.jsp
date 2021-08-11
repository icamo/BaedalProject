<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<style>
	.tit{padding-bottom:50px; margin-bottom:50px; text-align:center; font-size:32px; letter-spacing:-1.5px; border-bottom:1px solid #ccc;}
	.mainLogin .inner{width:1280px; margin:0 auto; padding:200px 0 300px;}
</style>

</head>
<body>
	<div id="skipNavi">
		<a href="#header">헤더 바로가기</a>
		<a href="#container">컨텐츠 바로가기</a>
	</div>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="mainLogin">
				<div class="inner">
					<h2 class="tit">로그인해주세요.</h2>
					<!-- 로그인 안 된 경우  -->
					<c:if test="${empty authInfo}">
						<div class="table_wrap">
						<!-- 로그인 테이블 -->
							<form:form action="/BaedalProjectCEO/ceologin" method="POST" name="frm" class="form" modelAttribute="loginCommand">
								<table>
									<caption>로그인해주세요.</caption>
									<colgroup>
										<col style="width:50%" />
										<col style="width:auto"/>
									</colgroup>
									<tbody>
										<tr>
											<th>
												<label for="userId">아이디</label>
											</th>
											<td>
												<form:input path="userId" id="userId"/>
												<form:errors path="userId"/>
											</td>
										</tr>
										<tr>
											<th>
												<label for="userPw">비밀번호</label>
											</th>
											<td>
												<form:password path="userPw" id="userPw"/>
												<form:errors path="userPw"/>
											</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<div class="checkbox">
													<ul>
														<li>
															<a href="#">아이디</a>
														</li>
														<li>
															<a href="#">비밀번호 찾기</a>
														</li>
													</ul>
												</div>
												<div class="rightLogin">
													<input type="submit" value="로그인" class="r_login"/>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</form:form>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
	</div>
</body>
</html>