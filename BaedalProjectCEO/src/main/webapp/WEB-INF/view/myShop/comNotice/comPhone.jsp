<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="myShopInfo">
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
						<h2 class="tit">내 가게 전화번호 등록</h2>
						<form:form action="comPhoneChange" method="post" name="frm" modelAttribute="companyCommand">
						<input type="hidden" name="comId" value="${comId}"/>
							<table>
								<caption>전화번호 등록</caption>
								<thead>
									<tr>
										<th>전화번호 등록</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<input type="text" name="comPhone" />
										</td>
									</tr>
									<tr>
										<td class="last" colspan="2">
											<input type="submit" value="등록하기"/>
										</td>
									</tr>
								</tbody>
							</table>
						</form:form>
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