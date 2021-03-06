<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="review">
				<div class="content">
					<div class="rightInfo">
						<div class="table_wrap">
							<div class="inner">
								<h2 class="tit">리뷰 자세히보기</h2>
								등록일 : ${reviewDetail.reviewDate }
								<form action="addReview" method="post">
									<table>
										<tbody>
											<tr>
												<td>
													메뉴명
												</td>
											</tr>
											<c:forEach items="${menuNameList }" var="dto" >
												<tr>
													<td>
														${dto.menuName }
													</td>
												</tr>
											</c:forEach>
												<tr>
													<td>별점 : ${reviewDetail.reviewStar }점</td>
												</tr>
												<tr>
													<td>
													<c:if test="${not empty reviewDetail.reviewImg}">
													<img src="<%=request.getContextPath() %>/resources/asset/image/reviewImg/${reviewDetail.reviewImg }" />
													</c:if>
														<input type ="text" name="reviewContent" value="${reviewDetail.reviewContent }" style="width:450px; height:100px;" readonly="readonly"/>
													</td>
												</tr>
												<tr>
													<td colspan="2" class="last">
														사장님 댓글
														<input type ="text" name="reviewContent" value="${reviewDetail.ceoReplies }" style="width:450px; height:100px;" readonly="readonly"/>
														<input type="button" value="확인" onclick="window.close()">
													</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
		</div>
</body>
</html>