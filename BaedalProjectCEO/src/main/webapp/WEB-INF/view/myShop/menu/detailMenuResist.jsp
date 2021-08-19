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
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<span>메뉴타이틀등록</span>
						<form action="menuResist" method="post" name="frm" enctype="multipart/form-data">
							<input type="hidden" name="menuTitleNum" value="${dto.menuTitleNum }">
							<table>
								<tr>
									<th>메뉴타이틀</th>
									<td>${dto.menuTitleName }</td>
								</tr>
								<tr>
									<th>메뉴명</th>
									<td><input type="text" name="menuName"/></td>
								</tr>
								<tr>
									<th>메뉴가격</th>
									<td><input type="text" name="menuPrice"/></td>
								</tr>
								<tr>
									<th>메뉴설명</th>
									<td><input type="text" name="menuExplain"/></td>
								</tr>
								<tr>
									<th>메뉴이미지</th>
									<td><input type="file" name="menuImg"/></td>
								</tr>
								<tr><td colspan="2"><input type="submit" value="등록"/></tr>
							</table>
						</form>	
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>