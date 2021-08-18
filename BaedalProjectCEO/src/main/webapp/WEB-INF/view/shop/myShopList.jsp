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
								<col style="width:25%;" />
								<col style="width:25%;" />
								<col style="width:25%;" />
								<col style="width:25%;" />
							</colgroup>
							<thead>
								<tr>
									<th scope="col">업체명</th>
									<th scope="col">내가게관리</th>
								</tr>
							</thead>
							<tbody>
								
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