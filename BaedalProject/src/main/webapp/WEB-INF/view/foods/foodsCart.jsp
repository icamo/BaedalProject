<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script>
	function onClick(){
		alert("리뷰가 이미 작성되었습니다.");
	}	
</script>
<style>
	.last_table{border:0px;}
	.last_table td{border:0;}
</style>

</head>
<body class="goodsCartList sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
				<%@ include file="/WEB-INF/view/resources/include/leftMenu.jsp"%>
				<div class="rightInfo">
					<div class="table_wrap">
						<div class="inner">
							<h2 class="tit">주문내역</h2>
							<c:forEach items="${orderList }" var="dto" varStatus="cnt">	
								<div class="comDetail" >
									<a href="paymentCk?orderNum=${dto.orderNum }">
										<table>
											<colgroup>
												<col style="width:50%;"/>
												<col style="width:50%;"/>
											</colgroup>
											<tbody>
												<tr>
													<th>${dto.comImg }업체사진</th>
													<td>
														<table>
															<colgroup>
																<col style="width:50%;"/>
																<col style="width:50%;"/>
															</colgroup>
															<tbody>
																<tr>
																	<th>업체이름</th>
																	<td>${dto.comName }</td>
																</tr>
																<tr>
																	<th>가격</th>
																	<td>${dto.totalPrice }원</td>
																</tr>
																<!-- 메뉴리스트 작업 시 style="display:none" 삭제해주세요~ -->
																<tr>
																	<td style="display:none;">
																		<c:forEach items="${menuNameList }" var="Mdto">	
																			${Mdto.menuName}
																		</c:forEach>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table>
									</a>
									<table style="margin-bottom:30px;" class="last_table">
										<tbody>
											<tr>
												<td colspan="2" class="last">
													<c:if test="${empty dto.reviewCheck}">
														<input type="button" value="리뷰작성" onclick="window.open('Review?orderNum=${dto.orderNum }' ,'리뷰','width=780 height=600')">
													</c:if>
													<c:if test="${dto.reviewCheck eq 'Y'}">
														<input type="button" value="작성완료" onclick="onClick()">
													</c:if>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</c:forEach>
						</div>
						<table>
							<tr>
								<td colspan="8">
									<%@ include file="/WEB-INF/view/resources/include/includePage.jsp" %>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>