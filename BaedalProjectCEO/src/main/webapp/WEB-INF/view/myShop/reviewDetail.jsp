<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<style>
	.star_rating {font-size:0; letter-spacing:-4px;}
	.star_rating span {
	    font-size:22px;
	    letter-spacing:0;
	    display:inline-block;
	    margin-left:5px;
	    color:#ccc;
	    text-decoration:none;
	}
	.star_rating span:first-child {margin-left:0;}
	.star_rating span.on {color:#777;}
</style>
</head>
<body class="sub">
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/header.jsp"%>
		<div class="container">
			<div class="review">
				<div class="content">
					<div class="rightInfo">
						<div class="table_wrap">
							<div class="inner">
								<h2 class="tit">리뷰 자세히보기</h2>
								<p>등록일 : <fmt:formatDate value="${dto.reviewDate }" type="date" pattern="YYYY-MM-DD hh:mm:ss" />
								<table>
									<tbody>
									<tr>
										<td>
											<a href="orderDetail?orderNum=${dto.orderNum }">주문보기</a>
										</td>
									</tr>
									<tr>
										<td>주문번호 ${dto.orderNum }</td>
									</tr>
									<tr>
										<td>매뉴
											<c:forEach items="${menuLists }" var="menuList" >
											${menuList.menuName }, ${menuList.menuPrice }원, ${menuList.menuCount } 개 </br>
											</c:forEach>
										</td>
									</tr>
									<tr>
										<td>요청사항 ${dto.orderRequest }</td>
									</tr>
									<tr>
										<td>주문자 ${dto.memId }</td>
									</tr>
									<tr>
										<td>
											<div class="star_rating">
											<c:forEach begin="1" end="${dto.reviewStar }">
											<span class="on">★</span>
											</c:forEach>	
											<c:forEach begin="1" end="${5 - dto.reviewStar }">
											<span class="on">☆</span>
											</c:forEach>
											</div>
										</td>
									</tr>
									<tr>
										<td>리뷰내용 
										<input type ="text" value="${dto.reviewContent }" style="width:450px; height:100px;" readonly="readonly"/>
										</td>
									</tr>
									<tr>
										<td>
											사장님 댓글
											<input type ="text" id="ceoreplies" value="${dto.ceoreplies }" style="width:450px; height:100px;"/><br/>
											<button type="button" onclick="replyWrite('ceoreplies${dto.orderNum }','${dto.orderNum }')">답글작성/수정</button>
										</td>
									</tr>
									</tbody>
								</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
	<script>
		function replyWrite(selectId, orderNum) {
			$.ajax({
				url: "replyWrite",
				type: "get",
				dataType: "html",
				data: {
					"ceoreplies" : $("#ceoreplies").val(),
					"orderNum" : orderNum 
				},
				success: function(result){
					alert('작성완료되었습니다.');
					opener.location.reload();
					window.close();
				},
				error: function(){
					alert("오류입니다.")
				}
			});
		}
	</script>
</body>
</html>
