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
		var menuTitleName = frm.menuTitleName.value;
		if(menuTitleName==''){
			alert("내용을 입력하세요");
			frm.menuTitleName.focus();
			return false;
		}else{
			return true;
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
						<form action="menuTitleResistCon" name="frm" onsubmit="return check()">
							<table>
								<tr>
									<th>메뉴타이틀명</th>
									<td><input type="text" name="menuTitleName"></td>
								</tr>
								<tr><td colspan="2"><input type="submit" value="등록"/></tr>
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