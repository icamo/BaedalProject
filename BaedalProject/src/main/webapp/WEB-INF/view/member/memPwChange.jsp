<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<style>
.leftMypage {height:809px;}
</style>
<script src="/BaedalProject/resources/asset/js/jquery-2.2.24.min.js"></script>
<script>
	window.onload = function(){
		var leftIdx = $(".leftMypage").find("li").index();
		$(".leftMypage").find("li:nth-child(1)").color("background-color", "#1A6DFF");
	}
</script>
</head>
<body class="memDetail sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div class="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
				<!-- 좌측 메뉴  -->
				<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
				<!-- //좌측 메뉴  -->
				<!-- 우측 메뉴  -->
				<div class="rightInfo">
					<div class="table_wrap">
						<div class="inner">
							<h2 class="tit">나의 상세 정보</h2>
							<form:form action="memPwChangCfm" method="post" modelAttribute="memberCommand">
								<table>
									<colgroup>
										<col style="width: 50%" />
										<col style="width: 50%" />
									</colgroup>
									<tbody>																												
										<tr>
											<th>현재 비밀번호</th>
											<td>
												<form:password path="memPw" />
												<form:errors path="memPw" />
											</td>
										</tr>
										<tr>
											<th>변경할 비밀번호</th>
											<td>
												<form:password path="newPw" />
												<form:errors path="newPw" />
											</td>
										</tr>
										<tr>
											<th>변경할 비밀번호확인</th>
											<td>
												<form:password path="newPwCon" />
												<form:errors path="newPwCon" />
											</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<div>
													<ul>
														<li><input type="submit" value="변경완료" /></li>														
														<li><input type="button" onclick="location.href='memDetail'" value="취소"/></li>
													</ul>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</form:form>							
						</div>
					</div>
				</div>
				<!-- //우측 메뉴  -->
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>