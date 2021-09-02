<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="foodsReview sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="review">
				<div class="content">
					<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
					<div class="rightInfo">
						<div class="table_wrap">
							<h2 class="tit">나의 리뷰 확인</h2>
							<!-- todo: 리뷰 작업은 아래에 해주시면 됩니다  -->
							<table border="1">
								<tr>
									<td>${dto.comName }</td>
									<td>평점 : 5점</td>
									<td>닉네임</td>
								</tr>
								<tr>
									<td>${dto.comImg }업체사진</td>
									<td>
										<ul>
											<li>리뷰내용</li>
										</ul>
									</td>
								</tr>
							</table>
							<br/>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>