<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/WEB-INF/view/resources/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="cus_notice cus_notice2">
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
						<div class="ceo_notice">
							<h2 class="notice_tit">사장님들 공지사항</h2>
							<div class="notice_content">
								<table>
									<caption></caption>
									<thead>
										<tr>
											<th style="width:30%;">
												<fmt:formatDate value="${dto.ceoNoticeDate}" type="date" pattern="yyyy-MM-dd" />
											</th>
											<th style="width:70%;">
												${dto.ceoNoticeSub}
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="2">
												<p>
													${dto.ceoNoticeContent}
													<span>
														<c:if test="${dto.ceoNoticeFile != null}">
															<img src="/BaedalProjectCEO/resources/asset/image/${dto.ceoNoticeFile.split(",")[0]}"  alt="상품이미지"/>
														</c:if>
													</span>
												</p>
												<a href="/BaedalProjectCEO/customerCenter">이전으로</a>
											</td>
										</tr>
									</tbody>
									
								</table>
							</div>
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