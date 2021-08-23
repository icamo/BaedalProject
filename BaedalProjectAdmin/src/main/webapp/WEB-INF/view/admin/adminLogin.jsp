<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
<style>
	.tit{padding-bottom:50px; margin-bottom:50px; text-align:center; font-size:32px; letter-spacing:-1.5px; border-bottom:1px solid #ccc;}
	.inner{width:800px; margin:0 auto; padding:200px 0 300px;}
	table{border:0;}
</style>
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<h2 class="tit">로그인해주세요.</h2>
				<div class="table_wrap">
					<!-- 로그인 테이블 -->
					<form:form action="/BaedalProjectAdmin/login" method="post" name="frm" modelAttribute="loginCommand">
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
										<form:input path="userId" id="userId" />
										<form:errors path="userId" />
									</td>
								</tr>
								<tr>
									<th>
										<label for="userPw">비밀번호</label>
									</th>
									<td>
										<form:password path="userPw" id="userPw" />
										<form:errors path="userPw" />
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
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>