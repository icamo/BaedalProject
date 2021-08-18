<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="myInfoPage sub">
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
						<h2 class="tit">내정보 관리</h2>
						<table>
							<colgroup>
								<col style="width:50%;"/>
								<col style="width:50%;"/>
							</colgroup>
							<tbody>
								<tr>
									<th>아이디</th>
									<td>
										${dto.ceoId}
									</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>${dto.ceoEmail}</td>
								</tr>
								<tr>
									<th>휴대전화</th>
									<td>${dto.ceoPhone}</td>
								</tr>
								<tr>
									<td class="last" colspan="2">
										<ul>
											<li>
												<a href="ceoUpdate">수정하기</a>
											</li>
											<li>
												<a href="memOut">회원탈퇴</a>
											</li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
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