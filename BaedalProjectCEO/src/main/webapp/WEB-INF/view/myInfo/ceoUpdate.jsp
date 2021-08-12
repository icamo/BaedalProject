<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!-- //좌측메뉴  -->
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<div>
							<h2 class="tit">이메일/전화번호 수정</h2>
							<form action="ceoUpdateOk" method="get">
								이메일 : <input type="text" id="ceoEmail" name="ceoEmail" value="${dto.ceoEmail }"> <br/>
								전화번호 : <input type="text" id="ceoPh" name="ceoPh" value="${dto.ceoPhone }"> <br/>
								비밀번호 : <a href="memPwChang">비밀번호 수정</a><br/>
								<input type="submit" value = "수정하기">
								<input type="button"  value="돌아가기" onclick="javascript:history.back();" />
							</form>
						</div>
					</div>
				</div>
				<!-- //내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>