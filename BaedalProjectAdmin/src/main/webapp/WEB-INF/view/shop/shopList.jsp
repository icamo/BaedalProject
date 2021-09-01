<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
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
						<div class="right_inner">
							<h2 class="tit">입점업체 리스트입니다.</h2>
							<table>
								<colgroup>
									<col style="width:25%;"/>
									<col style="width:25%;"/>
									<col style="width:25%;"/>
									<col style="width:25%;"/>
								</colgroup>
								<thead>
									<tr>
										<th>업체번호</th>
										<th>업체명</th>
										<th>처리상태</th>
										<th>상세보기</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${shopList }" var="dto">
										<tr>
											<td>${dto.comId }</td>
											<td>${dto.comName }</td>
											<td>
												<c:if test="${empty dto.comAppr }">미승인</c:if>
												<c:if test="${not empty dto.comAppr }"><fmt:formatDate value="${dto.comAppr}" pattern="yyyy-MM-dd hh:mm" /></c:if>											
											</td>
											<td><a href="shopDetail?comId=${dto.comId }">상세보기</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
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