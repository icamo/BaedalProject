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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	input{width:300px; height:35px; padding:10px; line-height:15px; border:1px solid #cbcbcb; box-sizing: border-box;}
</style>
</head>
<body class="ceoup sub">
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
							<h2 class="tit">회원정보 수정</h2>
							<form action="ceoUpdateOk" method="post">
								<table>
									<caption>회원정보를 수정해주세요</caption>
									<colgroup>
										<col style="width:50%;"/>
										<col style="width:50%;"/>
									</colgroup>
									<tbody>
										<tr>
											<th>
												<label for="ceoEmail">이메일</label>
											</th>
											<td>
												<input type="text" id="ceoEmail" name="ceoEmail" value="${dto.ceoEmail }">
											</td>
										</tr>
										<tr>
											<th>
												<label for="ceoPh">전화번호</label>
											</th>
											<td>
												<input type="text" id="ceoPh" name="ceoPh" value="${dto.ceoPhone }">
											</td>
										</tr>
										<tr>
											<th>
												비밀번호
											</th>
											<td>
												<a href="memPwChang">비밀번호 변경하기</a>
											</td>
										</tr>
										<tr>
											<td class="last" colspan="2">
												<input type="submit" value="수정하기" class="cus_input">
												<input type="button"  value="돌아가기" class="cus_input" onclick="javascript:history.back();" />	
											</td>
										</tr>
									</tbody>
								</table>
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