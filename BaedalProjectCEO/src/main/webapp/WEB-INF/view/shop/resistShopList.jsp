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
<style>
	.cus_input{width:220px !important; height:50px !important; margin-top:20px; border:1px solid #ccc !important; cursor:pointer;}
</style>
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
										<td>
											 <c:if test="${empty dto.comAppr }">미승인</c:if>
											<c:if test="${not empty dto.comAppr }"><fmt:formatDate value="${dto.comAppr}" pattern="yyyy-MM-dd hh:mm" /></c:if>
										</td>
										<td>
											<a href="shopInfo?comId=${dto.comId}">상세보기</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<input type="button" value="입점신청" class="cus_input" onclick="javascript:location.href='shopResist'"/>
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