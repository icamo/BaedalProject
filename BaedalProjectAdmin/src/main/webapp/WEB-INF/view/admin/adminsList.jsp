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
						<h2 class="tit">관리자 계정 리스트</h2>
						<table>
							<caption>가입한 사람 리스트입니다.</caption>
							<colgroup>
								<col style="width:16.6667%"/>
								<col style="width:16.6667%"/>
								<col style="width:16.6667%"/>
								<col style="width:16.6667%"/>
								<col style="width:16.6667%"/>
								<col style="width:16.6667%"/>
							</colgroup>
							<thead>
								<tr>
									<th>사원번호</th>
									<th>아이디</th>
									<th>이메일</th>
									<th>연락처</th>
									<th>부서</th>
									<th>상세</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists }" var="dto">
									<tr>
										<td>${dto.adminNum }</td>
										<td>${dto.adminId }</td>
										<td>${dto.adminEmail }</td>
										<td>${dto.adminContact }</td>
										<td>${dto.adminDept }</td>
										<td><a href="adminDetail?adminNum=${dto.adminNum }">상세보기</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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