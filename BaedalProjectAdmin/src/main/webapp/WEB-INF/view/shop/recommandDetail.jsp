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
function (){
	if(confirm("모두 확인하셨습니까?")){
		location.href="recommandAppr?recNum=${dto.recNum}";
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
						<table>
								<tr>
									<th>추천등록번호</th>
									<td>${dto.recNum }</td>
								</tr>
								<tr>
									<th>업체번호</th>
									<td>${dto.comId }</td>
								</tr>
								<tr>
									<th>업체명</th>
									<td>${dto2.comName }</td>
								</tr>
								<tr>
									<th>신청일</th>
									<td><fmt:formatDate value="${dto.reqDate}" pattern="yyyy-MM-dd" /></td>
								</tr>
								<tr>
									<th>결제여부</th>
									<td>${dto.recPay }</td>
								</tr>
								<tr>
									<th>승인여부</th>
									<td>
										<c:if test="${empty dto.apprv}">미승인</c:if>
										<c:if test="${not empty dto.apprv}"><fmt:formatDate value="${dto.apprv}" pattern="yyyy-MM-dd hh:mm" /></c:if>
									</td>
								</tr>
								<tr>
									<td colspan="2">
									<c:if test="${empty dto.apprv }">
										<input type="button" value="승인" onclick="()" />
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