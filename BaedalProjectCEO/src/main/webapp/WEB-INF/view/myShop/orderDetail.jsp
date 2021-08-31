<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	.table_wrap{width:768px; margin:0 auto;}
	select{height:50px;}
</style>
</head>
<body class="myShopInfo">
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
						<h2 class="tit">주문접수 확인 및 변경</h2>
						<div class="table_wrap">
							<form action="orderUpdate" method="post">
								<table>
									<caption>주문 접수</caption>
									<colgroup>
										<col style="width:50%"/>
										<col style="width:50%"/>
									</colgroup>
									<tbody>
										<tr>
											<th>주문번호</th>
											<td>
												<input type="text" value="${dto.orderNum }" name="orderNum" readonly="readonly"/>
											</td>
										</tr> 
										<tr>
											<th>주문일시</th>
											<td><fmt:formatDate value="${dto.orderDate }" type="date" pattern="mm/dd hh시mm분" /></td>
										</tr> 
										<tr>
											<th>결제방법</th>
											<td>${dto.methodsPayment }</td>
										</tr> 
										<tr>
											<th>주문처리상태</th>
											<td>
												<select name="orderResult"> 
													<optgroup label="주문접수/상태를 선택해주세요">
														<option>조리중</option>
														<option>배달시작</option>
													</optgroup>
													<optgroup label="주문거부/사유를 선택해주세요">
														<option>재료소진</option>
														<option>영업마감</option>
														<option>배달불가</option>
														<option>가게사정</option>
													</optgroup>
												</select>
											</td>
										</tr>
										<tr>
											<th>예상소요시간</th>
											<td>
												<select name="orderSituation">
													<option>약 10분 이내 도착예정입니다.</option>
													<option>약 20분 이내 도착예정입니다.</option>
													<option>약 30분 이내 도착예정입니다.</option>
													<option>약 40분 이내 도착예정입니다.</option>
													<option>약 50분 이내 도착예정입니다.</option>
													<option>약 1시간 이내 도착예정입니다.</option>
													<option>약 1시간 30분 이내 도착예정입니다.</option>
													<option>약 2시간 이내 도착예정입니다.</option>
												</select> 
											</td>
										</tr>  
										<tr>
											<th>주문주소</th>
											<td>${dto.orderAddress }</td>
										</tr> 
										<tr>
											<th>요청사항</th>
											<td>${dto.orderRequest }</td>
										</tr> 
										<tr style="display:none;">
											<th>메뉴번호 히든</th>
											<td>${dto.menuId }</td>
										</tr> 
										<tr style="display:none;">
											<th>가게번호 히든</th>
											<td>${dto.comId }</td>
										</tr> 
										<tr>
											<th>메뉴명</th>
											<td>${dto.menuName }</td>
										</tr>
										<tr>
											<th>갯수</th>
											<td>${dto.menuCount }</td>
										</tr> 
										<tr>
											<th>선택메뉴</th>
											<td>${dto.menuChoice }</td>
										</tr>  
										<tr>
											<th>할부개월</th>
											<td>${dto.instalment }</td>
										</tr>  
										<tr>
											<th>쿠폰</th>
											<td>${dto.coupon }</td>
										</tr> 
										<tr>
											<th>주문상태</th>
											<td>${dto.orderState }</td>
										</tr> 
										<tr>
											<th>회원아이디</th>
											<td>${dto.memId }</td>
										</tr> 
										<tr>
											<th>메뉴가격</th>
											<td>${dto.menuPrice }</td>
										</tr> 
										<tr>
											<th>총가격</th>
											<td>${dto.totalPrice }</td>
										</tr>		
									</tbody>
								</table>
								<input type="submit" value="접수상태 변경" style="margin-top:20px">
							</form>
						</div>
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