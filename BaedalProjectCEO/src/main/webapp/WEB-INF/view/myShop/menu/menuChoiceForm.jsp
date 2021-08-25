<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function check(){
	var choiceTitle= frm.choiceTitle.value;
	var choiceSelect = frm.choiceSelect.value;
	if(choiceTitle==''){
		alert("옵션 타이틀을 입력하세요.");
		frm.choiceTitle.focus();
		return false;
	}else if(choiceSelect==''){		
		alert("선택옵션을 입력하세요.");
		frm.choiceSelect.focus();
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
						<form action="menuChoiceResist" method="post" name="frm" onsubmit="return check();">
						<input type="hidden" value="${dto.menuId }" name="menuId" />
							<table>
								<tr>
									<th>메뉴명</th>
									<td>${dto.menuName }</td>
								</tr>
								<tr>
									<th>옵션타이틀</th>
									<td><input type="text" name="choiceTitle"/></td>
								</tr>
								<tr>
									<th>필수/선택</th>
									<td>
										<input type="radio" name="choiceType" value="R" checked="checked"/>필수
										<input type="radio" name="choiceType" value="N"/>선택
									</td>
								</tr>
								<tr><td colspan="2"><input type="submit" value="등록"/></tr>
							</table>
						</form>	
						</div>
						</div>				
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>