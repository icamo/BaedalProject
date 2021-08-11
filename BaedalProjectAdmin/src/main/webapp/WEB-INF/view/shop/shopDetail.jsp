<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function shopAppr(){
	if(confirm("모두 확인하셨습니까?")){
		location.href="shopAppr?comId=${dto.comId}";
	}else{
		return false;
	}
}

</script>
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
					<!-- //좌측메뉴 -->
					<!-- 우측컨텐츠 -->
					<div class="right_cont">
						<p>입점업체 리스트입니다.</p>
						<table>
								<tr>
									<th>사장님 아이디</th>
									<td>${dto.ceoId }</td>
								</tr>
								<tr>
									<th>사업자번호</th>
									<td>${dto.comNum }</td>
								</tr>
								<tr>
									<th>업체번호</th>
									<td>${dto.comId }</td>
								</tr>
								<tr>
									<th>사업자대표명</th>
									<td>${dto.ceoName }</td>
								</tr>
								<tr>
									<th>업체명</th>
									<td>${dto.comName }</td>
								</tr>
								<tr>
									<th>업체 사진</th>
									<td>${dto.comImg }</td>
								</tr>
								<tr>
									<th>업체 주소</th>
									<td>${dto.comAddress }</td>
								</tr>
								<tr>
									<th>업종</th>
									<td>${dto.comCategory }</td>
								</tr>
								<tr>
									<th>홀여부</th>
									<td>${dto.comHall }</td>
								</tr>
								<tr>
									<th>배달료</th>
									<td>${dto.deliveryPay }</td>
								</tr>
								<tr>
									<th>최소금액</th>
									<td>${dto.minPrice }</td>
								</tr>
								<tr>
									<th>배달 가능지역</th>
									<td>${dto.deliveryZone }</td>
								</tr>
								<tr>
									<th>승인여부</th>
									<td>
										<c:if test="${empty dto.comAppr}">미승인</c:if>
										<c:if test="${not empty dto.comAppr}"><fmt:formatDate value="${dto.comAppr}" pattern="yyyy-MM-dd hh:mm" /></c:if>
									</td>
								</tr>
								<tr>
									<td colspan="2">
									<c:if test="${empty dto.comAppr }">
										<input type="button" value="승인" onclick="shopAppr()" />
									</c:if>
										<input type="button" value="뒤로" onclick="javascript:history.back()" />
									</td>
								</tr>
						</table>
					</div>
					<!-- //우측컨텐츠  -->
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