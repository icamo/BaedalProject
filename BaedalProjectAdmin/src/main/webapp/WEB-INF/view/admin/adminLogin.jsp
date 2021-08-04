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
				<div class="inner">
					<h2 class="tit">로그인해주세요.</h2>
					<div class="table_wrap">
						<!-- 로그인 테이블 -->
						<form action="#">
							<table>
								<caption>로그인해주세요.</caption>
								<colgroup>
									<col style="width:50%" />
									<col style="width:auto"/>
								</colgroup>
								<tbody>
									<tr>
										<th>아이디</th>
										<td>
											<input type="text" />
										</td>
									</tr>
									<tr>
										<th>
											비밀번호
										</th>
										<td>
											<input type="password" />
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
						</form>
					</div>
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