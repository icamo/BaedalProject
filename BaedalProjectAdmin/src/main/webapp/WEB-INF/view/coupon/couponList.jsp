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
			<!-- 내용 -->
			<div class="content">
				<div class="inner">
					<!-- 좌측메뉴 -->
					<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
					<!-- 좌측메뉴 -->
					<div class="right_cont">
						<p>쿠폰리스트.</p>
						<form action="">
							<table border="1">
								<colgroup>
									<col style="width:20%" />
									<col style="width:20%"/>
									<col style="width:20%"/>
									<col style="width:20%"/>
									<col style="width:20%"/>
								</colgroup>
								<thead>
									<tr>
										<th>발급날짜</th>
										<th>발급번호</th>
										<th>쿠폰명</th>
										<th>유효기간</th>
										<th>상세보기</th>
									</tr>
								</thead>
								<tbody>
								
								</tbody>	
							</table>
							<input type="button" value="쿠폰 등록" onclick="javascript:location.href='couponForm'"/>
						</form>
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