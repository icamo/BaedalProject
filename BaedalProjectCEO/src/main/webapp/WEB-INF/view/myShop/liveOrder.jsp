<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<style>
	td{text-align:center;}
</style>
</head>
<body>
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
						<h2 class="tit">실시간 주문 확인하기</h2>
						<table>
							<caption>실시간 주문 현황</caption>
							<colgroup>
								<col style="width:33%;"/>
								<col style="width:33%;"/>
								<col style="width:33%;"/>
							</colgroup>
							<thead>
								<tr>
									<th>메뉴명</th>
									<th>금액</th>
									<th>주문접수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										치킨 외 3종
									</td>
									<td>1</td>
									<td>1</td>
								</tr>
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