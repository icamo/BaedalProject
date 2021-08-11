<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
							<h2 class="tit">내정보 관리</h2>
							아이디 : ${dto.ceoId }
							이메일 : ${dto.ceoEmail } <a href="ceoEmailUpdate">수정하기</a>
							휴대전화 : ${dto.ceoPhone } <a href="ceoPwUpdate">수정하기</a>
							비밀번호 : ${dto.ceoPw } <a href="memPwChang">수정하기</a>
							<a href="memOut">회원탈퇴</a>
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