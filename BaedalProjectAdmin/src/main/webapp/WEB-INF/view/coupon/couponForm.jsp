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
					<!-- //좌측메뉴  -->
					<div class="right_cont">
						<p>쿠폰등록폼입니다.</p>
						<form action="#">
							<table>
								<colgroup>
									<col style="width:50%"/>
									<col style="width:50%"/>
								</colgroup>
								<tbody>
									<tr>
										<th>쿠폰번호</th>
										<td></td>
									</tr>
									<tr>
										<th>카테고리</th>
										<td></td>
									</tr>
									<tr>
										<th>쿠폰이름</th>
										<td></td>
									</tr>
									<tr>
										<th>발급범위</th>
										<td></td>
									</tr>
									<tr>
										<th>설명</th>
										<td></td>
									</tr>
									<tr>
										<th>할인금액</th>
										<td></td>
									</tr>
									<tr>
										<th>유효기간</th>
										<td></td>
									</tr>	
									<tr>
										<td colspan="2">
											<input type="submit" value="등록"/>
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