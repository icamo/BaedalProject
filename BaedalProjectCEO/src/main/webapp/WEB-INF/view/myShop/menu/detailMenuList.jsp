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
						<span>상세메뉴리스트</span>
						${dto.menuTitleName }
							<table>
								<thead>
									<tr>
										<th>메뉴번호</th>
										<th>메뉴명</th>
										<th>메뉴가격</th>
										<th>메뉴이미지</th>
										<th>판매여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lists }" var="dto">
										<tr>
											<td>${dto.menuId }</td>
											<td>${dto.menuName }</td>
											<td>${dto.menuPrice }</td>
											<td>${dto.menuImg }</td>
											<td>
												<c:if test="${dto.sell=='N' }">
													<input type="button" value="판매시작" onclick="javascript:location.href='menuSell?menuId=${dto.menuId}'"/>
												</c:if>
												<c:if test="${dto.sell=='Y' }">
													<input type="button" value="판매중단" onclick="javascript:location.href='menuSell?menuId=${dto.menuId}'"/>
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="button" value="메뉴등록" onclick="javascript:location.href='detailMenuResist?menuTitleNum=${dto.menuTitleNum}'"/>
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