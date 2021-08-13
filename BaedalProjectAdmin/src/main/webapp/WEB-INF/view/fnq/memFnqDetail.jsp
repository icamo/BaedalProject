<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function delConfirm(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href='memFnqDel?noticeNum=${dto.noticeNum}';
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
				<!-- //좌측메뉴  -->
				<div class="right_cont">
					<p>회원 F&Q 상세</p>
						<table>
								<tr>
									<th>글번호</th>
									<td>${dto.noticeNum }</td>
								</tr>
								
								<tr>
									<th>제목</th>
									<td>${dto.noticeSub }</td>
								</tr>
								<tr>
									<th colspan="2">내용</th>
								</tr>
								<tr>
									<td colspan="2">${fn:replace(dto.noticeContent, br, "<br />") }</td>
								</tr>
						</table>
						<input type="button" value="수정"/>
						<input type="button" value="삭제" onclick="return delConfirm()"/>
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