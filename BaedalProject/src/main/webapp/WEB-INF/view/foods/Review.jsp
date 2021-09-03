<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/common.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/resources/asset/css/sub.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script>

<%String orderNum = request.getParameter("orderNum");%>
	function addClick(){
		
		$.ajax({
			type : "post",
			url : "addReview",
			data: $("#addReview").serialize(),
			dataType : "html",
			success : function(data){
				alert('작성완료되었습니다.');
				opener.parent.location.reload();
				self.close();
				
			},
			error : function(){
				alert("오류가 발생하였습니다.");
				return;
			}
		});

		}
	

	
</script>
</head>
<body class="payment sub">
	<%@ include file="/WEB-INF/view/resources/include/skipNav.jsp"%>
	<div id="wrap">
		<%@ include file="/WEB-INF/view/resources/include/payheader.jsp"%>
		<div id="container">
			<div class="content">
				<div class="rightInfo table_wrap">
					<div class="inner">
						<h2 class="tit">리뷰작성</h2>
						
						<p>메뉴명 : ${orderCk.menuName } 
						<form id="addReview" method="post">
							<table>
								<tbody>
									<tr>
										<td>별점
										<select name="reviewStar">
											<option value=1>1점</option>
											<option value=2>2점</option>
											<option value=3>3점</option>
											<option value=4>4점</option>
											<option value=5>5점</option>
										</select>
										</td>
									</tr>
									<tr>
									<td>
									<input type ="text" name="reviewContent" style="width:450px; height:100px;"/>
									</td>
									</tr>
									<tr>
										<td colspan="2" class="last">
										<%Date now = new Date(); %>
										<%SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");
										String addDate = sf.format(now);%>
										<input type="hidden" name="reviewDate" id="reviewDate" value=<%=addDate %>>
										<input type="hidden" name="reviewImg" id="reviewImg" value="reviewImg">
										<input type="hidden" name="orderNum" id="orderNum" value="<%=orderNum %>">
										<input type="hidden" name="reviewCheck" id="reviewCheck" value="Y">
										<input type="button" value="등록" onclick="addClick()">
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
</body>
</html>