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
								<p>등록일 : ${dto.reviewDate }
							<form action="replyWrite?orderNum=${dto.orderNum }" method="get">
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
										<c:choose>
										<c:when test="${dto.reviewStar eq 1}"><span class="on">★☆☆☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 2}"><span class="on">★★☆☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 3}"><span class="on">★★★☆☆</span></c:when>
										<c:when test="${dto.reviewStar eq 4}"><span class="on">★★★★☆</span></c:when>
										<c:when test="${dto.reviewStar eq 5}"><span class="on">★★★★★</span></c:when>
										</c:choose>
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
										<input type ="text" name="ceoreplies" value="${dto.ceoreplies }" style="width:450px; height:100px;"/><br/>
										<input type="hidden" name="orderNum" value="${dto.orderNum }">
										<input type="submit" value="등록/수정하기" >
									</td>
								</tr>
								</tbody>
							</table>
						</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>