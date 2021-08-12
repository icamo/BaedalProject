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
					<!-- 우측 메뉴 -->
					<div class="right_cont">
						<p>
							추천업체 리스트입니다.
						</p>
						<table>
							<thead>
								<tr>
									<th>신청일</th>
									<th>업체번호</th>
									<th>처리상태</th>
									<th>상세보기</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td align="center"><fmt:formatDate value="${dto.reqDate}" pattern="yyyy-MM-dd" /></td>	
										<td align="center">${dto.comId }</td>	
										<td align="center">
										<c:if test="${empty dto.apprv }">미승인</c:if>
										<c:if test="${not empty dto.apprv }"><fmt:formatDate value="${dto.apprv}" pattern="yyyy-MM-dd" /></c:if>
										</td>	
										<td align="center"><a href="recommandDetail?recNum=${dto.recNum }&comId=${dto.comId}">상세보기</a></td>	
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- //우측 메뉴 -->
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
</body>
</html>