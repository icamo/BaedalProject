<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function leaveCon(){
	if(confirm("정말 탈퇴하시겠습니까?")){
		return true;
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
				<form action="adminLeaveCon" method="post" name="frm">
						<table>
								<tr>
									<td colspan="2">&nbsp;</td>
								</tr>
								<tr>
									<th>현재 비밀번호</th>
									<td>
										<input type="password" name="adminPw"/><span>${pwFail }</span>
									</td>
								</tr>
								<tr align="center">
									<td colspan="2">
										<input type="submit" value="탈퇴하기" onclick="return leaveCon()"/>&nbsp;&nbsp;
										<input type="button" value="취소" onclick="javascript:history.back()" />
									</td>
								</tr>
						</table>
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