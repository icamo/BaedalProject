<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp"%>
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
					<!-- 우측컨텐츠 -->
					<div class="right_cont">
						<p>입점업체 리스트입니다.</p>
						<table>
							<thead>
								<tr>
									<th>업체번호</th>
									<th>업체명</th>
									<th>처리상태</th>
									<th>상세보기</th>
								</tr>
								<c:forEach items="${shopList }" var="dto">
								<tr>
									<td align="center">${dto.comId }</td>
									<td align="center">${dto.comName }</td>
									<td align="center">
										<c:if test="${empty dto.comAppr }">미승인</c:if>
										<c:if test="${not empty dto.comAppr }"><fmt:formatDate value="${dto.comAppr}" pattern="yyyy-MM-dd hh:mm" /></c:if>											
									</td>
									<td align="center"><a href="shopDetail?comId=${dto.comId }">상세보기</a></td>
								</tr>
								</c:forEach>
							</thead>
							<tbody>
								
							</tbody>
						</table>
					</div>
					<!-- //우측컨텐츠  -->
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