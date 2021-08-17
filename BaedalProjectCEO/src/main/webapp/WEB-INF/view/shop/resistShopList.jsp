<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="resistShopState">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">입점현황</h2>
						<table>
							<colgroup>
								<col style="width:25%;" />
								<col style="width:25%;" />
								<col style="width:25%;" />
								<col style="width:25%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">신청일</th>
									<th scope="col">업체명</th>
									<th scope="col">진행상태</th>
									<th scope="col">상세보기</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists}" var="dto">
									<tr>
										<th scope="row">
											<fmt:formatDate value="${dto.appDate}" type="date" pattern="yyyy-MM-dd" />
										</th>
										<td>${dto.comName}</td>
										<td>N</td>
										<td>
											<a href="shopInfo?comName=${dto.comName}">상세보기</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="button" value="입점신청" onclick="javascript:location.href='shopResist'"/>
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