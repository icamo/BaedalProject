<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript">
function check(){
	var menuName = frm.menuName.value;
	var menuPrice = frm.menuPrice.value;
	if(menuName==''){
		alert("메뉴명을 입력하세요");
		frm.menuName.focus();
		return false;
	}else if(menuPrice==''){
		alert("메뉴가격을 입력하세요");
		frm.menuPrice.focus();
		return false;
	}
	else{
		return true;
	}
}
function imgOut(menuId){
	if(confirm('정말 삭제하시겠습니까?')){
		location.href='menuImgOut?menuId='+menuId
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
						<span>메뉴타이틀등록</span>
						<form action="menuModify" method="post" name="frm" onsubmit="return check();" enctype="multipart/form-data">
							<input type="hidden" name="menuTitleNum" value="${dto.menuTitleNum }">
							<table>
								<tr>
									<th>메뉴번호</th>
									<td><input type="text" name="menuId" value="${dto.menuId }" readonly="readonly"/></td>
								</tr>
								<tr>
									<th>메뉴명</th>
									<td><input type="text" name="menuName" value="${dto.menuName }"/></td>
								</tr>
								<tr>
									<th>메뉴가격</th>
									<td><input type="text" name="menuPrice" value="${dto.menuPrice }"/></td>
								</tr>
								<tr>
									<th>메뉴설명</th>
									<td><input type="text" name="menuExplain" value="${dto.menuExplain }"/></td>
								</tr>
								<tr>
									<th>메뉴이미지</th>
									<td>
										<c:if test="${dto.menuImg == null }">
										<input type="file" name="menuImg" />
									</c:if>
									<c:if test="${dto.menuImg != null }">
										<img src="../menuImg/${dto.menuImg }" width="200px"/>
										<input type="button" value="사진삭제" onclick="return imgOut('${dto.menuId}')"/>
									</c:if>
									</td>
								</tr>
								<tr><td colspan="2">
									<input type="submit" value="수정"/>
									
									</tr>
							</table>
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