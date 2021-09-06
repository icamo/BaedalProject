<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>
	
	function onClick(){
		alert("리뷰가 이미 작성되었습니다.");
	}
		
</script>
</head>
<body class="goodsCartList sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
				<div class="rightInfo">
					<div class="table_wrap">
						<div class="inner">
							<h2 class="tit">주문내역</h2>
						<c:forEach items="${orderList }" var="dto" varStatus="cnt">	
						<a href="paymentCk?orderNum=${dto.orderNum }">
						
						<div class="comDetail">
							<table border="1">
								<tr>
									<td>${dto.comImg }업체사진</td>
									<td>
										<ul>
											<li> 업체이름 :  ${dto.comName } </li>
											<c:forEach items="${menuNameList }" var="Mdto">	
											<li> ${Mdto.menuName }</li>
											</c:forEach>
											<li> ${dto.totalPrice }원</li>
										</ul>
									</td>
								</tr>
							</table>
							</a>
							<table border="1">
									<td>
										<c:if test="${empty dto.reviewCheck}">
											<input type="button" value="리뷰작성" onclick="window.open('Review?orderNum=${dto.orderNum }' ,'리뷰','width=780 height=600')">
										</c:if>
										<c:if test="${dto.reviewCheck eq 'Y'}">
											<input type="button" value="작성완료" onclick="onClick()">
										</c:if>
									</td>
							</table>
						</div>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>