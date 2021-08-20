<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
</head>
<body class="myShopInfo msI">
	<div id="wrap">
		<!-- 헤더 -->
		<%@ include file="/WEB-INF/view/resources/include/header2.jsp" %>
		<div id="container">
			<div class="content">
				<!-- 좌측메뉴 -->
				<%@ include file="/WEB-INF/view/resources/include/menu2.jsp" %>
				<!-- //좌측메뉴  -->
				
				<!-- 내용 -->
				<div class="right_cont">
					<div class="inner">
						<h2 class="tit">내 가게 정보</h2>
						<table>
							<caption>내가게정보</caption>
							<colgroup>
								<col style="width:50%"/>
								<col style="width:50%"/>
							</colgroup>
							<tbody>
								<tr>
									<th>업체명</th>
									<td>
										${dto.comName}
									</td>
								</tr>
								<tr>
									<th>가게주소</th>
									<td>
										${dto.comAddress}
									</td>
								</tr>
								<tr>
									<th>사업자 정보</th>
									<td>
										${dto.ceoName}
									</td>
								</tr>
								<tr>
									<th>사업자 번호</th>
									<td>
										${dto.comNum}
									</td>
								</tr>
								<tr>
									<th>배달료</th>
									<td>
										${dto.deliverypay}
									</td>
								</tr>
								<tr>
									<th>영업시간</th>
									<td>
										${dto.businesstime}
									</td>
								</tr>
								<tr>
									<th>업체 전화번호</th>
									<td>
										<c:if test="${empty dto.comPhone}">
											<a href="comPhone?comId=${dto.comId}">등록하기</a>
										</c:if>
										<c:if test="${!empty dto.comPhone}">
											${dto.comPhone}
										</c:if>
									</td>
								</tr>
								<tr>
									<th>업체 공지사항</th>
									<td>
										<c:if test="${empty dto.comNotice}">
											<a href="comNotice?comId=${dto.comId}">등록하기</a>
										</c:if>
										<c:if test="${!empty dto.comNotice}">
											<div class="com_notice">
												<ul>
													<li>
														<a href="comNoticeInfo?comId=${dto.comId}">내용확인</a>
													</li>
													<li>
														<a href="comNoticeChange?comId=${dto.comId}">수정하기</a>
													</li>
												</ul>
											</div>
										</c:if>
									</td>
								</tr>
								<tr>
									<td colspan="2" class="last">
										<ul>
											<li><a href="myShopInfoChange?comId=${dto.comId}">수정하기</a></li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 내용 -->
			</div>
		</div>
		<!-- footer -->
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>	
	</div>
</body>
</html>