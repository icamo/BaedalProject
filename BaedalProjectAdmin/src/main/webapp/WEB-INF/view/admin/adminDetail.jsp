<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function adminDel(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href='adminDel?adminNum=${dto.adminNum }';
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
				<!-- 우측메뉴 -->
				<div class="right_cont">
						<table>
								<tr>
									<th>사원번호</th>
									<td>${dto.adminNum }</td>
								</tr>
								<tr>
									<th>아이디</th>
									<td>${dto.adminId }</td>
								</tr>
								<tr>
									<th>이름</th>
									<td>${dto.adminName }</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>${dto.adminEmail }</td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>${dto.adminContact }</td>
								</tr>
								<tr>
									<th>부서</th>
									<td>${dto.adminDept }</td>
								</tr>
								<tr>
									<th>직급</th>
									<td>${dto.adminJob }</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="button" value="삭제" onclick="adminDel()" />
										<input type="button" value="뒤로" onclick="javascript:history.back()" />
									</td>
								</tr>
						</table>
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