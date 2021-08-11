<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">입점 신청</h2>
						<form:form action="/BaedalProjectCEO/shop/shopJoin" method="post" name="frm" modelAttribute="companyCommand">
							<table>
								<caption>입점 신청</caption>
								<colgroup>
									<col style="width:50%"/>
									<col style="width:50%"/>
								</colgroup>
								<tbody>
									<tr>
										<th>대표명</th>
										<td>
											<form:input path="ceoName" />
										</td>
									</tr>
									<tr>
										<th>아이디</th>
										<td>
											<form:input path="ceoId" />
										</td>
									</tr>
									<tr>
										<th>사업자 번호</th>
										<td>
											<form:input path="comNum" />
										</td>
									</tr>
									<tr>
										<th>업체명</th>
										<td>
											<form:input path="comName" />
										</td>
									</tr>
									<tr>
										<th>신청일</th>
										<td>
											<form:input path="appDate" />
										</td>
									</tr>
									<tr>
										<th>홀여부</th>
										<td>
											<form:radiobutton path="comHall" value="Y" /> Y
											<form:radiobutton path="comHall" value="N" /> N
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<input type="submit" value="신청하기" />
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