<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function titleDel(menuTitleNum){
	if(confirm('정말 삭제하시겠습니까?')){
		location.href='titleDel?menuTitleNum='+menuTitleNum;
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
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<span>메뉴리스트입니다.</span>
						메뉴타이틀
						<form action="">
							<table>
								<thead>
									<tr>
										<th>메뉴타이틀</th>
										<th>상세보기</th>
										<th>수정/삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lists}" var="dto">
										<tr>
											<td align="center">${dto.menuTitleName }</td>
											<td align="center">
												<input type="button" value="상세메뉴" onclick="javascript:location='detailMenuList?menuTitleNum=${dto.menuTitleNum}'"/>
											<td align="center">
												<input type="button" value="수정"	 onclick="javascript:location='titleModify?menuTitleNum=${dto.menuTitleNum}'"/>
												<input type="button" value="삭제"	 onclick="return titleDel('${dto.menuTitleNum}')"/>
												</td>
										</tr>										
									</c:forEach>
								</tbody>
							</table>
							<input type="button" value="타이틀등록" onclick="javascript:location.href='menuTitleResist'"/>
						</form>
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>