<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="myShopList">
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
						<h2 class="tit">내가게 리스트</h2>
						<table>
							<colgroup>
								<col style="width:50%;" />
								<col style="width:50%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">업체명</th>
									<th scope="col">내가게관리</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${lists}" var="dto">
									<tr>
										<th scope="row">
											${dto.comName }
										</th>
										<td>
											 <c:if test="${empty dto.comAppr }">미승인</c:if>
												<c:if test="${not empty dto.comAppr }">
													<input type="button" value="바로가기" class="cus_input" onclick="javascript:location.href='/BaedalProjectCEO/myShop/main?comId=${dto.comId}'"/>
												</c:if>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
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