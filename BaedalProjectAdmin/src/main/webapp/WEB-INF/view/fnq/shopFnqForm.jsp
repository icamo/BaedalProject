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
			
				<!-- 내용 -->
				<div class="content">
					<div class="inner">
						<!-- 좌측메뉴 -->
						<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
						<!-- //좌측메뉴 -->
						<div class="right_cont">
							<form action="#">
								<table>
									<tbody>
										<tr>
											<th>제목</th>
											<td>
												<input type="text"/>
											</td>
										</tr>
										<tr>
											<th>내용</th>
											<td>
												<textarea rows="20" cols="70" name=""></textarea>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<input type="submit" value="등록" />
												<input type="button" value="취소" onclick="javascript:history.back()"/>
											</td>
										</tr>
									</tbody>						
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
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>