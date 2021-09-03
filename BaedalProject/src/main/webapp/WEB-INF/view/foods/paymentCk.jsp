<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<body class="payment sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="rightInfo table_wrap">
					<div class="inner">
						<h2 class="tit">결제 내역을 확인해주세요.</h2>
							<table>
								<colgroup>
									<col style="width: 50%;" />
									<col style="width: 50%;" />
								</colgroup>
								<tbody>
									<tr>
										<th>주문메뉴</th>
										<td>${orderCk.menuName }</td>
									</tr>
									<tr>
										<th>수량</th>
										<td>${orderCk.menuCount }</td>
									</tr>
									<tr>
										<th>옵션</th>
										<td>${orderCk.choiceOption }</td>
									</tr>
									<tr>
										<th>배달주소</th>
										<td>${orderCk.orderAddress }</td>
									</tr>
									<tr>
										<th>연락처</th>
										<td>${orderCk.memPhone }</td>
									</tr>
									<tr>
										<th>요청사항</th>
										<td>${orderCk.orderRequest }</td>
									</tr>
									<tr>
										<th>결제수단</th>
										<td>${orderCk.methodsPayment }</td>
									</tr>
									<tr>
										<th>가격</th>
										<td>${orderCk.menuPrice }</td>
									</tr>
									<tr>
										<th>배달료</th>
										<td>${orderCk.deliveryPay }</td>
									</tr>
									<tr>
										<th>총금액</th>
										<td>${orderCk.totalPrice }</td>
									</tr>
									<tr>
										<td colspan="2" class="last"> 
											<input type="button"value="확인" onclick="window.history.back()"/>
										</td>
									</tr>
								</tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>