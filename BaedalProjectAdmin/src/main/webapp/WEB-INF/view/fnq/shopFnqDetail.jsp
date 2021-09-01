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
function delConfirm(){
	if(confirm("정말 삭제하시겠습니까?")){
		location.href='shopFnqDel?noticeNum=${dto.noticeNum}';
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
						<div class="right_inner">
							<h2 class="tit">회원 F&Q 상세</h2>
							<table>
								<colgroup>
									<col style="width:50%;"/>
									<col style="width:50%;"/>
								</colgroup>
								<tbody>
									<tr>
										<th>글번호</th>
										<td>${dto.noticeNum }</td>
									</tr>
									
									<tr>
										<th>제목</th>
										<td>${dto.noticeSub }</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>${fn:replace(dto.noticeContent, br, "<br />") }</td>
									</tr>
									<tr>
										<td colspan="2" class="last">
											<ul>
												<li><a href="shopFnqCor?noticeNum=${dto.noticeNum}">수정</a></li>
												<li><a href="#" onclick="return delConfirm()">삭제</a></li>
											</ul>	
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