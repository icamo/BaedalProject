<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
		<!-- 좌측메뉴 -->
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<form action="reviewDateList">
							<input type="date" name = "startDate"> ~ <input type="date" name = "endDate">
							<input type="submit" value="기간별 조회"><br/><br/>
						</form>
						<c:forEach items="${lists }" var="dto">
						<form action="replyWrite?orderNum=${dto.orderNum }" method="post"> 
							<table>
								<tr>
									<td colspan="2">
										 <a href="orderInfo?orderNum=${dto.orderNum }">주문보기(클릭)</a>
									</td>
								</tr>
								<tr>
									<td colspan="2">${dto.memId }</td>
								</tr>
								<tr>
									<td>${dto.reviewStar }</td>
									<td><fmt:formatDate value="${dto.reviewDate }" type="date" pattern="MM/dd hh:mm" /></td>
								</tr>
								<tr>
									<td colspan="2">${dto.reviewContent }</td>
								</tr>
								<tr>
									<td colspan="2">이미지</td>
								</tr>
								<tr>
									<td colspan="2">${dto.ceoreplies }</td>
								</tr>
								<tr>
									<td colspan="2">
										<textarea rows="5" cols="50" name="ceoreplies">${dto.ceoreplies }</textarea>
									</td>
								</tr>
							</table>
							<input type="submit" value="코멘트 등록/수정"/>
							<br/>
						</form>
						</c:forEach>
					</div>
				</div>
			</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>