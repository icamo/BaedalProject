<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function delCon(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href='eventDel?eventNum=${dto.eventNum}'
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
				<div class='right_cont'>
					<p>이벤트 상세페이지</p>
						<table>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<th>이벤트 이름</th>
								<td>${dto.eventName }</td>
							</tr>
							<tr>
								<th colspan="2">이미지첨부</th>
							</tr>
							<tr>
								<td colspan="2" align="center"><img src="../resources/events/${dto.eventImg }"/></td>
							</tr>
							<tr>
								<td colspan="2">
								</td>
							</tr>
						</table>
									<input type="button" value="뒤로" onclick="javascript:history.back()">
									<input type="button" value="삭제" onclick="return delCon()">
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