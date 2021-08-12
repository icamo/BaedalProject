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
				<!-- 우측컨텐츠 -->
				<div class="right_cont">
					<p>이벤트리스트 페이지입니다.</p>
					<form action="eventForm">
						<table>
							<thead>
								<tr>
									<th>등록번호</th>
									<th>이벤트이름</th>
									<th>상세보기</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td align="center">${dto.eventNum }</td>
										<td align="center">${dto.eventName }</td>
										<td align="center">
											<input type="button" value="상세보기" onclick="javascript:location.href='eventDtail?eventNum=${dto.eventNum}'" />
										</td>										
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="submit" value="이벤트 등록" />
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