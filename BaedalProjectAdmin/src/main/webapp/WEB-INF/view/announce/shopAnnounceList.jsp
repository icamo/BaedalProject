<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/main.css" />
</head>
<body>
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
		<div id="container">
		<!-- 내용 -->
		<div class="content">
			<div class="inner">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu.jsp" %>
				<!--// 좌측메뉴 -->
				<!-- 우측컨텐츠  -->
				<div class="right_cont">
					<div class="right_inner">
						<h2 class="tit">사장님 공지사항 관리 페이지입니다.</h2>
						<form action="#" name="frm">
							<table>
								<colgroup>
									<col style="width:33.33%"/>
									<col style="width:33.33%"/>
									<col style="width:33.33%"/>
								</colgroup>
								<thead>
									<tr>
										<th>글번호</th>
										<th>등록날짜</th>
										<th>제목</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${lists }" var="dto">
										<tr>
											<td>${dto.noticeNum }</td>
											<td><fmt:formatDate value="${dto.noticeDate}" pattern="yyyy-MM-dd" /></td>
											<td><a href="shopNoticeDetail?noticeNum=${dto.noticeNum }">${dto.noticeSub }</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<input type="button" value="글등록" onclick="javascript:location.href='announceShopForm'" style="margin-top:30px" class="cus_input"/>
						</form>
					</div>
				</div>				
			</div>
		</div>
		<!-- 내용 -->
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
<script src="<%=request.getContextPath() %>/resources/asset/js/jquery-2.2.24.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/asset/js/main.js"></script>
</html>