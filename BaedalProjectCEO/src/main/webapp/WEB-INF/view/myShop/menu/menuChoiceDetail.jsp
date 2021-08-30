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
	var choiceOption= frm.choiceOption.value;
	var choicePrice = frm.choicePrice.value;
	if(choiceOption==''){
		alert("옵션 타이틀을 입력하세요.");
		frm.choiceOption.focus();
		return false;
	}else if(choicePrice==''){		
		alert("선택옵션을 입력하세요.");
		frm.choicePrice.focus();
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
						<form action="choiceOptionResist" method="post" name="frm" onsubmit="return check();">
						<input type="hidden" value="${dto.menuChoiceNum }" name="menuChoiceNum" />
							<table>
								<tr>
									<th>메뉴명</th>
								</tr>
								<tr>
									<td>${dto2.menuName}</td>
								</tr>
								<tr>
									<th>옵션타이틀</th>
								</tr>
								<tr>
									<td>${dto.choiceTitle}</td>
								</tr>
								<tr>
									<th>옵션 추가하기</th>
								</tr>
								<tr>
									<td>이름 : <input type="text" name="choiceOption" /> / 가격 : <input type="text" name="choicePrice" /></td>
								</tr>
								<tr><td colspan="2"><input type="submit" value="등록"/></tr>
							</table>
						</form>
						옵션목록<br />
						<c:if test="${dto.choiceType=='R' }">
							<c:forEach items="${lists }" var="option">
								<input type="radio" name="choiceOption">${option.choiceOption }&nbsp;&nbsp;&nbsp;(${option.choicePrice }원)<br />
							</c:forEach>
						</c:if>
						<c:if test="${dto.choiceType!='R' }">
							<c:forEach items="${lists }" var="option">
								<input type="checkbox" name="choiceOption">${option.choiceOption }&nbsp;&nbsp;&nbsp;(${option.choicePrice }원)<br />
							</c:forEach>
						</c:if>							
						</div>
						</div>				
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>