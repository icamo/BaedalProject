<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- css  -->
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<title>Insert title here</title>
<style>
.leftMypage {
	height: 809px;
}
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
							<form action="#">
								<table>
									<colgroup>
										<col style="width: 50%" />
										<col style="width: 50%" />
									</colgroup>
									<tbody>
										<tr>
											<th>아이디</th>
											<td>${dto.memId }</td>
										</tr>																		
										<tr>
											<th>이메일</th>
											<td>${dto.memEmail }</td>
										</tr>
										<tr>
											<th>닉네임</th>
											<td>${dto.memNickName }</td>
										</tr>
										<tr>
											<th>핸드폰번호</th>
											<td>${dto.memPhone }</td>
										</tr>
										<tr>
											<td colspan="2" class="last">
												<div>
													<ul>
														<li><a href="memModify">수정</a></li>
														<li><a href="#">비밀번호 변경</a></li>
														<li><a href="myPageMain">이전</a></li>
													</ul>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</form>
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