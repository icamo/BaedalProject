<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function delConfirm(menuId){
	if(confirm('정말 삭제하시겠습니까?')){
		location.href='menuOut?menuId='+menuId+'&menuTitleNum='+${dto.menuTitleNum};
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
						<span>상세메뉴리스트</span>
						${dto.menuTitleName }
							<table>
								<thead>
									<tr>
										<th>메뉴번호</th>
										<th>메뉴명</th>
										<th>메뉴가격</th>
										<th>메뉴이미지</th>
										<th>판매여부</th>
										<th>옵션</th>
										<th>수정/삭제</th>										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lists }" var="dto">
										<tr>
											<td>${dto.menuId }</td>
											<td>${dto.menuName }</td>
											<td>${dto.menuPrice }</td>
											<td>
												<c:if test="${dto.menuImg != null }">
													<img src="../menuImg/${dto.menuImg }" width="100px"/>
												</c:if>
											</td>
											<td>
												<c:if test="${dto.sell=='N' }">
													<input type="button" value="판매시작" onclick="javascript:location.href='menuSell?menuId=${dto.menuId}'"/>
												</c:if>
												<c:if test="${dto.sell=='Y' }">
													<input type="button" value="판매중단" onclick="javascript:location.href='menuSell?menuId=${dto.menuId}'"/>
												</c:if>
											</td>
											<td>
												<input type="button" value="옵션설정" onclick="javascript:location.href='menuChoiceList?menuId=${dto.menuId}'"/>
											</td>
											<td>
												<input type="button" value="수정" onclick="javascript:location.href='menuModifyForm?menuId=${dto.menuId}'"/>
												<input type="button" value="삭제" onclick="return delConfirm('${dto.menuId }')"/>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="button" value="메뉴등록" onclick="javascript:location.href='detailMenuResist?menuTitleNum=${dto.menuTitleNum}'"/>
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