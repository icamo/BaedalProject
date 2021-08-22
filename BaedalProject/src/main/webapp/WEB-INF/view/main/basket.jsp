<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />


<script>

	function del_event(){
			 alert('삭제되었습니다.');
	}
	
</script>

</head>
<body class="myAddr sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">

						<div class="inner">
							<h2 class="tit">나의 장바구니</h2>
			<c:forEach items="${basketlist }" var="dto" varStatus="cnt">
				<table align="center">
					<tr>
						<td>
							<table border="1">
								<tr>
									<td>메뉴사진 ${dto.menuImg }</td>
									<td>메뉴이름 : ${dto.menuName }</td>
									<td>메뉴가격 : ${dto.menuPrice }</td>
									<td>메뉴수량 : ${dto.menuCount }개</td>
									<td>총금액 : ${dto.totalPrice }원</td>
									<td>
									<a href="basketDel?basketNum=${dto.basketNum }">
									<input type="button" value="삭제" onclick="del_event()"/>
									</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>

		</c:forEach>
			</div>
							<p class="tit">
				</div>
					<div style="width:100px; float:right">
						
						<input type= "submit" value="주문" onclick="window.open('payment','window_name','width=500,height=800')"/>
					
					</div>		 
			</div>
	</div>
</body>
</html>