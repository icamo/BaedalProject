<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/swiper-bundle.min.css" />
</head>
<body class="payment">
<div id="skipNavi">
		<a href="#header">헤더 바로가기</a>
		<a href="#container">컨텐츠 바로가기</a>
</div>
<div id="wrap">
	<%@ include file="/WEB-INF/view/resources/include/header.jsp" %>
	<div id="container">
		<div class="table_wrap">
			<div class="inner">
				<h2 class="tit">상품을 주문하시려면 결제해주세요.</h2>
				<form action="goodsCartList" method="post" >
					<input type="hidden" name="" value="" />
					<input type="hidden" name="" value="" />
					<table>
						<colgroup>
							<col style="width:50%;"/>
							<col style="width:50%;"/>
						</colgroup>
						<tbody>
							<tr>
								<th>배달주소</th>
								<td>11</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>11</td>
							</tr>
							<tr>
								<th>요청사항</th>
								<td>11</td>
							</tr>
							<tr>
								<th>결제수단</th>
								<td>11</td>
							</tr>
							<tr>
								<th>주문메뉴</th>
								<td>11</td>
							</tr>
							<tr>
								<th>수량</th>
								<td>11</td>
							</tr>
							<tr>
								<th>옵션</th>
								<td>11</td>
							</tr>
							<tr>
								<th>가격</th>
								<td>11</td>
							</tr>
							<tr>
								<th>배달료</th>
								<td>11</td>
							</tr>
							<tr>
								<th>총금액</th>
								<td>11</td>
							</tr>
							<tr>
								<td colspan="2" class="last">
									<input type="submit" value="결제 완료" class="btn" />
								</td>
							</tr>
						</tbody>
					</table>
				</form>	
			</div>	
		</div>
	</div>
	<%@ include file="/WEB-INF/view/resources/include/footer.jsp" %>
</div>
</body>
</html>