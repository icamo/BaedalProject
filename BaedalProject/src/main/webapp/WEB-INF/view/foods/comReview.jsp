<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:set value="0" var="same"/>
<c:forEach items="${reviewList }" var="reviewList">
<table>
	<tr>
		<td>${reviewList.memId }</td>
		<td>${reviewList.reviewDate }</td>
	</tr>
	<tr>
		<td colspan="2">
		<div class="star_rating">
		<c:forEach begin="1" end="${reviewList.reviewStar }">
		<span class="on">★</span>
		</c:forEach>	
		<c:forEach begin="1" end="${5 - reviewList.reviewStar }">
		<span class="on">☆</span>
		</c:forEach>
		</div>
		</td>
	</tr>
	<tr>
		<td colspan="2">${reviewList.reviewImg }</td>
	</tr>
	<tr>
		<td colspan="2">${reviewList.reviewContent }</td>
	</tr>
	<c:set var="same" value="${reviewList.orderNum }"/>
	<c:forEach items="${reviewMenuName }" var="reviewMenuName">
	<c:set var="same2" value="${reviewMenuName.orderNum }"/>
	<c:if test="${same2 eq same}">
		<tr>
			<td>
				${reviewMenuName.menuName }
			</td>
		</tr>
	</c:if>
	</c:forEach>
		<td colspan="2">
		사장님 댓글 <br/>
		${reviewList.ceoReplies }		
		</td>
	</tr>
</table>
<br/>	
</c:forEach>