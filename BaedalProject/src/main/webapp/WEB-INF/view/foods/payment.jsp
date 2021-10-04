<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>

<style>
	.inner{width:768px; margin: 0 auto 68px;}
</style>
</head>
<body class="myAddr sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div id="container">
			<div class="content">
				<div class="inner">
					<h2 class="tit">결제</h2>
					<form action= "orderInsert" name="orderInsert" method="post" id="orderInsert">
						<input type="hidden" name="orderNum" id="orderNum" value="${orderNum }">
							<table>
								<colgroup>
									<col style="width:50%;"/>
									<col style="width:50%;"/>
								</colgroup>		
								<tbody>
									<tr>
										<th>주문 배송지</th>
										<td>
											<input type="text" list= "orderAddress" name="orderAddress">
											<datalist id="orderAddress">
												<c:forEach items="${addrList }" var="dto" >
													<option value="${dto.orderAddress } ">
												</c:forEach>
											</datalist>
										</td>
									</tr>
									<tr>
										<th>핸드폰번호</th>
										<td><input type="text" name="memPhone" value="${Mdto.memPhone}" readonly="readonly"></td>
									</tr>	
								</tbody>
							</table>
							<table>
								<colgroup>
									<col style="width:33.333%"/>
									<col style="width:33.333%"/>
									<col style="width:33.333%"/>
								</colgroup>
								<thead>
									<tr>
										<th>메뉴이름</th>
										<th>메뉴가격</th>
										<th>메뉴수량</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cartList }" var="cartList" varStatus="cnt">
										<tr>
											<td>
												<input type="text" name="menuName" value="${cartList.menuName }" readonly="readonly">
											</td>
											<td>
												<input type="text" name="menuPrice" value="${cartList.menuPrice }" readonly="readonly">원
											</td>
											<td>
												<input type="text" name="menuCount" value="${cartList.menuCount }" readonly="readonly">개
											</td>
										</tr>
										<c:set var="totalsum" value="${totalsum + cartList.totalPrice }"/>
										<c:set var="menuIds" value="${menuIds += cartList.menuId += ','}"/>
										<c:set var="memId" value="${cartList.memId }"/>
										<c:set var="menuCounts" value="${menuCounts += cartList.menuCount += ',' }"/>
									</c:forEach>
								</tbody>
							</table>
							<div class="order2">
								<h3>주문요청사항</h3>
								<input type ="text" name="orderRequest" style="width:450px; height:100px;"/>
								<table>
									<colgroup>
										<col style="width:50%;"/>
										<col style="width:50%;"/>
									</colgroup>
									<tbody>
										<tr>
											<th>결제 방식 : </th>
											<td>
												<select name = "methodsPayment">
													<option value="cash">현금</option>
													<option value="card">카드</option>
												</select>
											</td>
										</tr>
										<tr>
											<th>기본 배달료  : </th>
											<td>${dto.deliveryPay }원 </td>
										</tr>
										<tr>
											<th>메뉴 금액 : </th>
											<td>
												 ${totalsum }원											
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<%Date now = new Date(); %>
							<%SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
							String orderDate = sf.format(now);%>
							<input type="hidden" name="orderDate" id="orderDate" value=<%=orderDate %>>
							<input type="hidden" name="orderResult" id="orderResult" value="주문완료">
							<input type="hidden" name="orderState" id="orderState" value="주문완료">
							<input type="hidden" name="menuIds" id="menuIds" value="${menuIds }">
							<input type="hidden" name="comId" id="comId" value="${dto.comId }">
							<input type="hidden" name="memId" id="memId" value="${memId }">
							<input type="hidden" name="mPrices" id="mPrices" value="${menuPrices }">
							<input type="hidden" name="mCounts" id="mCounts" value="${menuCounts }">
							<input type="hidden" name="totalPrice" id="totalPrice" value="${totalsum + dto.deliveryPay} ">
							<input type="button" value="${totalsum + dto.deliveryPay}원 결제하기" onclick="onClick()"/>
					</form>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/view/resources/include/footer.jsp"%>
	</div>
</body>
</html>
<script>
var url = "ws://localhost:8080/BaedalProjectWeb/chat/";	
var webSocket = null;	

function onClick(){
	url += "${userId}";
	webSocket = new WebSocket(url);//웹 소켓 객체 생성
	//웹소켓 연결됐을 때(client <- server)
	webSocket.onopen = function(e){
		console.log(e);			
	}
	//웹소켓 끊겼을 때(client <- server)
	webSocket.onclose = function(e){
		console.log(e);
	}			
		//메시지 수신(client <- server)
	webSocket.onmessage = function(e){
		console.log(e);
	}
	var formData = $("#orderInsert").serialize();
    $.ajax({
        cache : false,
        url : "orderInsert", // 요기에
        type : 'POST', 
        data : formData, 
        success : sendMsg, 
        error : function(xhr, status) {
            alert(xhr + " : " + status);
        }
    });
	return false;
}
		
//웹소켓 종료(client -> server)
function disConn(){
	//웹소켓 연결됐을 때(client <- server)
	webSocket.close();
}
		
//메시지 전송(client -> server)
function sendMsg(responseText, statusText, xhr, $form){
	alert("주문이 완료되었습니다.");
	
	//접속 URL
	
	webSocket.send("${orderNum },${dto.comId}");
	location.href="../main";
	disConn();
}

</script>	