<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
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
					<div class="right_inner">
						<h2 class="tit">이벤트 자세히보기</h2>
						<table>
							<tbody>
								<tr>
									<th>이벤트 이름</th>
									<td>${dto.eventName }</td>
								</tr>
								<tr>
									<th>이미지첨부</th>
									<td>
										<img src="../resources/asset/image/event/${dto.eventImg}"/>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="last">
										<input type="button" value="뒤로" onclick="javascript:history.back()" class="cus_input">
										<input type="button" value="삭제" onclick="return delCon()" class="cus_input">
									</td>	
								</tr>
							</tbody>
						</table>
					</div>
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