<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<!-- 우측메뉴 -->
				<div class="right_cont">
					<div class="right_inner">
						<h2 class="tit">사장 fnq리스트페이지입니다.</h2>
						<form action="shopFnqForm">
							<table>
								<colgroup>
									<col style="width:50%;"/>
									<col style="width:50%;"/>
								</colgroup>
								<thead>
									<tr>
										<th>글번호</th>
										<th>제목</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lists }" var="dto">
										<tr>
											<td align="center">${dto.noticeNum }</td>
											<td align="center"><a href="shopFnqDetail?noticeNum=${dto.noticeNum }">${dto.noticeSub }</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="button" value="글등록" onclick="javascript:location.href='shopFnqForm'" class="cus_input"/>
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
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>